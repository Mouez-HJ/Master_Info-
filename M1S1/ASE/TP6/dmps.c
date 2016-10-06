#include "drive.h"
#include "include/hardware.h"

#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>


/* permet d'afficher le contenu  */
void dump(unsigned char *buffer, unsigned int buffer_size, int ascii_dump, int octal_dump) {
    int i,j;
    
    for (i=0; i<buffer_size; i+=16) {
	/* offset */
	printf("%.8o",i);

	/* octal dump */
	if (octal_dump) {
	    for(j=0; j<8; j++)
		printf(" %.2x", buffer[i+j]);
	    printf(" - ");
	    
	    for( ; j<16; j++)
		printf(" %.2x", buffer[i+j]);
	    
	    printf("\n");
	}
	/* ascii dump */
	if (ascii_dump) {
	    printf("%8c", ' ');
	    
	    for(j=0; j<8; j++)
		printf(" %1c ", isprint(buffer[i+j])?buffer[i+j]:' ');
	    printf(" - ");
	    
	    for( ; j<16; j++)
		printf(" %1c ", isprint(buffer[i+j])?buffer[i+j]:' ');
	    
	    printf("\n");
	}
	
    }
}

/*
dmps pour lire le contenu des secteurs 
*/

void dmps(int cylinder, int sector){
 
	/*cylinder*/
	_out(HDA_DATAREGS,(cylinder>>8) & 0xFF);
	_out(HDA_DATAREGS+1,cylinder & 0xFF);
	/*secteur*/
	_out(HDA_DATAREGS+2,(sector>>8) & 0xFF);
	_out(HDA_DATAREGS+3,sector & 0xFF);

	_out(HDA_CMDREG,CMD_SEEK);
	_sleep(HDA_IRQ);

	_out(HDA_DATAREGS,0x00);
	_out(HDA_DATAREGS+1,0x01);
	_out(HDA_CMDREG,CMD_READ);
	_sleep(HDA_IRQ);
	
	dump(MASTERBUFFER,HDA_SECTORSIZE,0,1);
}

int
main(int argc, char** argv)
{
	int cylindre, secteur;

  	if(argc!=3)
    	{
      		fprintf(stderr, "Comment utiliser la commande : dmps <piste> <secteur>\n");
      		exit(EXIT_FAILURE);
    	}
  
	cylindre = atoi(argv[1]);
 	secteur = atoi(argv[2]);

	init();
  	dmps(cylindre, secteur);
  	exit(EXIT_SUCCESS);
}

