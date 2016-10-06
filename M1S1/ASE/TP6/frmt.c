#include "drive.h"
#include "include/hardware.h"
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

/*
Fonction frmt pour formater tout le dique 
*/
static void
frmt(unsigned int cylindre, unsigned int sector, unsigned int valeur){
	int i,j;
	for(i=0; i < cylindre; i++ ){
		for(j=0; j< sector;j++){
			seek(i,j);
			format_sector(i,j,1,valeur);
		}
	}
}

/*
fonction pour savoir le nombre de cylinder 
*/
int maxcylinder(){
	_out(HDA_CMDREG,CMD_DSKINFO);
	return _in(HDA_DATAREGS+1);
}

/*
fonction pour savoir le nombre de secteur
*/
int Maxsecteur(){
	_out(HDA_CMDREG,CMD_DSKINFO);
	return _in(HDA_DATAREGS+3);
}

static void
empty_it()
{
    return;
}

/*
main pour la fonction format 
*/
int
main(int argc, char** argv)
{
	int cylindre, sector,i;
  	init();

  	for(i=0; i<16; i++)
    	IRQVECTOR[i] = empty_it;
  	_mask(1);;
    	
	cylindre=maxcylinder();
    	sector=Maxsecteur();

	frmt(cylindre,sector,atoi(argv[1]));
	printf("\n *** Done *** \n");

  	exit(EXIT_SUCCESS);
}

