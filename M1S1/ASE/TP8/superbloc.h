#define SUPER_MAGIC 1234567

unsigned int current_vol;
struct super_b  sb;
struct bloc firstBloc;


struct super_b{
  unsigned int sb_magic,sb_numserial,sb_root,sb_first_fb;
  char sb_name[32];
};


struct bloc{
  unsigned int b_num;
  unsigned int b_size;
  unsigned int fb_next;
};

void init_super(unsigned int vol, char *name);
int load_super(unsigned int vol);
void save_super();
unsigned int new_bloc();
void free_block(unsigned int bloc);
void init_volume();
