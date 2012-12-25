/*
  XMEGA serial library for use with EMG.
  
  author:  Pras Velagapudi
  based on: http://blog.frankvh.com/2009/11/14/atmel-xmega-printf-howto/
*/

#include <serial.h>
#include <avr/io.h>

SerialPort SerialBluetooth = { USARTC0, PORTC, 2, 3 };
SerialPort SerialExternal = { USARTC0, PORTC, 2, 3 };

SerialPort Serial1 = { USARTC0, PORTC, 2, 3 };
SerialPort Serial2 = { USARTC0, PORTC, 2, 3 };
SerialPort Serial3 = { USARTC0, PORTC, 2, 3 };
SerialPort Serial4 = { USARTC0, PORTC, 2, 3 };

Serial<Serial1> debugSerial(BAUD_9600, true);




