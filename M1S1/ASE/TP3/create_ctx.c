#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "create_ctx.h"
#include "hw.h"
#include "yield.h"


int create_ctx(int stack_size, func_t f, void* args) {

	irq_disable();

	//Allocation de mémoire pour stocker un nouveau contexte -> MALLOC RÉSERVERA UN ESPACE MÉMOIRE DE TAILLE sizeof(struct ctx_s)
	struct ctx_s* tmp = malloc(sizeof(struct ctx_s));

	assert(tmp);

	//Initialisation du nouveau contexte
	init_ctx(tmp, stack_size, f, args);

	//Ajout dans la liste de contextes

	//Si la liste de contextes existe, on ajoute alors ce nouveau contexte (tmp) dans le contexte suivant la liste de contextes
	if (current_ctx) {
		tmp -> next = current_ctx -> next;
		current_ctx -> next = tmp;
	}
	//Si la liste de contextes n'existe pas, ce contexte est alors le premier dans la liste de contexte -> on pointe sur lui!!
	else {
		current_ctx = tmp;
		current_ctx -> next = tmp;
	}

	irq_enable();

	return 0;

}

int init_ctx(struct ctx_s *ctx, int stack_size, func_t f, void *args) {

	//Malloc de la pile d'exécution, vérification que tout se passe bien
	assert(ctx->ctx_ptr_malloc = malloc(stack_size));

	//assert OK

	//Stockage du "nombre magique"
	ctx->ctx_magic = MAGIC_NUMBER;

	//Stockage d'un pointeur sur la fonction f
	ctx->ctx_func = f;

	//Stockage d'un pointeur sur les arguments de la fonction f
	ctx->ctx_args = args;

	//Stockage du pointeur de base de pile, du pointeur de sommet de pile (même adresse que celui de base de pile)
	ctx->ctx_ebp = ctx->ctx_esp = (char *)ctx->ctx_ptr_malloc + stack_size - sizeof(void*);

	ctx->ctx_state = CTX_INIT;

	return 0;
}

void yield(void) {

	//Isolation de la section critique de code
	irq_disable();

	//Si la structure courante existe, on va switcher sur un suivant qui n'est pas terminé
	if (current_ctx) {
		struct ctx_s* tmp;
		//On va chercher le prochain contexte non-terminé, ne pointant pas sur nous-mêmes
		while (current_ctx -> next -> ctx_state == CTX_TERMINATED && current_ctx -> next != current_ctx) {
			tmp = current_ctx -> next;
			current_ctx -> next = current_ctx -> next -> next;
			free(tmp -> ctx_ptr_malloc);
			free(tmp);
		}
		//Switch_to sur le prochain contexte s'il n'est pas encore terminé
		if (current_ctx -> next -> ctx_state != CTX_TERMINATED) {
			switch_to_ctx(current_ctx -> next);
		}
		//Sinon, on pointe sur soi -> EXIT
		else {
			exit(EXIT_SUCCESS);
		}
	}
	//Si la structure courante n'existe pas, on switch directement sur le contexte pointé dans la pile ctxs
	else {
		if (current_ctx != NULL) {
			switch_to_ctx(current_ctx);
		}
	}

}

void switch_to_ctx(struct ctx_s *ctx) {

	//Vérification - current_ctx est-il initialisé?
	if(current_ctx) {

		/*
		==============================
		SAUVEGARDE DU CONTEXTE COURANT
		==============================
		*/

		asm("mov %%esp, %0"
			:"=r"(current_ctx->ctx_esp));

		asm("mov %%ebp, %0"
			:"=r"(current_ctx->ctx_ebp));

	}

	/*
	======================
	CHANGEMENT DE CONTEXTE
	======================
	*/
	current_ctx = ctx;

	assert(current_ctx->ctx_state != CTX_TERMINATED);

	assert(current_ctx->ctx_magic == MAGIC_NUMBER);

	/*
	============
	RESTAURATION
	============
	*/

	/*
	Restauration des registres
	*/
	asm("mov %0, %%esp"
		::"r"(current_ctx->ctx_esp));

	asm("mov %0, %%ebp"
		::"r"(current_ctx->ctx_ebp));

	/*
	Déclenchement des actions, en fonction de l'état du contexte
	*/
	switch(current_ctx->ctx_state) {

		/*Contexte initialisé*/
		case CTX_INIT:
			//Activation du contexte
			current_ctx->ctx_state = CTX_ACTIVATED;
			//Activation
			irq_enable();
			//Exécution de la fonction f
			(current_ctx->ctx_func)(current_ctx->ctx_args);
			//Après l'exécution de la fin par le contexte, on le nomme comme terminé
			current_ctx->ctx_state = CTX_TERMINATED;
			//Switch de contexte
			yield();
			assert(0);
		default:
			irq_enable();
			return;

	}
	exit(EXIT_FAILURE);

}
