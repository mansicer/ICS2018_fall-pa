#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "memory/cache.h"

CacheLine cache[CACHELINE_SIZE];

void init_cache()
{
	int i = 0;
	for (i=0; i<CACHELINE_SIZE; i++)
    {
        cache[i].valid = 0;
    }
}

uint32_t cache_read(paddr_t paddr, size_t len, CacheLine *cache)
{
    uint32_t ret = 0;
    int code = paddr >> 13;
    int number = (paddr >> 6) % GROUP_SIZE;
    int pos = paddr % 64;
    /*
        if the range of data to read is out of current CacheLine, then read the memory directly
        it may happen when reading the code memory
    */
    if (pos > 64 - len) 
    {
        memcpy(&ret, hw_mem+paddr, len);
        return ret;
    }
    bool flag = false;
    for (int i=0; i<8; i++)
    {
        int num = number*8 + i;
        if (cache[num].valid==1 && cache[num].target == code)
        {
            // printf("read hit!\n");
            memcpy(&ret, cache[num].data + pos, len);
            flag = true;
            return ret;
        }
    }
    if (!flag)
    {
        // printf("read not hit!\n");
        bool valid_flag = false;
        for (int i=0; i<8; i++)
        {
            int num = number*8 + i;
            if (cache[num].valid == 0) // looking for the invalid line
            {
                memcpy(cache[num].data, hw_mem+(paddr & 0xffffffc0), 64);
                cache[num].target = code;
                cache[num].valid = 1;
                memcpy(&ret, cache[num].data + pos, len);
                valid_flag = true;
                return ret;
            }
        }
        if (!valid_flag)
        {
            int j = paddr % 8; // get the low 3-bit number of the addr to read, this number can be a random number
            int num = number*8 + j;
            memcpy(cache[num].data, hw_mem+(paddr & 0xffffffc0), 64);
            cache[num].target = code;
            cache[num].valid = 1;
            memcpy(&ret, cache[num].data + pos, len);
            return ret;
        }
    }
    return 0;
}

void cache_write(paddr_t paddr, size_t len, uint32_t data, CacheLine *cache)
{
    /*
        test proves that the range of data to write won't be out of one CacheLine,
        we haven't needed to do something special so far
    */
    int code = paddr >> 13;
    int number = (paddr >> 6) % GROUP_SIZE;
    int pos = paddr % 64;
    bool flag = false;
    for (int i=0; i<8; i++)
    {
        int num = number*8 + i;
        if (cache[num].valid == 1 && cache[num].target == code)
        {
            // printf("write hit!\n");
            memcpy(cache[num].data + pos, &data, len);
            memcpy(hw_mem + paddr, &data, len);
            flag = true;
            return;
        }
    }
    if (!flag)
    {
        // printf("write not hit!\n");
        memcpy(hw_mem + paddr, &data, len);
        return;
    }
}
