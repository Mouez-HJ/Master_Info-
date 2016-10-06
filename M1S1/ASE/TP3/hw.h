
#ifndef _HW_H_
#define _HW_H_

typedef void (irq_handler_func_t)(void);

/**
Interruption - remont�e p�riodiquement du mat�riel
*/
#define TIMER_IRQ	2

/**
Association de la fonction handler � l'interruption irq
*/
void setup_irq(unsigned int irq, irq_handler_func_t handler);
/**
Fonction permettant de d�marrer la librairie d'�mulation
*/
void start_hw();

/**
Tout d�sactiver
*/
void irq_disable();

/**
Tout activer
*/
void irq_enable();

#endif
