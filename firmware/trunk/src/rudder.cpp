#include "rudder.h"

struct pidConstants_t { float Kp[6], Ki[6], Kd[6]; };

extern float desiredVelocity[];
extern float actualVelocity[];
extern pidConstants_t pid;

Rudder::Rudder(MeetAndroid * const a, Servo * const s) 
  : rIndx(0), servo(s), amarino(a)
{
  for (int i = 0; i < 100; i++)
    rBuffer[i] = 0;
}

Rudder::~Rudder() { }

void Rudder::update(void)
{
  float rError = desiredVelocity[5] - actualVelocity[5];
  
  rIndx++;
  if (rIndx == RBUFSIZE)
    rIndx = 0;
  
  rBufferSum -= rBuffer[rIndx];
  rBufferSum += rError;
  rBuffer[rIndx] = rError;
  
  float rPID = (pid.Kp[5] * rError) + (pid.Kd[5] * ((rError - rprevError) / (RUDDER_UPDATE_INTERVAL_MS))) + (pid.Ki[5] * rBufferSum);
  rprevError = rError;
  
  if (rPID < RMIN)
    rPID = RMIN;
  if (rPID > RMAX)
    rPID = RMAX;
  servo->set(rPID);
  
  send_pos_cnt++;
  
  if (send_pos_cnt > 10) {
    amarino->send(RECV_RUDDER_POS);
    amarino->send(pos);
    amarino->sendln();
    
    send_pos_cnt = 0;
  }
}
