/**
 * Airboat Control Firmware - Depth
 *
 * Contains control and update code interfacing with an ATU200S
 * depth sonar.  The data is directly forwarded over serial.
 */
#ifndef DEPTH_SENSOR_H
#define DEPTH_SENSOR_H

#include "serial.h" 

#include <stdio.h>
#include <string.h>

// Define the char code for the Amarino callback
#define RECV_DEPTH_FN 'd'

template<const SerialConfig &_config>
class DepthSensor 
{
 private:
  std::string nmeaSample;
  char nmeaBuffer[36];

  SerialHW<_config> serial;
  FILE * const stream;
  MeetAndroid * const amarino;
  
 DepthSensor(MeetAndroid * const a) : 
  serial(BAUD_4800), stream(serial.stream()), amarino(a) { }

  ~DepthSensor() { }
  
  // Parses the NMEA string to just the depth in meters.
  char* parseNMEA(const String& depth) {
    depth.substring(16,22).toCharArray(nmeaBuffer, 36);
    return nmeaBuffer;
  }

  // Calculate nmea checksum and return if it is correct or not
  bool nmeaChecksum(String& depth) {
    char checksum = 0;
    char buf[36], cs[2], ccs[2];
    String strcs; 
    
    depth.toCharArray(nmeaBuffer, 36);
    char *indx = &nmeaBuffer[1];
    
    for (int i = 1; i < 33; i++, indx++)
      checksum ^= *indx;
    
    sprintf(cs, "%02x",checksum);
    
    strcs = depth.substring(34);
    strcs.toCharArray(ccs, 2);
    
    return (strcmp(cs, ccs));
  }

  // Wrapper function that will start a sensor reading
  void update() {
    
    // Get bytes from serial buffer
    while (serial.available()) {
      char c = fgetc(stream);
      nmeaSample += c;
      
      // Parse if we receive end-of-line characters
      if (c == '\r' || c == '\n' || nmeaSample.length() > 40)
	{
	  // Check if it is a valid reading
	  if ((nmeaSample.length() > 6) && (nmeaSample.substring(0,6) == "$SDDBT") && (nmeaChecksum(nmeaSample))) 
	    {
	      amarino->send(RECV_DEPTH_FN);
	      amarino->send(parseNMEA(nmeaSample));
	      amarino->sendln();
	    } 
	  nmeaSample = "";
	}
    }
  }
};

#endif /* DEPTH_SENSOR_H */
