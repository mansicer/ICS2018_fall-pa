#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum {
	NOTYPE = 256, EQ, NUM, REG, SYMB, NEG, DEREF, NEQ, HNUM

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// white space
	{"\\(", '('},
	{"\\)", ')'},
	{"/", '/'},
	{"\\*", '*'},
	{"\\+", '+'},
	{"\\-", '-'},
	{"==", EQ},
	{"!=", NEQ},
	{"0x[0-9a-f]+", HNUM},
	{"[0-9]+", NUM},
	{"\\$e[acdb]x", REG},
	{"\\$esp", REG},
	{"\\$esi", REG},
	{"\\$ebp", REG},
	{"\\$edi", REG},
	{"\\$eip", REG},
	{"[a-zA-Z_]+[a-zA-Z0-9_]*", SYMB},
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

CPU_STATE cpu;
uint32_t look_up_symtab(char *sym, bool *success);

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				// printf("NO.%d: match regex[%d] at position %d with len %d: %.*s\n", nr_token, i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */
				switch(rules[i].token_type) {
					case NOTYPE:
						break;
					case NUM: tokens[nr_token].type = NUM;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = 0;
						nr_token++; break;
					case HNUM: tokens[nr_token].type = HNUM;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = 0;
						nr_token++; break;
					case REG: tokens[nr_token].type = REG;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = 0;
						nr_token++; break;
					case SYMB: tokens[nr_token].type = SYMB;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = 0;
						nr_token++; break;
					default: tokens[nr_token].type = rules[i].token_type;
							 nr_token ++;
				}
				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}

bool check_parentheses(int p, int q)
{
	if (tokens[p].type != '(' && tokens[q].type != ')')
	{
		return false;
	}
	else
	{
		int num = 0;
		for (int i = p + 1; i < q; i++)
		{
			if (tokens[i].type == '(')
				num++;
			else if (tokens[i].type == ')')
				num--;
			if (num < 0)
				return false;
		}
		if (num != 0)
			return false;
		return true;
	}
}

int priority(int type)
{
	if (type == '+')
		return 4;
	else if (type == '-')
		return 4;
	else if (type == '*')
		return 3;
	else if (type == '/')
		return 3;
	else if (type == EQ)
		return 7;
	else if (type == NEQ)
		return 7;
	else if (type == NEG)
		return 2;
	else if (type == DEREF)
		return 2;
	else if (type == '(')
		return -1;
	else if (type == ')')
		return -2;
	else return 0;
}

int dominant_operator(int p, int q)
{
	uint32_t dominant = 0;
	int dom_pos = -1;
	int parentheses_num = 0;
	for (int i = p; i <= q; i++)
	{
		if (tokens[i].type == NUM || tokens[i].type == REG || tokens[i].type == SYMB)
		{
			continue;
		}
		else 
		{
			int tmp = priority(tokens[i].type);
			if (tmp == -1)
			{
				parentheses_num++;
			}
			else if (tmp == -2)
			{
				parentheses_num--;
			}
			else if (tmp >= dominant && parentheses_num == 0)
			{
				dominant = tmp;
				dom_pos = i;
			}
		}
	}
	return dom_pos;
}

uint32_t eval(int p, int q)
{
	if (p > q)
	{
		/* Bad expression*/
		printf("Bad Expression!\n");
		assert(0);
	}
	else if (p == q)
	{
		if (tokens[p].type == NUM)
		{
			return atoi(tokens[p].str);
		}
		else if (tokens[p].type == HNUM)
		{
			// printf("the 16 base number is: %s\n", tokens[p].str);
			return strtoul(tokens[p].str, NULL, 16);
		}
		else if (tokens[p].type == REG)
		{
			// printf("You can't get registers info so far.\n");
			// assert(0);
			// return 0;
			if (strcmp(tokens[p].str, "$eax") == 0)
			{
				return cpu.eax;
			}
			else if (strcmp(tokens[p].str, "$ecx") == 0)
			{
				return cpu.ecx;
			}
			else if (strcmp(tokens[p].str, "$edx") == 0)
			{
				return cpu.edx;
			}
			else if (strcmp(tokens[p].str, "$ebx") == 0)
			{
				return cpu.ebx;
			}
			else if (strcmp(tokens[p].str, "$eip") == 0)
			{
				return cpu.eip;
			}
			else if (strcmp(tokens[p].str, "$esp") == 0)
			{
				return cpu.esp;
			}
			else if (strcmp(tokens[p].str, "$ebp") == 0)
			{
				return cpu.ebp;
			}
			else if (strcmp(tokens[p].str, "$esi") == 0)
			{
				return cpu.esi;
			}
			else if (strcmp(tokens[p].str, "$edi") == 0)
			{
				return cpu.edi;
			}
			else
			{
				printf("Registers Format Error!\n");
				assert(0);
				return 0;
			}
		}
		else if (tokens[p].type == SYMB)
		{
			// printf("You can't get symbols info so far.\n");
			// assert(0);
			// return 0;
			bool success;
			uint32_t res = look_up_symtab(tokens[p].str, &success);
			if (!success)
			{
				printf("%s is not in the symtab!\n", tokens[p].str);
				assert(0);
				return 0;
			}
			return res;
		}
		else
		{
			printf("invalid expression!\n");
			assert(0);
			return 0;
		}
	}
	else if (check_parentheses(p, q) == true)
	{
		return eval(p+1, q-1);
	}
	else
	{
		int op = dominant_operator(p, q);
		// printf("op_num: %d\n", op);
		
		if (op == p)
		{
			uint32_t val = eval(op+1, q);
			switch (tokens[op].type)
			{
				case NEG: return -val;
				case DEREF: return vaddr_read(val, SREG_DS, 4);
				default: printf("invalid operator!\n");
					assert(0);
			}
		}
		else
		{
			uint32_t val1 = eval(p, op-1);
			uint32_t val2 = eval(op+1, q);
			switch (tokens[op].type)
			{
				case '+' : return val1 + val2;
				case '-' : return val1 - val2;
				case '*' : return val1 * val2;
				case '/' : return val1 / val2;
				case EQ: return val1 == val2;
				case NEQ: return val1 != val2;
				default : printf("invalid operator!\n");
					assert(0);
			}
		}
	}
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		printf("A flase expression\n");
		*success = false;
		return 0;
	}
	*success = true;

	for (int i = 0; i < nr_token; i++)
	{
		if (tokens[i].type == '-' && (i == 0 || (tokens[i-1].type != NUM && tokens[i-1].type != REG && tokens[i-1].type != SYMB)))
		{
			tokens[i].type = NEG;
		}
		if (tokens[i].type == '*' && (i == 0 || (tokens[i-1].type != NUM && tokens[i-1].type != REG && tokens[i-1].type != SYMB)))
		{
			tokens[i].type = DEREF;
		}
	}
	// printf("%d\n", nr_token);
	return eval(0, nr_token - 1);
}

