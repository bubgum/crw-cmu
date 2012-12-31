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
#define TMAX  1000

#define RECV_THRUSTER_DEG 't'
#define THRUSTER_UPDATE_INTERVAL_MS (100)

extern float desiredVelocity[];
extern float actualVelocity[];
extern pidConstants_t pid;

template<ServoConfig &_config>
class Thruster
{
 public:
 Thruster(MeetAndroid *tAmarino)
   : tIndx(0), servo(), amarino(tAmarino)
  {
    for (int i = 0; i < 100; i++)
      tBuffer[i] = 0;
  }
  
  ~Thruster() { }

  void arm(void)
  {  
    servo.set(-1000);  
    _delay_ms(1000);
    
    servo.set(1000); 
    _delay_ms(1000);
    
    servo.set(-1000);  
    _delay_ms(1000);
  }
  
  void update(void)
  { 
    float tError = desiredVelocity[0] - actualVelocity[0];
    
    tIndx++;
    if (tIndx >= TBUFSIZE)
      tIndx = 0;

    tBufferSum -= tBuffer[tIndx];
    tBufferSum += tError;
    tBuffer[tIndx] = tError;
    
    float tPID = (pid.Kp[0] * tError) + (pid.Kd[0] * ((tError - tprevError)/(THRUSTER_UPDATE_INTERVAL_MS))) + (pid.Ki[0] * tBufferSum);
    tprevError = tError;
    
    if (tPID < TMIN) 
      tPID = TMIN;
    if (tPID > TMAX)
      tPID = TMAX;
    
    servo.set(tPID);
    
    send_thruster_cnt++;
    
    if (send_thruster_cnt > 11) {
      amarino->send(RECV_THRUSTER_DEG);
      amarino->send(tPID);
      amarino->sendln();
      
      send_thruster_cnt = 0;
    }
  }
  
 private:
  float tBuffer[TBUFSIZE];
  float tprevError;
  float tBufferSum;
  int tIndx;
  
  int send_thruster_cnt;
  
  Servo<_config> servo;
  MeetAndroid *amarino;
};

#endif /* THRUSTER_H */
