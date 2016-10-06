#include <stdio.h>
#include <stdlib.h>
#include "create_ctx.h"
#include "start_schedule.h"

/*
Ping -> ABC...
*/
void ping(void *args) {

	while(1) {
		printf("A");
		printf("B");
		printf("C");
	}

}

/*
Pong -> 123...
*/
void pong(void *args) {

	while(1) {
		printf("1");
		printf("2");
		printf("3");
	}

}

int main(void) {

	//Création du 1er contexte
	create_ctx(16384, ping, NULL);
	//Création du 2nd contexte
	create_ctx(16384, pong, NULL);
	//Installation des interruptions + initialisation du matériel
	start_sched();
	//Sortie
	exit(EXIT_SUCCESS);

}
