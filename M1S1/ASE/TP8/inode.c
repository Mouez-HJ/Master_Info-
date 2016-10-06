#include <stdlib.h>
#include <stdio.h>
#include <memory.h>
#include <string.h>
#include "inode.h"

#include "mbr.h"
#include "superbloc.h"

#define N_DIRECT (HDA_SECTORSIZE/4)-4




void read_inode (unsigned int inumber, struct inode_s *inode){
	read_block(current_vol, inumber, (unsigned char*) inode);
}

void write_inode (unsigned int inumber, const struct inode_s *inode){
	write_block(current_vol, inumber, (unsigned char*) inode);
}



unsigned int create_inode(enum file_type_e type){
	struct inode_s inode;
	inode.type = type;
	inode.ind_size = 0;
	inode.indirect = 0;
	inode.d_indirect = 0;
	memset (&inode.direct, 0, N_DIRECT*sizeof(int));
	unsigned int bloc ;
	bloc =new_bloc();
	if(bloc) {
	  write_inode(bloc, &inode);
	  return bloc;
	}
	return 0;
}

void free_indirect(int num_bloc){
	int bloc[HDA_SECTORSIZE/4];
	int i;
	if (num_bloc == 0) return;
	read_block(current_vol, num_bloc, (unsigned char*) bloc);
	for (i=0; i<HDA_SECTORSIZE/4; i++){
		if(bloc[i] != 0){
			free_block(bloc[i]);
		}
	}
	free_block(num_bloc);
}

int delete_inode(unsigned int inumber){
	struct inode_s inode; 
	int i;
	int bloc[HDA_SECTORSIZE/4];
	read_inode(inumber, &inode);
	/*d_indirect*/
	if(inode.d_indirect != 0){
	  for(i=0; i<HDA_SECTORSIZE/4; i++){
			free_indirect(bloc[i]);
		}
		free_block(inode.d_indirect);
	}
	read_block(current_vol, inode.d_indirect, (unsigned char*) bloc);
	/*indirect*/
	free_indirect(inode.indirect);
	/*direct*/
	for (i=0; i<N_DIRECT; i++){
		if(inode.direct[i]!=0){
			free_block(inode.direct[i]);
		}
	}
	/*inode*/
	free_block(inumber);
	return 0;
}

 
unsigned int vbloc_of_fbloc(unsigned int inumber, unsigned int fbloc, bool_t do_allocate){
	struct inode_s inode; 
	read_inode(inumber, &inode);
	int indirect[HDA_SECTORSIZE/4]; 
	int d_indirect[HDA_SECTORSIZE/4];
	if(fbloc < N_DIRECT){
	  if(do_allocate){
	    if(inode.direct[fbloc] == BLOC_NULL){
	      inode.direct[fbloc] = new_bloc();
	      write_inode(inumber,&inode);
	    }
	  }
	  return inode.direct[fbloc];
	}
	fbloc -= N_DIRECT;
	/* if indirect */
	if (fbloc < HDA_SECTORSIZE/4){
	  if(do_allocate){
	    read_block(current_vol, inode.indirect, (unsigned char*)indirect);
	    if(indirect[fbloc]==BLOC_NULL){
	      indirect[fbloc] = new_bloc();
	      write_block(current_vol, inode.indirect,(unsigned char*)indirect);
	    }
	  }
	  return indirect[fbloc];
	}
	fbloc -= HDA_SECTORSIZE/4;
	/* if d_indirect */
	if(fbloc < (HDA_SECTORSIZE/4)*(HDA_SECTORSIZE/4)){
	  read_block(current_vol, inode.d_indirect, (unsigned char*) d_indirect);
	  if(do_allocate){
	    read_block(current_vol, d_indirect[fbloc/(HDA_SECTORSIZE/4)], (unsigned char*)indirect);
	    if(indirect[fbloc%(HDA_SECTORSIZE/4)] == BLOC_NULL){
	      indirect[fbloc%(HDA_SECTORSIZE/4)] = new_bloc();
	      write_block(current_vol, d_indirect[fbloc/(HDA_SECTORSIZE/4)], (unsigned char*)indirect);
	    }
	  }
	  return indirect[fbloc%(HDA_SECTORSIZE/4)];
	}
	return 0;
}	
	
	
