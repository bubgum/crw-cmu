/* 
 * File:   led.h
 * Author: pkv
 *
 * Created on December 21, 2012, 12:31 AM
 */

#ifndef LED_H
#define	LED_H

#ifdef	__cplusplus
extern "C" {
#endif

void init_led(void);
inline void led_on(void);
inline void led_off(void);

#ifdef	__cplusplus
}
#endif

#endif	/* LED_H */

