
#ifndef _HW_H_
#define _HW_H_

typedef void (irq_handler_func_t)(void);

/**
Interruption - remontée périodiquement du matériel
*/
#define TIMER_IRQ	2

/**
Association de la fonction handler à l'interruption irq
*/
void setup_irq(unsigned int irq, irq_handler_func_t handler);
/**
Fonction permettant de démarrer la librairie d'émulation
*/
void start_hw();

/**
Tout désactiver
*/
void irq_disable();

/**
Tout activer
*/
void irq_enable();

#endif
