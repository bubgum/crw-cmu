/*
  XMEGA serial library for use with avr-gcc.
  
  author:  Pras Velagapudi
  based on: http://blog.frankvh.com/2009/11/14/atmel-xmega-printf-howto/
*/

#ifndef SERIAL_H
#define	SERIAL_H

#include <stdio.h>
#include <avr/io.h>
    
// Tested baud rates
#define BAUD_9600    (12)
#define BAUD_115200  (50) // TODO: THIS IS JUST WRONG

struct SerialPort {
  USART_t uart;
  PORT_t port;
  int rxPin;
  int txPin;
};

//int uart_putchar(char c, FILE *stream);
//int uart_getchar(FILE *stream);

template <SerialPort &_serial>
  class Serial {
  
 private:
  FILE *_stream;
  
 public:  
  /**
   * Init USART.  Transmit only (we're not receiving anything) 
   * We use USARTC0, transmit pin on PC3.
   * Want 9600 baud. Have a 2 MHz clock. BSCALE = 0
   * BSEL = ( 2000000 / (2^0 * 16*9600)) -1 = 12
   * Fbaud = 2000000 / (2^0 * 16 * (12+1))  = 9615 bits/sec
   */
  Serial(unsigned int baud, bool isDefault = true) {
    
    // Set the TxD pin high and the RxD pin low
    _serial.port.OUTSET = _BV(_serial.txPin);
    _serial.port.OUTCLR = _BV(_serial.rxPin);
    
    // Set the TxD pin as an output and the RxD pin as an input
    _serial.port.DIRSET = _BV(_serial.txPin);
    _serial.port.DIRCLR = _BV(_serial.rxPin);
    
    // Set baud rate & frame format
    _serial.uart.BAUDCTRLB = 0; // BSCALE = 0
    _serial.uart.BAUDCTRLA = baud;
    
    // Set mode of operation
    // (async, no parity, 8 bit data, 1 stop bit)
    _serial.uart.CTRLA = 0; // no interrupts enabled
    _serial.uart.CTRLC = USART_CHSIZE_8BIT_gc | USART_PMODE_DISABLED_gc; 
    
    // Enable transmitter and receiver
    _serial.uart.CTRLB = USART_TXEN_bm | USART_RXEN_bm;
    
    // Connect up the transmit and receive functions to a serial stream
    _stream = fdevopen(uart_putchar, uart_getchar);

    // If specified, set as default IO stream
    if (isDefault) {
      stdout = _stream;
      stdin = _stream;
    }
  }

  ~Serial() {
    // Close the IO stream for this object
    fclose(_stream);

    // Set the TxD pin and the RxD pin low
    _serial.port.OUTCLR = _BV(_serial.txPin) | _BV(_serial.rxPin);
    
    // Set the TxD pin and the RxD pin as an input
    _serial.port.DIRCLR = _BV(_serial.txPin) | _BV(_serial.rxPin);
  }
  
  /**
   * Low-level function which puts a value into the
   * Tx buffer for transmission.  
   */
  static int uart_putchar(char c, FILE *stream) 
  {
    // Wait for the transmit buffer to be empty
    while ( !(_serial.uart.STATUS & USART_DREIF_bm) );
    
    // Put our character into the transmit buffer
    _serial.uart.DATA = c;
    
    // Wait for the transmission to complete
    while ( !(_serial.uart.STATUS & USART_TXCIF_bm) );
    _serial.uart.STATUS |= USART_TXCIF_bm;
    
    return 0;
  }

  /**
   * Low-level function which waits for the Rx buffer
   * to be filled, and then reads one character out of it.
   * Note that this function blocks on read - it will wait until
   * something fills the Rx buffer.
   */
  static int uart_getchar(FILE *stream)
  {
    // Wait for the receive buffer is filled
    while( !( _serial.uart.STATUS & USART_RXCIF_bm) );
  
    // Read the receive buffer
    return _serial.uart.DATA;
  }
  
  FILE *stream() 
  {
    return _stream;
  }

  bool available()
  {
    return (_serial.uart.STATUS & USART_TXCIF_bm);
  }
};

#endif	/* SERIAL_H */
