
/*
Structure permettant de sauver toutes les informations de la pile d'exécution en cours, à un instant T
*/
static struct ctx_s* current_ctx;

/*
Fonction permettant de sauver et restaurer des contextes
@param *ctx Pointeur vers une structure de contexte - contexte à restaurer
*/
void switch_to_ctx(struct ctx_s *ctx);
