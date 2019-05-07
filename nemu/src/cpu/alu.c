#include "cpu/cpu.h"

void set_CF_add(uint32_t result, uint32_t src, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	src = sign_ext(src & 0xFFFFFFFF >> (32-data_size), data_size);
	cpu.eflags.CF = result < src;
}

void set_CF_adc(uint32_t result, uint32_t src, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	src = sign_ext(src & 0xFFFFFFFF >> (32-data_size), data_size);
	if (cpu.eflags.CF)
		cpu.eflags.CF = result <= src;
	else cpu.eflags.CF = result < src;
}

void set_CF_sub(uint32_t result, uint32_t dest, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	dest = sign_ext(dest & 0xFFFFFFFF >> (32-data_size), data_size);
	cpu.eflags.CF = result > dest;
}

void set_CF_sbb(uint32_t result, uint32_t dest, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	dest = sign_ext(dest & 0xFFFFFFFF >> (32-data_size), data_size);
	if (cpu.eflags.CF)
		cpu.eflags.CF = result >= dest;
	else cpu.eflags.CF = result > dest;
}

void set_CFOF_mul(uint64_t result, size_t data_size)
{
	if (result>>data_size)
	{
		cpu.eflags.CF = 1;
		cpu.eflags.OF = 1;
	}
	else
	{
		cpu.eflags.CF = 0;
		cpu.eflags.OF = 0;
	}
}

void set_PF(uint32_t result)
{
	result = sign_ext(result & 0xFF, 8);
	uint32_t num = 0;
	for (int i=0; i<8; i++)
	{
		if (result%2==1)
			num++;
		result /= 2;
	}
	if (num%2 == 0)
		cpu.eflags.PF = 1;
	else
		cpu.eflags.PF = 0;
}

void set_SF(uint32_t result, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	cpu.eflags.SF = sign(result);
}

void set_ZF(uint32_t result, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	cpu.eflags.ZF = result == 0;
}

void set_OF_add(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	src = sign_ext(src & 0xFFFFFFFF >> (32-data_size), data_size);
	dest = sign_ext(dest & 0xFFFFFFFF >> (32-data_size), data_size);
	
	if (sign(src) == sign(dest) && sign(result) != sign(src))
		cpu.eflags.OF = 1;
	else cpu.eflags.OF = 0;
}

void set_OF_sub(uint32_t result, uint32_t src, uint32_t dest, size_t data_size)
{
	result = sign_ext(result & 0xFFFFFFFF >> (32-data_size), data_size);
	src = sign_ext(src & 0xFFFFFFFF >> (32-data_size), data_size);
	dest = sign_ext(dest & 0xFFFFFFFF >> (32-data_size), data_size);

	if (sign(src) != sign(dest) && sign(result) != sign(dest))
		cpu.eflags.OF = 1;
	else cpu.eflags.OF = 0;
}

uint32_t alu_add(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_add(src, dest, data_size);
#else
	uint32_t result = 0;
	result = src + dest;

	set_CF_add(result, src, data_size);
	set_PF(result);
	set_SF(result, data_size);
	set_ZF(result, data_size);
	set_OF_add(result, src, dest, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_adc(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_adc(src, dest, data_size);
#else
	uint32_t result = 0;
	result = src + dest + cpu.eflags.CF;

	set_CF_adc(result, src, data_size);
	set_PF(result);
	set_SF(result, data_size);
	set_ZF(result, data_size);
	set_OF_add(result, src, dest, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_sub(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_sub(src, dest, data_size);
#else
	uint32_t result = 0;
	src = sign_ext(src, data_size);
	result = dest - src;

	set_CF_sub(result, dest, data_size);
	set_PF(result);
	set_ZF(result, data_size);
	set_SF(result, data_size);
	set_OF_sub(result, src, dest, data_size);
	
	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_sbb(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_sbb(src, dest, data_size);
#else
	uint32_t result = 0;
	src = sign_ext(src, data_size);
	result = dest - src - cpu.eflags.CF;

	set_CF_sbb(result, dest, data_size);
	set_PF(result);
	set_ZF(result, data_size);
	set_SF(result, data_size);
	set_OF_sub(result, src, dest, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_mul(src, dest, data_size);
#else
	uint64_t res;
	res = (uint64_t)src * (uint64_t)dest;

	set_CFOF_mul(res, data_size);
	set_PF(res);
	set_SF(res, data_size);
	set_ZF(res, data_size);

	return res;
#endif
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_imul(src, dest, data_size);
#else
	uint64_t res;
	res = (uint64_t)src * (uint64_t)dest;

	return res;
#endif
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_div(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest / src;
	return res;
#endif
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_idiv(src, dest, data_size);
#else
	uint32_t res = 0;
	res = dest / src;
	return res;
#endif
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
#ifdef NEMU_REF_ALU
	return __ref_alu_mod(src, dest);
#else
	uint32_t res = 0;
	res = dest % src;
	return res;
#endif
}

int32_t alu_imod(int64_t src, int64_t dest) {
#ifdef NEMU_REF_ALU
	return __ref_alu_imod(src, dest);
#else
	uint32_t res = 0;
	res = dest % src;
	return res;
#endif
}

uint32_t alu_and(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_and(src, dest, data_size);
#else
	uint32_t result = 0;
	result = dest & src;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(result);
	set_SF(result, data_size);
	set_ZF(result, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_xor(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_xor(src, dest, data_size);
#else
	uint32_t result = 0;
	result = dest ^ src;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(result);
	set_SF(result, data_size);
	set_ZF(result, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_or(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_or(src, dest, data_size);
#else
	uint32_t result = 0;
	result = dest | src;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	set_PF(result);
	set_ZF(result, data_size);
	set_SF(result, data_size);

	return result & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_shl(src, dest, data_size);
#else
	uint32_t res = dest;
	uint32_t tmp = src;
	while(tmp != 0)
	{
		cpu.eflags.CF = (res >> (data_size - 1))%2;
		res = res * 2;
		tmp--;
	}
	// if (src == 1)
	// 	cpu.eflags.OF = (res >> (data_size - 1))%2 != cpu.eflags.CF;
	// else
	// 	cpu.eflags.OF = 0;
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);

	return res & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_shr(src, dest, data_size);
#else
	dest = dest & 0xFFFFFFFF >> (32-data_size);
	uint32_t res = dest;
	// cpu.eflags.CF = (dest>>(src-1))%2;
	// res = res >> src;
	uint32_t tmp = src;
	while(tmp != 0)
	{
		cpu.eflags.CF = res%2;
		res = res / 2;
		tmp--;
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);

	return res & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_sar(src, dest, data_size);	
#else
	dest = sign_ext(dest & 0xFFFFFFFF >> (32-data_size), data_size);
	uint32_t bit = sign(dest);
	uint32_t res = dest & 0xFFFFFFFF >> (32-data_size);
	uint32_t tmp = src;
	while(tmp != 0)
	{
		cpu.eflags.CF = res%2;
		res = res / 2;
		res += bit<<(data_size-1);
		tmp--;
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);

	return res & 0xFFFFFFFF >> (32-data_size);
#endif
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
#ifdef NEMU_REF_ALU
	return __ref_alu_sal(src, dest, data_size);
#else
	uint32_t res = dest;
	uint32_t tmp = src;
	while(tmp != 0)
	{
		cpu.eflags.CF = (res >> (data_size - 1))%2;
		res = res * 2;
		tmp--;
	}
	set_PF(res);
	set_ZF(res, data_size);
	set_SF(res, data_size);

	return res & 0xFFFFFFFF >> (32-data_size);
#endif
}
