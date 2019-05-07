#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);
    opr_dest.val = opr_src.val;
    cpu.esp -= data_size/8;

    opr_dest.data_size = data_size;
    opr_dest.type = OPR_MEM;
    opr_dest.addr = cpu.esp;
    opr_dest.sreg = SREG_SS;
    

    operand_write(&opr_dest);
}

make_instr_impl_1op(push, r, v)
make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)
make_instr_impl_1op(push, rm, v)

make_instr_func(pusha)
{
    int len = 1;
    if (data_size == 16)
    {
        uint16_t temp = cpu.gpr[4]._16;
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[0]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[1]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[2]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[3]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, temp);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[5]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[6]._16);
        cpu.esp -= 2;
        vaddr_write(cpu.esp, SREG_SS, 2, cpu.gpr[7]._16);
    }
    else if (data_size == 32)
    {
        uint32_t temp = cpu.esp;
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[0]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[1]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[2]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[3]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, temp);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[5]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[6]._32);
        cpu.esp -= 4;
        vaddr_write(cpu.esp, SREG_SS, 4, cpu.gpr[7]._32);
    }
    return len;
}
