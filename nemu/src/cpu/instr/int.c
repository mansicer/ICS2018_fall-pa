#include "cpu/instr.h"

make_instr_func(int_)
{
    OPERAND inum;
    inum.type = OPR_IMM;
    inum.sreg = SREG_CS;
    inum.data_size = 32;
    inum.addr = cpu.eip + 1;
    operand_read(&inum);

    raise_sw_intr(inum.val);
    
    return 0;
}