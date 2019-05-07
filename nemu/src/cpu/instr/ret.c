#include "cpu/instr.h"

make_instr_func(ret_near)
{
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.sreg = SREG_SS;
    mem.addr = cpu.esp;
    operand_read(&mem);

    print_asm_0("ret", "", 1);
    cpu.eip = mem.val;
    mem.val = 0;
    operand_write(&mem);
    
    cpu.esp += data_size/8;
    return 0;
}

make_instr_func(ret_near_imm16)
{
    int len = 1;
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.addr = cpu.esp;
    mem.sreg = SREG_SS;
    operand_read(&mem);

    OPERAND imm;
    imm.type = OPR_IMM;
    imm.sreg = SREG_CS;
    imm.data_size = data_size;
    imm.addr = eip + 1;
    operand_read(&imm);
    
    print_asm_1("ret", "", len, &imm);
    cpu.eip = mem.val;
    mem.val = 0;
    operand_write(&mem);
    cpu.esp += data_size/8;

    cpu.esp += imm.val;
    return 0;
}

make_instr_func(iret)
{
    cpu.eip = vaddr_read(cpu.esp, SREG_SS, 4);
    cpu.esp += 4;
    cpu.cs.val = vaddr_read(cpu.esp, SREG_SS, 4);
    cpu.esp += 4;
    load_sreg(SREG_CS);
    cpu.eflags.val = vaddr_read(cpu.esp, SREG_SS, 4);
    cpu.esp += 4;
    print_asm_0("iret", "l", 1);
    return 0;
}