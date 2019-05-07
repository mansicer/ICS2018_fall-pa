#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"


void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	cpu.esp -= 4;
    vaddr_write(cpu.esp, SREG_SS, 4, cpu.eflags.val);
    cpu.esp -= 4;
    vaddr_write(cpu.esp, SREG_SS, 4, cpu.cs.val);
    cpu.esp -= 4;
    vaddr_write(cpu.esp, SREG_SS, 4, cpu.eip);

    GateDesc it_gate;
    uint32_t addr = cpu.idtr.base + 8 * intr_no;

    // printf("No. %x\n", intr_no);
    // printf("Intr addr: %x\n", addr);

    it_gate.val[0] = laddr_read(addr, 4);
    it_gate.val[1] = laddr_read(addr + 4, 4);

    // printf("cs: %x\n", cpu.cs.val);
    cpu.cs.val = it_gate.selector;
    // printf("cs: %x\n", it_gate.selector);
    load_sreg(SREG_CS);
    
    // printf("hello!\n");
    cpu.eip = it_gate.offset_15_0 + (it_gate.offset_31_16 << 16);
#endif
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
