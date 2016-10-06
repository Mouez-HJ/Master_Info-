#include <stdlib.h>
#include <stdio.h>
#include "superbloc.h"
#include "drive.h"
#include "vol.h"
#include "mbr.h"
#include <string.h>
#include <assert.h>

unsigned char buffer[HDA_SECTORSIZE];


void
init_volume()
{
  /* Chargement du mbr */
  init_mbr();
}

void init_super (unsigned int vol, char *name){

  sb.sb_magic = SUPER_MAGIC;
  sb.sb_numserial = rand();
  strncpy(name, sb.sb_name,32);
  sb.sb_root = 0;
  sb.sb_first_fb=1;
  assert(sizeof (sb)< HDA_SECTORSIZE);
 
  *((struct super_b *) buffer) = sb;
  write_block(vol,0 ,buffer);
  firstBloc.b_num = 1;
  firstBloc.b_size = mbr.disque[vol].size-1;
  *((struct bloc *) buffer) = firstBloc;
  write_block(vol,1,buffer);
}

int load_super(unsigned int vol){

  current_vol = vol;
  read_block(vol, 0, buffer);
  sb = *(struct super_b *) buffer;
	
  return 0;
}


void save_super(){
 
  *((struct super_b *) buffer) = sb;
  write_block (current_vol,0, buffer);
}

unsigned int new_bloc(){
  unsigned int nb;
  struct bloc fb; 
  if(sb.sb_first_fb == 0)
    return 0;
  read_block(current_vol, sb.sb_first_fb, buffer);
  
  fb = *((struct bloc *) buffer);
  if(fb.b_size==1)
    {
      nb = sb.sb_first_fb;
      sb.sb_first_fb=fb.fb_next;
    }else{
    fb.b_size--;
    *((struct bloc* ) buffer) = fb;
    write_block(current_vol, sb.sb_first_fb, buffer);
    nb = sb.sb_first_fb + fb.b_size;
    save_super();
    return nb;
  }
	return 0;
}

void free_block(unsigned int bloc){
  struct bloc fb; 
  fb.fb_next = sb.sb_first_fb;
  fb.b_size =1;
  sb.sb_first_fb = bloc;
  (*(struct bloc *)buffer) = fb;
  write_block(current_vol, bloc, buffer);
  save_super();
}




