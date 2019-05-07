#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "memory/cache.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>

uint8_t hw_mem[MEM_SIZE_B];

uint32_t hw_mem_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data) {
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	int tmp = is_mmio(paddr);
	if (tmp != -1)
	{
		ret = mmio_read(paddr, len, tmp);
	}
	else
	{
#ifdef CACHE_ENABLED
	ret = cache_read(paddr, len, cache);
#else
	ret = hw_mem_read(paddr, len);
#endif
	}
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data) {
	int tmp = is_mmio(paddr);
	if (tmp != -1)
	{
		mmio_write(paddr, len, data, tmp);
	}
	else
	{
#ifdef CACHE_ENABLED
	cache_write(paddr, len, data, cache);
#else
	hw_mem_write(paddr, len, data);
#endif
	}
}


uint32_t laddr_read(laddr_t laddr, size_t len) {
#ifndef IA32_PAGE
	return paddr_read(laddr, len);
#else
	uint32_t paddr = laddr;
	if (cpu.cr0.pg == 1)
	{
		if ((laddr & 0xfff) > 4096 - len)
		{
			paddr = page_translate(laddr);

			// uint32_t front = 4096 - (laddr & 0xfff);
			// uint32_t back = 4 - front;
			// uint32_t front_addr = page_translate(laddr - back);
			// uint32_t back_addr = page_translate(laddr + front);
			// printf("Page Through! laddr: %x\t front_addr: %x\t back_addr: %x\n", laddr, front_addr, back_addr);
			// uint32_t front_val = paddr_read(front_addr, 4);
			// uint32_t back_val = paddr_read(back_addr, 4);
			// uint32_t res = (front_val & (0xFFFFFFFF >> (32 - front * 8))) + ((back_val & (0xFFFFFFFF >> (32 - back_addr))) << (front * 8));
			// assert(0);
			// printf("========Read Through Page!========\n");
			uint32_t res = paddr_read(paddr, len);
			return res;
		}
		else
		{
			paddr = page_translate(laddr);	
		}
	}
	else
	{
		paddr = laddr;
	}
	return paddr_read(paddr, len);
#endif
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data) {
#ifndef IA32_PAGE
	paddr_write(laddr, len, data);
#else
	uint32_t paddr = laddr;
	if (cpu.cr0.pg == 1)
	{
		if ((laddr & 0xfff) > 4096 - len)
		{
			// printf("========Write Through Page!========\n");
			// printf("laddr: %x, eip = %x\n", laddr, cpu.eip);
			// assert(0);
			paddr = page_translate(laddr);
			paddr_write(paddr, len, data);
			return ;
		}
		else
		{
			paddr = page_translate(laddr);
		}
	}
	else
	{
		paddr = laddr;
	}
	paddr_write(paddr, len, data);
#endif
}


uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	return laddr_read(vaddr, len);
#else
	uint32_t laddr = vaddr;
	if (cpu.cr0.pe == 1)
	{
		laddr = segment_translate(vaddr, sreg);
	}
	return laddr_read(laddr, len);
#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	laddr_write(vaddr, len, data);
#else
	uint32_t laddr = vaddr;
	if (cpu.cr0.pe == 1)
	{
		laddr = segment_translate(vaddr, sreg);
	}
	laddr_write(laddr, len, data);
	return;
#endif
}

void init_mem() {
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);
#ifdef CACHE_ENABLED
	init_cache();
#endif

#ifdef TLB_ENABLED
	make_all_tlb();
	init_all_tlb();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t * get_mem_addr() {
	return hw_mem;
}
