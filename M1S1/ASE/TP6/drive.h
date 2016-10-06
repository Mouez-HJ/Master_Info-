#define DEBUG 0x1000
#define SYSTICK 1000
#define SL1_ENABLE 0
#define SL1 "chimay.lifl.fr"
#define SL1_COM 1
#define SL1_NOISE 500
#define SL1_IRQ 4
#define SL1_UARTSR 0x3F8
#define SL1_UARTDATA 0x3FA
#define SL1_UDPPORT 1500
#define SL2_ENABLE 0
#define SL2 "ldx2"
#define SL2_COM 2
#define SL2_NOISE 0
#define SL2_IRQ 5
#define SL2_UARTSR 0x3FC
#define SL2_UARTDATA 0x3FE
#define SL2_UDPPORT 1501
#define ENABLE_ETHERNET 0
#define Eth0_Link 1
#define Eth0_DMASR 0xE800
#define Eth0_DMABASE 0xE804
#define Eth0_DMASIZE 0xE808
#define Eth0_IRQ 9
#define Eth0_MCADR "225.0.0.1"
#define Eth0_UDPPORT 1502
#define ENABLE_HDA 1
#define HDA_FILENAME "vdiskA.bin"
#define HDA_CMDREG 0x3F6
#define HDA_DATAREGS 0x110
#define HDA_IRQ 14
#define HDA_MAXCYLINDER 16
#define HDA_MAXSECTOR 16
#define HDA_SECTORSIZE 256
#define HDA_STPS 2
#define HDA_STPC 1
#define HDA_PON_DELAY 30
#define HDA_POFF_DELAY 30
#define ENABLE_HDB 0
#define HDB_FILENAME "vdiskB.bin"
#define HDB_CMDREG 0x376
#define HDB_DATAREGS 0x170
#define HDB_IRQ 15
#define HDB_MAXCYLINDER 16
#define HDB_MAXSECTOR 16
#define HDB_SECTORSIZE 512
#define HDB_STPS 2
#define HDB_STPC 3
#define HDB_PON_DELAY 30
#define HDB_POFF_DELAY 30
#define TIMER_CLOCK 0xF0
#define TIMER_PARAM 0xF4
#define TIMER_ALARM 0xF8
#define TIMER_IRQ  2
#define TIMER_TICKS 1
#define MMU_IRQ	13
#define MMU_CMD	0x66
#define MMU_PROCESS 0xCC
#define MMU_RESET 0xD5
#define MMU_FAULTING_ADDR 0xCD
#define TLB_ADD_ENTRY 0xCE
#define TLB_SIZE 32
#define TLB_ENTRIES 0x800
int secSize;


void init();

void seek(int cyl,int sec);

void read_sector(unsigned int cylinder, unsigned int sector,
                 unsigned char *buffer);
void write_sector(unsigned int cylinder, unsigned int sector,
                  unsigned char *buffer); 
void format_sector(unsigned int cyl, unsigned int sec,
                   unsigned int nsector,
                   unsigned int val);

