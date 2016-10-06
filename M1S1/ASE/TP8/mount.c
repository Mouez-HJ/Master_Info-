/* ------------------------------
   $Id: mount.c,v 1.2 2009/11/17 16:20:54 marquet Exp $
   ------------------------------------------------------------

   Initialization and finalization
   Philippe Marquet, Nov 2009
   
*/

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <errno.h>
#include <string.h>
#include "include/hardware.h"
#include "config.h"
#include "tools.h"
#include "mount.h"

#include "mbr.h"
#include "superbloc.h"


/* load super bloc of the $CURRENT_VOLUME
   set current_volume accordingly */
static void
load_current_volume ()
{
    char* current_volume_str;
    int status;
    
    current_volume_str = getenv("CURRENT_VOLUME");
    if(current_volume_str == NULL)
    {
      fprintf(stderr, "La variable d'environnement CURRENT_VOLUME n'est pas initialisé !\n");
      exit(EXIT_FAILURE);
    }

    errno = 0;
    current_vol = strtol(current_volume_str, NULL, 10);
    if(!errno)
    {
      fprintf(stderr, "bad value of Current volume");
      exit(EXIT_FAILURE);
    }
    
    status = load_super(current_vol);
    if(!status)
    {
      fprintf(stderr, "unable to load super of vol");
      exit(EXIT_FAILURE);
    }
}

/* return hw_config filename */
static char *
get_hw_config ()
{
    char* hw_config;

    hw_config = getenv("HW_CONFIG");
    return hw_config ? hw_config : DEFAULT_HW_CONFIG;
}

static void
emptyIT()
{
    return;
}

/* ------------------------------
   Initialization and finalization fucntions
   ------------------------------------------------------------*/
void
mount()
{
    char *hw_config;
    int status, i; 

    /* Hardware initialization */
    hw_config = get_hw_config();
    status = init_hardware(hw_config);
    /*ffatal(status, "error in hardware initialization with %s\n", hw_config);*/
    if(!status)
    {
      fprintf(stderr, "error in hardware initialization");
      exit(EXIT_FAILURE);
    }

    /* Interrupt handlers */
    for(i=0; i<16; i++)
	IRQVECTOR[i] = emptyIT;
    
    /* Allows all IT */
    _mask(1);

    /* Load MBR and current volume */
    init_mbr();
    load_current_volume();
}

void
umount()
{
    /* save current volume super bloc */
    save_super();

    /* bye */
}
 
