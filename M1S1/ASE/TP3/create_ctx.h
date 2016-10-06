#ifndef CREATE_CTX

#define CREATE_CTX

#define MAGIC_NUMBER 0xDEADBEEF

/*
D�finition du type func_t
@param param Un param�tre de type void*
*/
typedef void (func_t) (void* param);

/*
Enum�ration de l'�tat de la structure sauvant le contexte d'ex�cution
@enum CTX_INIT Enum permettant de d�crire que le contexte vient d'�tre initialis� - la fonction prise en compte dans le contexte n'a donc pas encore �t� appel�e!
@enum CTX_ACTIVATED Enum permettant de d�crire que le contexte est activ�
*/
enum ctx_state_e { CTX_INIT, CTX_ACTIVATED, CTX_TERMINATED };

/*
D�finition de la structure ctx_s, nous servant � m�moriser un contexte d'ex�cution
@param ctx_magic Champ permettant de stocker un entier d�finitif, permettant au d�veloppeur de se rendre compte d'une corruption m�moire
@param ctx_ebp Champ permettant de stocker le pointeur de base de pile
@param ctx_esp Champ permettant de stocker le pointeur de sommet de pile
@param ctx_func Champ permettant de stocker la fonction ex�cut�e pour un contexte
@param ctx_args Champ permettant de stocker tous les arguments de la fonction contenue dans le champ ctx_func
@param ctx_ptr_malloc Champ permettant de stocker l'adresse rendue par le malloc sauvant une pile d'ex�cution
@param ctx_next Champ permettant de stocker le prochain contexte � activer
*/
struct ctx_s
{
	unsigned int ctx_magic;
	void* ebp;
	void* esp;
	func_t *f;
	void* args;
	void* ctx_ptr_malloc;
	enum ctx_state_e state;
	struct ctx_s* next;
	unsigned char* stack;
};
/*
Variable globale permettant de sauver la liste des contextes
*/
static struct ctx_s* ctxs = NULL;

/*
Structure permettant de sauver toutes les informations de la pile d'ex�cution en cours, � un instant T
*/
static struct ctx_s* current_ctx = NULL;

/*
Fonction permettant d'initialiser un contexte d'ex�cution
@param *ctx Un pointeur vers une structure de type ctx_s, servant � sauver toutes les informations dans celui-ci
@param stack_size La taille de la pile que l'on veut alouer via le malloc
@param f La fonction � ex�cuter lors de l'initialisation du contexte
@param args Les arguments � prendre en compte, pour la fonction f
@return 0 si tout s'est bien pass�
@return EXIT_FAILURE si le malloc s'est mal pass� (voir la fonction C 'assert')
*/
int init_ctx(struct ctx_s *ctx, int stack_size, func_t f, void *args);


/**
Fonction ajoutant l'allocation dynamique de contexte dans une liste pr�-�tablie
Cette fonction se fera en phase:
	1 _ Demande d'allocation m�moire contenant la structure
	2 _ Initialisation de la structure (du contexte)
	3 _ Ajout dans la liste de contextes
@param stack_size Taille de la pile
@param f La fonction donn�e, pour une ex�cution de contexte
@param args Les arguments de la fonction f
*/
int create_ctx(int stack_size, func_t f, void* args);

/**
Cette fonction permettra au contexte courant de passer la main au contexte suivant, point� par le courant (d�termin� par l'ordonnancement)
*/
void yield(void);

/*
Fonction permettant de sauver et restaurer des contextes
@param *ctx Pointeur vers une structure de contexte - contexte � restaurer
*/
void switch_to_ctx(struct ctx_s *ctx);

#endif
