/**
 * Airboat Control Firmware - Monitor Instruments Spectrometer
 *
 * Contains control and update code interfacing with a
 * Monitor Instruments mass spectrometer. The data is directly
 * forwarded over serial.
 */
#ifndef MONITOR_SENSOR_H
#define MONITOR_SENSOR_H

#include "sensor.h"
#include "serial.h" 

#include <stdio.h>
#include <string.h>

// Define the char code for the Amarino callback
#define RECV_MONITOR_FN 'm'

#define SERIAL_BUFFER_SIZE 160

struct MonitorConfig
{
  PORT_t * const pwr_port;
  const uint8_t pwr_pin;
};

template<const MonitorConfig &_monitorConfig, const SerialConfig &_serialConfig>
class MonitorSensor : public Sensor
{
 public:
 MonitorSensor(MeetAndroid * const a) 
   : serial(BAUD_38400), stream(serial.stream()), 
    amarino(a), serialIndex(0) { 

    // Power up the sensor                                                     
    //_monitorConfig.pwr_port->OUTSET = _BV(_monitorConfig.pwr_pin);
    //_monitorConfig.pwr_port->DIRSET = _BV(_monitorConfig.pwr_pin);

    // Wait until it has powered up                                            
    _delay_ms(1000);
  }

  ~MonitorSensor() { 

    // Power down the sensor                                                   
    //_monitorConfig.pwr_port->OUTCLR = _BV(_monitorConfig.pwr_pin);
    //_monitorConfig.pwr_port->DIRCLR = _BV(_monitorConfig.pwr_pin);
  }

  void loop() {
    
    // Get bytes from serial buffer
    while (serial.available()) {
      char c = fgetc(stream);
      serialBuffer[serialIndex++] = c;
      
      // Parse if we receive end-of-line characters
      if (c == '\r' || c == '\n' || serialIndex >= SERIAL_BUFFER_SIZE) {

	// Check if it is a valid reading
	if ((serialIndex > 6) && (!strncmp(serialBuffer, "$SDDBT", 6)) && (nmeaChecksum(serialBuffer))) {

	  // Send parsed reading to server
	  amarino->send(RECV_MONITOR_FN);
	  amarino->send(parseSERIAL(serialBuffer));
	  amarino->sendln();
	} 

	// Clear out existing buffer
	clearSERIAL();
      }
    }
  }

  void update() { }

 private:
  SerialHW<_serialConfig> serial;
  FILE * const stream;
  MeetAndroid * const amarino;

  char serialBuffer[SERIAL_BUFFER_SIZE+1];
  uint8_t serialIndex;
  
  // Parses the NMEA string to just the depth in meters.
  static char* parseSERIAL(char* depth) {

    // Null-terminate the string after the depth reading
    depth[22] = '\0';
    return &depth[16];
  }

  // Calculate nmea checksum and return if it is correct or not
  static bool nmeaChecksum(const char *depth) {
    char checksum = 0;
    char cs[3];

    const char *indx = depth + 1;
    for (int i = 1; i < 33; i++, indx++)
      checksum ^= *indx;
    
    sprintf(cs, "%02X", checksum);
    return (!strncmp(cs, &depth[34], 2));
  }

  void clearSERIAL(void)
  {
    memset(serialBuffer, 0, SERIAL_BUFFER_SIZE);
    serialIndex = 0;
  }
};

#endif /* MONITOR_SENSOR_H */
