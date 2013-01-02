#include "thruster.h"

struct pidConstants_t { float Kp[6], Ki[6], Kd[6]; };

extern float desiredVelocity[];
extern float actualVelocity[];
extern pidConstants_t pid;

Thruster::Thruster(MeetAndroid * const a, Servo * const s)
  : tIndx(0), servo(s), amarino(a)
{
  for (int i = 0; i < 100; i++)
    tBuffer[i] = 0;
}

Thruster::~Thruster() { }

void Thruster::arm(void)
{
  servo->set(32000);
  _delay_ms(5000);

  servo->set(-32000);
  _delay_ms(3000);

  servo->set(0);
  _delay_ms(8000);
}

void Thruster::update(void)
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

  servo->set(tPID);

  send_thruster_cnt++;

  if (send_thruster_cnt > 11) {
    amarino->send(RECV_THRUSTER_DEG);
    amarino->send(tPID);
    amarino->sendln();

    send_thruster_cnt = 0;
  }
}

