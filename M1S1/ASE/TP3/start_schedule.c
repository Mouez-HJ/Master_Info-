#include <stdio.h>
#include <stdlib.h>
#include "create_ctx.h"
#include "hw.h"

void start_sched(void){

	//Association de la fonction yield à l'interruption TIMER_IRQ
	setup_irq(TIMER_IRQ, yield);

	//Initialisation du matériel
	start_hw();

	//Lancement de la fonction yield
	yield();

}
