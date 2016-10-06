#include <stdio.h>
#include <stdlib.h>
#include "create_ctx.h"
#include "hw.h"

void start_sched(void){

	//Association de la fonction yield � l'interruption TIMER_IRQ
	setup_irq(TIMER_IRQ, yield);

	//Initialisation du mat�riel
	start_hw();

	//Lancement de la fonction yield
	yield();

}
