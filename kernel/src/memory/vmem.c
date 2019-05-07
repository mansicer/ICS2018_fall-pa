#include "common.h"
#include "memory.h"
#include <string.h>

#define VMEM_ADDR 0xa0000
#define SCR_SIZE (320 * 200)
#define NR_PT ((SCR_SIZE + PT_SIZE - 1) / PT_SIZE)  // number of page tables to cover the vmem

PDE* get_updir();
PTE vtable[1024] align_to_page;

void create_video_mapping() {
	
	/* TODO: create an identical mapping from virtual memory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) to physical memeory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) for user program. You may define
	 * some page tables to create this mapping.
	 */
	PDE *pdir = get_updir();
	PTE *ptable = (PTE *)va_to_pa(vtable);
	uint32_t ptable_idx, pframe_idx;

	/* fill PDEs and PTEs */
	memset(ptable, 0, sizeof(vtable));

	pframe_idx = VMEM_ADDR >> 12;
	pdir[0].val = make_pde(ptable);

	// Log("pdir: %x\t ptable_add: %x", pdir->page_frame, ptable);
	for (ptable_idx = 0; ptable_idx < 16; ptable_idx++)
	{
		ptable[pframe_idx].val = make_pte(pframe_idx << 12);
		// Log("ptable_addr: %x\t ptable_val: %x", ptable + pframe_idx, ptable[pframe_idx].val);
		pframe_idx++;
	}
	// Log("over");
	// for (pdir_idx = 0; pdir_idx < PHY_MEM / PT_SIZE; pdir_idx ++) {
	// 	pdir[pdir_idx].val = make_pde(ptable);
	// 	pdir[pdir_idx + KOFFSET / PT_SIZE].val = make_pde(ptable);
	// 	for (ptable_idx = 0; ptable_idx < NR_PTE; ptable_idx ++) {
	// 		ptable->val = make_pte(pframe_idx << 12);
	// 		pframe_idx ++;
	// 		ptable ++;

	// 	}
	// }

	// panic("please implement me");
}

void video_mapping_write_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		buf[i] = i;
	}
}

void video_mapping_read_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		assert(buf[i] == i);
	}
}

void video_mapping_clear() {
	memset((void *)VMEM_ADDR, 0, SCR_SIZE);
}

