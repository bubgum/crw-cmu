/*
  XMEGA serial library for use with avr-gcc.
  
  author:  Pras Velagapudi
  based on: http://blog.frankvh.com/2009/11/14/atmel-xmega-printf-howto/
*/
#ifndef __SERIAL_H__
#define __SERIAL_H__

#include <stdio.h>

// Tested baud rates
#define BAUD_9600    (12)
#define BAUD_115200  (50) // THIS IS JUST WRONG

// Function descriptions are available in serial.c
void init_serial(unsigned int baud);
int uart_putchar(char c, FILE *stream);
int uart_getchar(FILE *stream);

#endif //__SERIAL_H__
