/*
  XMEGA serial library for use with EMG.
  
  author:  Pras Velagapudi
  based on: http://blog.frankvh.com/2009/11/14/atmel-xmega-printf-howto/
*/

#include <serial.h>
#include <avr/io.h>

// Define stdout as the serial0 stream
FILE stdio0 = FDEV_SETUP_STREAM(uart_putchar, uart_getchar, _FDEV_SETUP_RW);

/**
 * Init USART.  Transmit only (we're not receiving anything) 
 * We use USARTC0, transmit pin on PC3.
 * Want 9600 baud. Have a 2 MHz clock. BSCALE = 0
 * BSEL = ( 2000000 / (2^0 * 16*9600)) -1 = 12
 * Fbaud = 2000000 / (2^0 * 16 * (12+1))  = 9615 bits/sec
 */
void init_serial(unsigned int baud)
{
  // Set the TxD pin high and the RxD pin low
  PORTC.OUTSET = PIN3_bm;
  PORTC.OUTCLR = PIN2_bm;
 
  // Set the TxD pin as an output and the RxD pin as an input
  PORTC.DIRSET = PIN3_bm;
  PORTC.DIRCLR = PIN2_bm;
 
  // Set baud rate & frame format
  USARTC0.BAUDCTRLB = 0; // BSCALE = 0
  USARTC0.BAUDCTRLA = baud;
 
  // Set mode of operation
  // (async, no parity, 8 bit data, 1 stop bit)
  USARTC0.CTRLA = 0; // no interrupts enabled
  USARTC0.CTRLC = USART_CHSIZE_8BIT_gc | USART_PMODE_DISABLED_gc; 
 
  // Enable transmitter and receiver
  USARTC0.CTRLB = USART_TXEN_bm | USART_RXEN_bm;

  // Define default serial port to be this one
  stdout = &stdio0;
  stdin = &stdio0;

  // Set up transmit/receive pin for RS485
  PORTC.DIRSET = PIN1_bm;
}

/**
 * Low-level function which puts a value into the
 * Tx buffer for transmission.  Automatically injects
 * a \r before all \n's
 */
int uart_putchar(char c, FILE *stream)
{
  if (c == '\n')
    uart_putchar('\r', stream);
  
  // Wait for the transmit buffer to be empty
  while ( !( USARTC0.STATUS & USART_DREIF_bm) );
  
  // Enable TX
  USARTC0.CTRLB &= ~(USART_RXEN_bm);
  PORTC.OUTSET = PIN1_bm;

  // Put our character into the transmit buffer
  USARTC0.DATA = c;

  // Wait for the transmission to complete
  while ( !( USARTC0.STATUS & USART_TXCIF_bm) );
  USARTC0.STATUS |= USART_TXCIF_bm;

  // Disable TX
  PORTC.OUTCLR = PIN1_bm;
  USARTC0.CTRLB |= USART_RXEN_bm;
  
  return 0;
}

/**
 * Low-level function which waits for the Rx buffer
 * to be filled, and then reads one character out of it.
 * Note that this function blocks on read - it will wait until
 * something fills the Rx buffer.
 */
int uart_getchar(FILE *stream)
{
  // Wait for the receive buffer is filled
  while( !( USARTC0.STATUS & USART_RXCIF_bm) );
  
  // Read the receive buffer
  return USARTC0.DATA;
}




