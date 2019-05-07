#ifndef __CACHE_H__
#define __CACHE_H__
#include "nemu.h"

#define CACHELINE_SIZE 1024
#define GROUP_SIZE 128

typedef struct 
{
    uint8_t valid; // just 1 bit for setting valid 
    uint16_t target; // the data should be 14 bits
    uint8_t data[64]; // every line has 64 Byte memory
}CacheLine;

extern CacheLine cache[];

void init_cache();

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine *cache);

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine *cache);

#endif