#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "init_ctx.h"

int init_ctx(struct ctx_s *ctx, int stack_size, func_t f, void *args) {

	//Malloc de la pile d'exécution, vérification que tout se passe bien
	ctx->stack = malloc(stack_size);

     if (ctx ->stack == NULL)
    {
       return 0;
     }

	ctx->state = CTX_READY;

	//Stockage du "nombre magique"
	ctx->ctx_magic = MAGIC;

	//Stockage d'un pointeur sur la fonction f
	ctx->f = f;

	//Stockage d'un pointeur sur les arguments de la fonction f
	ctx->args = args;

	//Stockage du pointeur de base de pile, du pointeur de sommet de pile (même adresse que celui de base de pile)

	ctx->ebp= &ctx->stack[stack_size-4];
	ctx->esp= &ctx->stack[stack_size-4];


	return 1;
}
