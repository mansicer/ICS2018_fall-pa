#include "cpu/instr.h"

make_instr_func(call_near)
{
    OPERAND rel;
    rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;

    operand_read(&rel);

    int offset = sign_ext(rel.val, data_size);
    print_asm_1("call", "", 1 + data_size/8, &rel);

    cpu.esp -= data_size/8;
    
    OPERAND rm;
    rm.data_size = data_size;
    rm.type = OPR_MEM;
    rm.addr = cpu.esp;
    rm.sreg = SREG_SS;
    rm.val = cpu.eip + 1 + data_size/8;
    operand_write(&rm);
    
    cpu.eip += offset;
    return 1 + data_size/8;
}

make_instr_func(call_near_indirect)
{
    int len = 1;
    OPERAND rm;
    rm.data_size = data_size;
    len += modrm_rm(eip+1, &rm);

    operand_read(&rm);
    print_asm_1("call", "", len, &rm);
    cpu.esp -= data_size/8;
    
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.addr = cpu.esp;
    mem.sreg = SREG_SS;
    mem.val = cpu.eip + len;
    operand_write(&mem);
    
    cpu.eip = rm.val;
    return 0;
}