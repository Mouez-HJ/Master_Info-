#include <stdlib.h>
#include <stdio.h>
#include "vol.h"
#include "mbr.h"
#include "drive.h"
struct mbr_s mbr;
void lister_partition(){

  	
  unsigned int size,cyl,sec;
  enum volume_type type;
	int i ; 
		
  

	for (i=0 ; i<mbr.nb_volumes ; i++ ) {

		type = mbr.disque[i].type ; 
		cyl = mbr.disque[i].cyl ; 
		sec  = mbr.disque[i].sec; 
		size     = mbr.disque[i].size ; 

		printf("\nVolume numeero = %d , Cylinder = %d , Sector = %d , Bloc = %d ",i,cyl,sec,size);

		switch(type)
		{
			case 0:printf("Type = base\n\n") ;break;
			case 1:printf("Type = annexe\n\n")  ;break;
			case 2:printf("Type = other\n\n")  ;break; 
		}
	}	

}

int nb_block_utiliser(){
	int nbr_vol ,som_bloc ,i ;
	nbr_vol = mbr.nb_volumes ;  
	som_bloc = 0 ;

	for (i=0 ; i<nbr_vol ; i++ ) 
	{
		som_bloc += mbr.disque[i].size;
	}
	return som_bloc ; 
}


void creer_partition(int size,int type){
    	int i ,volume , size1 ,dernier_secteur,espace,cylinder;
 
	size1 = size + nb_block_utiliser() ;
	volume = mbr.nb_volumes +1 ;
	if(mbr.nb_volumes < MAX)
	{	
		if(size1 < secSize)
		{
			if(mbr.nb_volumes == 0)
			{
				mbr.nb_volumes++;
				/*mbr.mbr_magic =0xDEADBEEF; */
				mbr.disque[0].cyl =0;
				mbr.disque[0].sec = 1;
				mbr.disque[0].size = size1;

				switch(type)
					{
						case 0:mbr.disque[0].type = base;break;
						case 1:mbr.disque[0].type =  annexe  ;break;
						case 2:mbr.disque[0].type =  other ;break; 
					}
				printf("le volume %d est bien crée * \n",mbr.nb_volumes );
			}
			else 
			{
				for(i=1; i<volume ; i++)
				{
					dernier_secteur   = mbr.disque[i-1].sec + mbr.disque[i-1].size ;	
					if(i<volume-1 && volume > 2 ){ 
						int j = i ; 
						espace = mbr.disque[j+1].sec -  dernier_secteur ;
					}
					if( (espace > size1) || (i==mbr.nb_volumes && (dernier_secteur + size1) < secSize))
					{
cylinder = mbr.disque[mbr.nb_volumes-1].cyl+ (mbr.disque[mbr.nb_volumes-1].sec + mbr.disque[mbr.nb_volumes-1].size) / HDA_MAXSECTOR;
						mbr.nb_volumes = i+1; 
						/*mbr.mbr_magic =0xDEADBEEF; */
						mbr.disque[i].sec =dernier_secteur ;
						mbr.disque[i].cyl = cylinder;
						mbr.disque[i].size = size1;
						switch(type)
						{
							case 0:mbr.disque[i].type = base;break;
							case 1:mbr.disque[i].type =  annexe  ;break;
							case 2:mbr.disque[i].type =  other ;break; 
						}	
					}
				}
			printf("le volume %d est bien crée \n",volume);
			}
		}
		else 
			printf("vous ne pouvez pas créer un nouveau volume vous avez dépassé le nombre de bloc autorisé \n");
	}
	else 
	  printf("vous ne pouvez pas créer un nouveau volume vous avez dépassé le nombre de volume autorisé \n");

}
void supprimer_partition(unsigned int num_vol){
  int i;
	if(num_vol < mbr.nb_volumes)
	{
	       
		for(i = num_vol; i < mbr.nb_volumes-1; i++) 
		{
			mbr.disque[i]=mbr.disque[i+1];
		}
		format_vol(num_vol);
		mbr.nb_volumes = mbr.nb_volumes -1 ; 
		printf("Le volume %d est supprimé avec succes \n",num_vol);
	}
	else if(num_vol == mbr.nb_volumes)
	{
		format_vol(num_vol);
		mbr.nb_volumes = mbr.nb_volumes -1 ; 
		printf("Le volume %d est supprimé avec succes \n",num_vol);
	}
	else 
		printf("Erreur : ce volume n'existe pas \n");

}

