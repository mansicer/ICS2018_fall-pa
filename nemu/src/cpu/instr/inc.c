#include "cpu/instr.h"

static void instr_execute_1op()
{
    operand_read(&opr_src);
    opr_src.val++;
    set_PF(opr_src.val);
    set_ZF(opr_src.val, data_size);
    set_SF(opr_src.val, data_size);
    set_OF_add(opr_src.val, 1, opr_src.val - 1, data_size);
    operand_write(&opr_src);
}

make_instr_impl_1op(inc, r, v)
make_instr_impl_1op(inc, rm, v)
