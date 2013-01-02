/**
 * Airboat Control Firmware - Thruster
 *
 * Contains control and update code interfacing with the main thrust
 * motor of the vehicle.  This code runs a PWL open-loop attempting to 
 * reach a desired forward velocity.
 */
#ifndef THRUSTER_H
#define THRUSTER_H

#include "servo.h"
#include "meet_android.h"
#include <util/delay.h>

#define TBUFSIZE  100
#define TMIN  0
#define TMAX  32000

#define RECV_THRUSTER_DEG 't'
#define THRUSTER_UPDATE_INTERVAL_MS (100)

class Thruster
{
 public:
  Thruster(MeetAndroid * const a, Servo * const s);  
  ~Thruster();

  void arm(void);  
  void update(void);
  
 private:
  float tBuffer[TBUFSIZE];
  float tprevError;
  float tBufferSum;
  int tIndx;
  
  int send_thruster_cnt;
  
  Servo * const servo;
  MeetAndroid * const amarino;
};

#endif /* THRUSTER_H */
