#ifndef DO_SENSOR_H
#define DO_SENSOR_H

#include "serial.h"
#include <string.h>

#define RECV_DO_FN 'o'

template<const SerialConfig &_config>
class DOSensor
{
  char doReading[5];
  std::string sensorstring = "";
  
  Serial<_config> serial;
  FILE *stream;
  MeetAndroid *amarino;

 DOSensor(MeetAndroid *a) : serial(BAUD_38400) {  
    stream = serial.stream();
    amarino = a;

    // The command "C" will tell the stamp to take continues readings
    fputs("\rC\r", stream);
  }

  ~DOSensor() { }

  void update() {
    while (serial.available()) {       
      char inchar = fgetc(stream);  // Get the char we just received
      sensorstring += inchar;       // Add it to the inputString
      
      if (inchar == '\r') {         // if a string from the Atlas Scientific product has been received in its entirety
	sensorstring.toCharArray(doReading, 5);
	amarino->send(RECV_DO_FN);
	amarino->send(doReading);
	amarino->sendln();
	sensorstring = "";
	break;
      }
    } 
  }
}

#endif /* DO_SENSOR_H */
