#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include "drive.h"
#include "include/hardware.h"


/**
 * Code repris du programme mkhd
 */
void
empty_it()
{
  return;
  }
void init(){
 unsigned i;

  /* hardware initialization */
 init_hardware("hardware.ini");
  
/* Interreupt handlers */
  for(i=0; i<16; i++)
    IRQVECTOR[i] = empty_it;
    
 
  
  /* récupération caracteristiques disque */
  _out(HDA_CMDREG, CMD_DSKINFO);
  
  /* remplir */
  secSize = (_in(HDA_DATAREGS+4)<<8)+_in(HDA_DATAREGS+5);
  assert(secSize==HDA_SECTORSIZE);
}

void seek(int cyl, int sec){

  _out(HDA_DATAREGS,(cyl >>8)& 0xFF);
  _out(HDA_DATAREGS+1,cyl & 0xFF);
  _out(HDA_DATAREGS+2,(sec >>8)& 0xff);
  _out(HDA_DATAREGS+3,sec & 0xFF);
  _out(HDA_CMDREG,CMD_SEEK);
  _sleep(HDA_IRQ);
}

void write_sector(unsigned int cylinder, unsigned int sector,
                  unsigned char *buffer){
 
  seek(cylinder,sector);
  memcpy(buffer,MASTERBUFFER,secSize);


 _out(HDA_DATAREGS,0x0);
 _out(HDA_DATAREGS+1,0X1);
 _out(HDA_CMDREG,CMD_WRITE);
 _sleep(HDA_IRQ);

}

void read_sector(unsigned int cyl, unsigned int sec,unsigned char *buffer){

  seek(cyl,sec);
  _out(HDA_DATAREGS,0);
  _out(HDA_DATAREGS+1,1);
  _out(HDA_CMDREG,CMD_READ);
  _sleep(HDA_IRQ);
  memcpy(buffer,MASTERBUFFER,secSize);
  

}


void format_sector(unsigned int cyl, unsigned int sec,unsigned int nsector, unsigned int val){


  seek(cyl,sec);
  _out(HDA_DATAREGS,(nsector >>8)& 0xFF);
  _out(HDA_DATAREGS+1,nsector & 0xFF);
  _out(HDA_DATAREGS+2,(val >>24) & 0xFF);
  _out(HDA_DATAREGS+3,(val >>16)& 0xFF);
  _out(HDA_DATAREGS+4,(val>>8)& 0xFF);
  _out(HDA_DATAREGS+5,val & 0xFF);
  _out(HDA_CMDREG,CMD_FORMAT);
  _sleep(HDA_IRQ);
}

