#include "cpu/instr.h"

make_instr_func(in_b)
{
    uint32_t data = pio_read(cpu.gpr[2]._16, 1);
    cpu.gpr[0]._8[0] = (uint8_t) data;
    return 1;
}

make_instr_func(in_v)
{
    uint32_t data;
    data = pio_read(cpu.gpr[2]._16, data_size/8);
    cpu.eax = data;
    return 1;
}

make_instr_func(out_b)
{
    uint32_t data = cpu.gpr[0]._8[0];
    pio_write(cpu.gpr[2]._16, 1, data);
    return 1;
}

make_instr_func(out_v)
{
    uint32_t data;
    if (data_size == 16)
        data = cpu.gpr[0]._16;
    else data = cpu.eax;
    pio_write(cpu.gpr[2]._16, data_size/8, data);
    return 1;
}