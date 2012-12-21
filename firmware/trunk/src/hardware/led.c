#include "led.h"

#include <avr/io.h>

#define LEDPORT PORTC
#define LEDPIN PIN5_bm

void init_led(void) 
{
  LEDPORT.DIRSET = LEDPIN;
}

inline void led_on(void) 
{
  LEDPORT.OUTSET = LEDPIN | PIN7_bm | PIN3_bm;
}

inline void led_off(void) 
{
  LEDPORT.OUTCLR = LEDPIN | PIN7_bm | PIN3_bm;
}
