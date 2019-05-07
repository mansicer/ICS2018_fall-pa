#include "cpu/instr.h"
#ifdef IA32_SEG
make_instr_func(lgdt)
{
    int len = 1;
    opr_src.data_size = 16;

    len += modrm_rm(eip + 1, &opr_src);
    operand_read(&opr_src);

    uint16_t limit = laddr_read(opr_src.addr, 2);
    uint32_t base = laddr_read(opr_src.addr + 2, 4);

    cpu.gdtr.base = base;
    cpu.gdtr.limit = limit;

    // printf("GDTR - base: %x\t limit: %x\n", cpu.gdtr.base, cpu.gdtr.limit);
    print_asm_1("lgtd", "", len, &opr_src);
    return len;
}
#endif
#ifdef IA32_INTR
make_instr_func(lidt)
{
    int len = 1;
    opr_src.data_size = 16;

    len += modrm_rm(eip + 1, &opr_src);
    operand_read(&opr_src);

    // printf("addr: %x\n", opr_src.addr);
    // printf("val: %x\n", opr_src.val);
    uint16_t limit = laddr_read(opr_src.addr, 2);
    uint32_t base = laddr_read(opr_src.addr + 2, 4);

    cpu.idtr.base = base;
    cpu.idtr.limit = limit;
    
    // printf("IDTR - base: %x\t limit: %x\n", cpu.idtr.base, cpu.idtr.limit);

    print_asm_1("litd", "", len, &opr_src);
    return len;
}
#endif