#include "cpu/instr.h"

static void instr_execute_1op()
{
    opr_dest.data_size = data_size;
    opr_dest.type = OPR_MEM;
    opr_dest.sreg = SREG_SS;
    opr_dest.addr = cpu.esp;
    operand_read(&opr_dest);

    opr_src.val = opr_dest.val;
    cpu.esp += data_size/8;
    
    operand_write(&opr_src);
}

make_instr_impl_1op(pop, r, v)

make_instr_func(popa)
{
    int len = 1;
    if (data_size == 16)
    {
        cpu.gpr[7]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        cpu.gpr[6]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        cpu.gpr[5]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        // throwaway
        cpu.esp += 2;
        cpu.gpr[3]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        cpu.gpr[2]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        cpu.gpr[1]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
        cpu.gpr[0]._16 = vaddr_read(cpu.esp, SREG_SS, 2);
        cpu.esp += 2;
    }
    else if (data_size == 32)
    {
        cpu.gpr[7]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        cpu.gpr[6]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        cpu.gpr[5]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        // throwaway
        cpu.esp += 4;
        cpu.gpr[3]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        cpu.gpr[2]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        cpu.gpr[1]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
        cpu.gpr[0]._32 = vaddr_read(cpu.esp, SREG_SS, 4);
        cpu.esp += 4;
    }
    return len;
}