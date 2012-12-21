/* 
 * File:   servo.h
 * Author: pkv
 *
 * Created on December 21, 2012, 10:17 AM
 * This code is adapted from the sample code at:
 * http://bradsprojects.wordpress.com/2010/05/03/servo-control-with-an-xmega/
 */

#ifndef SERVO_H
#define	SERVO_H

#include <inttypes.h>

void init_servos(void);
void enable_servo(int channel, int which);
void set_servo(int channel, int which, uint16_t position);

#endif	/* SERVO_H */

