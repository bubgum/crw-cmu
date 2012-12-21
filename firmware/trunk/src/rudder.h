/* 
 * File:   rudder.h
 * Author: pkv
 *
 * Created on December 21, 2012, 10:34 AM
 */

#ifndef RUDDER_H
#define	RUDDER_H

#ifdef	__cplusplus
extern "C" {
#endif

#define RUDDER_SERVO_CHANNEL 0
#define RUDDER_SERVO_WHICH 0
#define RUDDER_UPDATE_INTERVAL_MS 100
    
void initRudder();
void updateRudder();

#ifdef	__cplusplus
}
#endif

#endif	/* RUDDER_H */

