#define MAGIC_NUMBER 0XDEADBEEF
#define MAX 8
enum volume_type{base,annexe,other}; 

struct volume_s{
  int size,cyl,sec;
  enum volume_type type;
};

struct mbr_s{
  struct volume_s disque[MAX];
  int nb_volumes;
  int magic_number;
};


void init_mbr();

int verif_size_mbr();

void save_mbr();
int cyl_of_block(int num_vol,int num_block);
int sec_of_block(int num_vol,int num_block);
void read_block(unsigned int vol,unsigned int block,unsigned char *buffer);
void write_block(unsigned int vol,unsigned int block,unsigned char* buffer);
void format_vol (unsigned int vol);
