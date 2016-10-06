#include <stdlib.h>
#include <stdio.h>
#include "drive.h"
#include "mbr.h"  
#include <string.h>
#include <errno.h>

static struct mbr_s mbr;

int verif_size_mbr(){
  if(HDA_SECTORSIZE>=sizeof(struct mbr_s)){
    return 1;
  }else{
    exit(EXIT_FAILURE);
  }

}

void init_mbr(){
  unsigned char *buffer= malloc(HDA_SECTORSIZE*sizeof(char));
  verif_size_mbr();
  read_sector(0,0,buffer);
  memcpy(&mbr, buffer, sizeof(struct mbr_s));
  
  if(MAGIC_NUMBER != mbr.magic_number){
    mbr.nb_volumes = 0;
    mbr.magic_number=MAGIC_NUMBER;
  }

}

void save_mbr(){
  unsigned char *buffer=malloc(HDA_SECTORSIZE);
  memcpy(buffer,(char*)&mbr,HDA_SECTORSIZE);
  write_sector(0,0,buffer);
}


int cyl_of_block(int num_vol, int num_block){
  struct volume_s vol = mbr.disque[num_vol];
  int cyl_init = vol.cyl;
  int sect_init = vol.sec;
  return cyl_init+((sect_init + num_block)/HDA_MAXSECTOR);
}

int sec_of_block(int num_vol, int num_block){
  struct volume_s vol = mbr.disque[num_vol];
  int sect_init = vol.sec;
  return ((sect_init+num_block)%HDA_MAXSECTOR);
}


void read_block(unsigned int vol, unsigned int bloc, unsigned char * buffer){
  read_sector(cyl_of_block(vol, bloc), sec_of_block(vol,bloc), buffer);
}

void write_block(unsigned int vol, unsigned int bloc, unsigned char * buffer){
  write_sector(cyl_of_block(vol, bloc), sec_of_block(vol,bloc), buffer);
}
 
void format_vol(unsigned int vol){
  struct volume_s volum= mbr.disque[vol];
  format_sector(volum.cyl, volum.sec, volum.size, 0);
}


