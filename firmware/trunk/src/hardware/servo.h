/* 
 * File:   servo.h
 * Author: Pras Velagapudi
 *
 * Created on December 21, 2012, 10:17 AM
 * This code is adapted from the sample code at:
 * http://bradsprojects.wordpress.com/2010/05/03/servo-control-with-an-xmega/
 */

#ifndef SERVO_H
#define	SERVO_H

#include <inttypes.h>

#define MIN_PULSE_WIDTH_US       544L    // the shortest pulse sent to a servo 
#define MAX_PULSE_WIDTH_US      2400L    // the longest pulse sent to a servo 
#define DEFAULT_PULSE_WIDTH_US  1500L    // default pulse width when servo is attached
#define REFRESH_INTERVAL_US    20000L    // minimum time to refresh servos
#define SCALE_FACTOR           (65535L / (MAX_PULSE_WIDTH_US - MIN_PULSE_WIDTH_US))

struct ServoConfig
{
  TC0_t timer;
  PORT_t port;
  int pin;
};

template<ServoConfig &_config>
class Servo
{
 public:
  Servo() {
    // Set up the timer
    _config.timer.CNT = 0;
    _config.timer.PER = REFRESH_INTERVAL_US;
    _config.timer.CTRLA = 0; // TODO: figure out what I actually am
    _config.timer.CTRLB = 0; // TODO: figure out what I actually am
    // TODO: we want ~100khz, or 1us ticks, should be CLOCK/20-ish

    // Initialize the timer to the default position
    _position = DEFAULT_PULSE_WIDTH_US;
    update(_position);

    // Set up the timer pin as an output
    _config.port.OUTCLR = _BV(_config.pin);
    _config.port.DIRSET = _BV(_config.pin);

    // Start the timer
    _config.timer.CTRLA |= 0x04;
  }

  ~Servo() {
    // Set up the timer pin as an input
    _config.port.OUTCLR = _BV(_config.pin);
    _config.port.DIRCLR = _BV(_config.pin);

    // Disable the timer
    _config.timer.CTRLA = 0;
  }

  void set(uint16_t position)
  {
    _position = position / SCALE_FACTOR;
    update(_position);
  }

  int get()
  {
    return _position * SCALE_FACTOR;
  }

  void setRaw(uint16_t position)
  {
    // Do valid bounds checking/clipping
    if (position > MAX_PULSE_WIDTH_US)
      position = MAX_PULSE_WIDTH_US;
    if (position < MIN_PULSE_WIDTH_US)
      position = MIN_PULSE_WIDTH_US;

    // Set to unscaled position in pulse width
    _position = position;
    update(_position);
  }

  int getRaw()
  {
    return _position;
  }
  
 private:
  volatile uint16_t _position;

  static void update(uint16_t position)
  {
    // Configure the timer period to match the servo setting
    _config.timer.CCA = position; // TODO: CHECK THIS IS CORRECT
  }
};

#endif	/* SERVO_H */

