/*
 * Board configuration file for Rev A of the Platypus control board.
 *
 * author: Pras Velagapudi <pras@senseplatypus.com>
 */

#ifndef F_CPU
#define F_CPU 32000000UL
#endif /* F_CPU */

#include "led.h"
#include "serial.h"
#include "servo.h"
#include "task.h"

#warning Set up board configuration with correct port values!

// Configure the LED on the board
LedConfig UserLed = { &PORTC, PIN5, true };

// Serial configurations for external and bluetooth ports
SerialConfig SerialBluetooth = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME
SerialConfig SerialExternal = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME

// Serial configurations for each sensor port
SerialConfig Serial1 = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME
SerialConfig Serial2 = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME
SerialConfig Serial3 = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME
SerialConfig Serial4 = { USARTC0, PORTC, PIN2, PIN3 }; // TODO: FIXME

// Servo PWM configurations for each sensor port
ServoConfig Servo1 = { TCC0, PORTC, PIN4 }; // TODO: FIXME
ServoConfig Servo2 = { TCC0, PORTC, PIN4 }; // TODO: FIXME
ServoConfig Servo3 = { TCC0, PORTC, PIN4 }; // TODO: FIXME
ServoConfig Servo4 = { TCC0, PORTC, PIN4 }; // TODO: FIXME

// Set up general purpose task timer
TaskConfig UserTask = { TCC0 }; // TODO: FIXME

// Helper function to change to high-speed clock
void setClockTo32MHz() 
{
  CCP = CCP_IOREG_gc;              // disable register security for oscillator update
  OSC.CTRL = OSC_RC32MEN_bm;       // enable 32MHz oscillator
  while(!(OSC.STATUS & OSC_RC32MRDY_bm)); // wait for oscillator to be ready
  CCP = CCP_IOREG_gc;              // disable register security for clock update
  CLK.CTRL = CLK_SCLKSEL_RC32M_gc; // switch to 32MHz clock
}

// Startup function for basic board functionality
void initBoard()
{
  setClockTo32MHz();
}
