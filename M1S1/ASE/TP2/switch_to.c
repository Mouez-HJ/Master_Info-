#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "init_ctx.h"
#include "switch_to.h"

void switch_to_ctx(struct ctx_s *ctx) {

	//Vérification - current_ctx est-il initialisé?

	if(!current_ctx)
		current_ctx = ctx;

        assert (ctx!=NULL);
	    assert(current_ctx->ctx_magic == MAGIC);
	    //assert (ctx->state==CTX_READY);
        //assert (ctx->state==CTX_ACTIVATED);
	/*
	SAUVEGARDE DU CONTEXTE COURANT
	*/
	if (current_ctx != NULL)
    {

        asm("mov %%esp, %0"
		:"=r"(current_ctx->esp));

	    asm("mov %%ebp, %0"
		:"=r"(current_ctx->ebp));
	}

	/*
	CHANGEMENT DE CONTEXTE
	*/

	current_ctx = ctx;

	/*
	RESTAURATION DES REGISTRES
	*/

	asm("mov %0, %%esp"
		::"r"(current_ctx->esp));

	asm("mov %0, %%ebp"
		::"r"(current_ctx->ebp));

	/*
       TESTER L'ETAT DU CONTEXTE ET DECLENCHEMENT DES ACTIONS
	*/

     if (current_ctx->state==CTX_READY)
    {

    exec_f(current_ctx);
    }
}

    void exec_f(struct ctx_s ctx){

    current_ctx->state=CTX_ACTIVATED ;
    current_ctx->f(current_ctx->args);
    printf("Merci");
    while(1);

    }








