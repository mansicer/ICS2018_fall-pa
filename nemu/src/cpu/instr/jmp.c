#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = cpu.eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 2, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short) {
        OPERAND rel;
        rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = cpu.eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, 8);
	print_asm_1("jmp", "", 2, &rel);

	cpu.eip += offset;

        return 2;
}

#ifdef IA32_SEG
make_instr_func(jmp_far_imm) {
        OPERAND ptr16, ptr32;
        ptr16.type = OPR_IMM;
	ptr16.sreg = SREG_CS;
        ptr16.data_size = 16;
        ptr16.addr = cpu.eip + 5;

        ptr32.type = OPR_IMM;
	ptr32.sreg = SREG_CS;
        ptr32.data_size = 32;
        ptr32.addr = cpu.eip + 1;

        operand_read(&ptr32);
        operand_read(&ptr16);
        
	print_asm_2("ljmp", "", 7, &ptr16, &ptr32);

        cpu.cs.val = ptr16.val;
        load_sreg(SREG_CS);
        cpu.eip = ptr32.val;

        // printf("%x\n", cpu.eip);

        return 0;
}
#endif

make_instr_func(jmp_near_indirect) {
        int len = 1;
        OPERAND rm;
        rm.data_size = data_size;
        len += modrm_rm(cpu.eip + 1, &rm);
        
        operand_read(&rm);
	print_asm_1("jmp", "", len, &rm);

	cpu.eip = rm.val;

        return 0;
}