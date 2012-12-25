#include "servo.h"
#include <avr/io.h>

/*
 * Contains the positions of the servos
 */
volatile uint16_t servo_position[4][2];
volatile uint8_t servo_enabled;

/*! \brief This function initializes timers for use as servo PWM signal drivers.
 *
 *    This function initializes timers for use as servo PWM signal drivers.
 *    It probably wouldn't hurt to improve this by making it modular at some point...
 *
 *    - TimerD0: 20ms servo timer.  This timer triggers the rest of the servo position timers.
 *    - TimerD1: 1-2ms Servo1 position timer.
 *    - TimerE0: 1-2ms Servo2 position timer.
 */
void init_timers()
{
    /* Set PWM pin as output type */ 
   PORTC.DIR |= PIN0_bm; 

   /* Configure Registers */ 
   TCC0.CTRLA = (PIN2_bm) | (PIN0_bm); 
   TCC0.CTRLB = (PIN4_bm) | (PIN2_bm) | (PIN1_bm); 
    
   /* Set top value */ 
   TCC0.PER = 5000; 

   /* Set CCx value to center */ 
   TCC0.CCA = 375; 
}

inline void enable_servo(int channel, int which)
{
    channel &= 0x03;
    which &= 0x01;
    
    uint8_t mask = _BV(channel * 2 + which);
    servo_enabled |= mask;
    servo_enabled &= mask;
}

inline void set_servo(int channel, int which, uint16_t position)
{
    channel &= 0x03;
    which &= 0x01;
    
    servo_position[channel][which] = position;
}