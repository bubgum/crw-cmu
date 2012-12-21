/*
  XMEGA serial library for use with avr-gcc.
  
  author:  Pras Velagapudi
  based on: http://blog.frankvh.com/2009/11/14/atmel-xmega-printf-howto/
*/

#ifndef SERIAL_H
#define	SERIAL_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdio.h>
    
// Tested baud rates
#define BAUD_9600    (12)
#define BAUD_115200  (50) // TODO: THIS IS JUST WRONG
    
// Provide references to sensor streams
// TODO: rename these streams with better namespace
FILE bluetooth;
FILE sensor1;
FILE sensor2;
FILE sensor3;
FILE sensor4;

// Function descriptions are available in serial.c
void init_serial();
int uart_putchar(char c, FILE *stream);
int uart_getchar(FILE *stream);

#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_H */
