TP-mémoire virtuale 
-------------------------------------------------------------------




Question 1   Décrivez le comportement du programme suivant :

    static void 
    mmuhandler() //message derreur 
    {
        printf("tentative d’accès illégal à l’adresse %p\n", 
               _in(MMU_FAULT_ADDR));
    }

    int 
    main(int argc, char **argv) 
    {
        char *ptr; 

        ... /* init_hardware() */
        IRQVECTOR[MMU_IRQ] = mmuhandler; //il va cherche dans la memoire le message d'erreur 
        _mask(1); // masque qui veut dire activer l'inturruption 

        ptr = (char*)0; // pointeur nulle qui pointe vere rien  
        *ptr = 'c';
    }

