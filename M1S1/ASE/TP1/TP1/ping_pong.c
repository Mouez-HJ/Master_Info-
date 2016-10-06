
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "init_ctx.h"
#include "switch_to.h"

struct ctx_s ctx_ping;
struct ctx_s ctx_pong;

void ping(void *args) {

	while(1) {
		printf("A");
		switch_to_ctx(&ctx_pong);
		printf("B");
		switch_to_ctx(&ctx_pong);
	}

}

void pong(void *args) {

	while(1) {
		printf("1");
		switch_to_ctx(&ctx_ping);
		printf("2");
		switch_to_ctx(&ctx_ping);
	}

}

int main(int argc, char *argv[]) {

	current_ctx = &ctx_ping;

	init_ctx(&ctx_ping, 16384, ping, NULL);
	init_ctx(&ctx_pong, 16384, pong, NULL);
	switch_to_ctx(&ctx_ping);

	exit(EXIT_SUCCESS);

}
