
/*
Structure permettant de sauver toutes les informations de la pile d'ex�cution en cours, � un instant T
*/
static struct ctx_s* current_ctx;

/*
Fonction permettant de sauver et restaurer des contextes
@param *ctx Pointeur vers une structure de contexte - contexte � restaurer
*/
void switch_to_ctx(struct ctx_s *ctx);
