#include "cpu/instr.h"

make_instr_func(cli)
{
    cpu.eflags.IF = 0;
    print_asm_0("cli", "", 1);
    return 1;
}

make_instr_func(sti)
{
    cpu.eflags.IF = 1;
    print_asm_0("sti", "", 1);
    return 1;
}