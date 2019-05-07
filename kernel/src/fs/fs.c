#include "common.h"
#include "string.h"

typedef struct {
	char *name;
	uint32_t size;
	uint32_t disk_offset;
} file_info;

typedef struct {
	bool used;
	uint32_t index;
	uint32_t offset;
} Fstate;

enum {SEEK_SET, SEEK_CUR, SEEK_END};

static const file_info file_table[] = {
/*3-4*/		{"1.rpg", 188864, 1048576}, {"2.rpg", 188864, 1237440},
/*5-6*/		{"3.rpg", 188864, 1426304}, {"4.rpg", 188864, 1615168},
/*7-8*/		{"5.rpg", 188864, 1804032}, {"abc.mkf", 1022564, 1992896},
/*9-10*/	{"ball.mkf", 134704, 3015460}, {"data.mkf", 66418, 3150164},
/*11-12*/	{"desc.dat", 16027, 3216582}, {"fbp.mkf", 1128064, 3232609},
/*13-14*/	{"fire.mkf", 834728, 4360673}, {"f.mkf", 186966, 5195401},
/*15-16*/	{"gop.mkf", 11530322, 5382367}, {"map.mkf", 1496578, 16912689},
/*17-18*/	{"mgo.mkf", 1577442, 18409267}, {"m.msg", 188232, 19986709},
/*19-20*/	{"mus.mkf", 331284, 20174941}, {"pat.mkf", 8488, 20506225},
/*21-22*/	{"rgm.mkf", 453202, 20514713}, {"rng.mkf", 4546074, 20967915},
/*23-24*/	{"sss.mkf", 557004, 25513989}, {"voc.mkf", 1997044, 26070993},
/*25-26*/	{"wor16.asc", 5374, 28068037}, {"wor16.fon", 82306, 28073411},
/*27-28*/	{"word.dat", 5650, 28155717}, {"credits_bgm.wav", 10067800, 1048576},
};

#define NR_FILES (sizeof(file_table) / sizeof(file_table[0]))

Fstate files[NR_FILES + 3];

void ide_read(uint8_t *, uint32_t, uint32_t);
void ide_write(uint8_t *, uint32_t, uint32_t);

/* Please implement a simple file system here */

int fs_open(const char *pathname, int flags) {
	int fd = -1;
	int i;
	for (i = 0; i<NR_FILES; i++)
	{
		if (strcmp(file_table[i].name, pathname) == 0)
		{
			fd = i + 3;
			break;
		}
	}
	assert(fd != -1);
	assert(!files[fd].used);
	
	

	files[fd].used = true;
	files[fd].index = file_table[i].disk_offset;
	files[fd].offset = 0;

	return fd;
}

size_t fs_read(int fd, void *buf, size_t len) {
	assert(fd > 2);
	if (files[fd].used == false)
		assert(0);
	// Log("read fd: %d len: %d CurrentOffset: %d", fd, len, files[fd].offset);
	if (files[fd].offset == file_table[fd-3].size)
	{
		return -1;
	}
	else if (files[fd].offset + len >= file_table[fd-3].size)
	{
		ide_read(buf, files[fd].index + files[fd].offset, file_table[fd-3].size - files[fd].offset);
		files[fd].offset = file_table[fd-3].size;
		return file_table[fd-3].size - files[fd].offset;
	}
	else
	{
		ide_read(buf, files[fd].index + files[fd].offset, len);
		files[fd].offset += len;
		return len;
	}
}

size_t fs_write(int fd, void *buf, size_t len) {
	assert(fd <= 2);
#ifdef HAS_DEVICE_SERIAL
	int i;
	extern void serial_printc(char);
	for(i = 0; i < len; i ++) {
		serial_printc( ((char *)buf)[i] );
	}
#else
	asm volatile(".byte 0x82" : "=a" (len) : "a"(4), "b"(fd), "c"(buf), "d"(len));
#endif

	return len;
}

off_t fs_lseek(int fd, off_t offset, int whence) {
	assert(fd > 2);
	assert(files[fd].used);
	// Log("lseek fd: %d offset: %d whence: %d", fd, offset, whence);
	if (whence == SEEK_SET)
	{
		assert(offset > 0 || offset == 0);
		files[fd].offset = offset;
	}
	else if (whence == SEEK_CUR)
	{
		assert(files[fd].offset + offset < file_table[fd-3].size && files[fd].offset + offset >= 0);
		files[fd].offset += offset;
	}
	else if (whence == SEEK_END)
	{
		assert(offset <= 0);
		files[fd].offset = file_table[fd-3].size + offset;
	}
	else
	{
		assert(0);
		return -1;
	}
	
	return files[fd].offset;
}

int fs_close(int fd) {
	if (files[fd].used)
	{
		files[fd].used = false;
		return 0;
	}
	else
	{
		assert(0);
		return -1;
	}
}
