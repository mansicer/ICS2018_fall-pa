#include "cpu/cpu.h"
#include "memory/memory.h"
#ifdef IA32_SEG
// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	return offset + cpu.segReg[sreg].base;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	uint32_t addr = cpu.gdtr.base + 8 * cpu.segReg[sreg].index;
	// printf("GDT Index: %d\n", cpu.segReg[sreg].index);
	SegDesc gdt;
	gdt.val[0] = laddr_read(addr, 4);
	gdt.val[1] = laddr_read(addr + 4, 4);
	// memcpy(&gdt, hw_mem + addr, sizeof(gdt));
	// printf("GDT info: %x %x\n", gdt.val[0], gdt.val[1]);
	assert(gdt.base_15_0 == 0 && gdt.base_23_16 == 0 && gdt.base_31_24 == 0);
	assert(gdt.limit_15_0 == 0xffff || gdt.limit_19_16 == 0xf);
	assert(gdt.granularity == 1);
	cpu.segReg[sreg].type = gdt.type + (gdt.segment_type << 4);
	cpu.segReg[sreg].soft_use = gdt.soft_use;
	cpu.segReg[sreg].privilege_level = gdt.privilege_level;
	cpu.segReg[sreg].base = (gdt.base_31_24 << 24) + (gdt.base_23_16 << 16) + gdt.base_15_0;
	cpu.segReg[sreg].limit = (gdt.limit_19_16 << 16) + gdt.limit_15_0;
}
#else
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	return 0;
}
// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
}
#endif