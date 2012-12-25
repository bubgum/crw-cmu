/*
 * Board configuration file for Rev A of the Platypus control board.
 *
 * author: Pras Velagapudi <pras@senseplatypus.com>
 */

#include "led.h"
#include "serial.h"

#warning Set up board configuration with correct port values!

// Configure the LED on the board
LedConfig UserLed = { PORTC, PIN5, true };

// Serial configurations for external and bluetooth ports
SerialConfig SerialBluetooth = { USARTC0, PORTC, PIN2, PIN3 };
SerialConfig SerialExternal = { USARTC0, PORTC, PIN2, PIN3 };

// Serial configurations for each sensor port
SerialConfig Serial1 = { USARTC0, PORTC, PIN2, PIN3 };
SerialConfig Serial2 = { USARTC0, PORTC, PIN2, PIN3 };
SerialConfig Serial3 = { USARTC0, PORTC, PIN2, PIN3 };
SerialConfig Serial4 = { USARTC0, PORTC, PIN2, PIN3 };

