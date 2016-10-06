
#ifndef INIT_CTX

#define INIT_CTX

#define MAGIC 0xDEADFEEF

/*
D�finition du type func_t
*/
typedef void (func_t) (void*);

/*
Enum�ration de l'�tat de la structure sauvant le contexte d'ex�cution
@enum CTX_READY Enum permettant de d�crire que le contexte vient d'�tre initialis� - la fonction prise en compte dans le contexte n'a donc pas encore �t� appel�e!
@enum CTX_ACTIVATED Enum permettant de d�crire que le contexte est activ�
*/
enum ctx_state_e { CTX_READY, CTX_ACTIVATED };

/*
D�finition de la structure ctx_s, nous servant � m�moriser un contexte d'ex�cution
@param ctx_magic Champ permettant de stocker un entier d�finitif, permettant au d�veloppeur de se rendre compte d'une corruption m�moire
@param ebp Champ permettant de stocker le pointeur de base de pile
@param esp Champ permettant de stocker le pointeur de sommet de pile
@param f Champ permettant de stocker la fonction ex�cut�e pour un contexte
@param args Champ permettant de stocker tous les arguments de la fonction contenue dans le champ f
@param stack Champ permettant de stocker l'adresse rendue par le malloc sauvant une pile d'ex�cution
*/
struct ctx_s
{

	void* ebp;
	void* esp;
	func_t *f;
	unsigned char* stack;
	unsigned int ctx_magic;
	enum ctx_state_e state;
	void* args;
};

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

#endif
