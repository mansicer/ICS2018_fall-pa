#include "cpu/instr.h"

make_instr_func(lea)
{
    int len = 1;
    OPERAND r, rm;
    r.data_size = rm.data_size = data_size;
    len += modrm_r_rm(eip+1, &r, &rm);
    
    print_asm_2("lea", "", len, &rm, &r);
    r.val = rm.addr;
    operand_write(&r);

    return len;
}

make_instr_func(leave)
{
    int len = 1;
    print_asm_0("leave", "", len);
    cpu.esp = cpu.ebp;
    cpu.ebp = vaddr_read(cpu.esp, SREG_SS, data_size/8);
    cpu.esp += data_size/8;
    return len;
}