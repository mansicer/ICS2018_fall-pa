#include "cpu/cpu.h"
#include "memory/memory.h"

#ifdef IA32_PAGE
// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	// return (page_walk(laddr) & 0xfffff000) | (laddr & 0xfff);
	uint32_t dir, page, offset;
	dir = laddr >> 22;
	page = (laddr >> 12) & 0x3ff;
	offset = laddr & 0xfff;
	
	uint32_t base = cpu.cr3.pdbr;

	uint32_t pde_addr = (base << 12) + dir * sizeof(PDE);
	PDE pde;
	// memcpy(&pde, (void *)hw_mem + pde_addr, sizeof(PDE));
	pde.val = paddr_read(pde_addr, 4);

	if (pde.present == 0)
		printf("Page Loss! laddr: %x\t eip: %x\n", laddr, cpu.eip);
	assert(pde.present);

	uint32_t pte_addr = (pde.page_frame << 12) + page * sizeof(PTE);
	PTE pte;
	pte.val = paddr_read(pte_addr, 4);
	if (pte.present == 0)
		printf("Page Loss! laddr: %x\t eip: %x\t pte_addr: %x\n", laddr, cpu.eip, pte_addr);
	assert(pte.present);

	uint32_t paddr = (pte.page_frame << 12) + offset;
	return paddr;
#else
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
#endif