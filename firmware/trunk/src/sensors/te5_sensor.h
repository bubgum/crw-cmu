/**
 * 5TE Sensor - EC, Water, Temperature
 *
 * Contains control and update code interfacing with an 5TE sensor
 *
 */
#ifndef TE5_SENSOR_H
#define TE5_SENSOR_H

#include "meet_android.h"
#include <stdio.h>
#include <util/delay.h>

// Define the char code for the Amarino callback
#define RECV_TE_FN 's'

#define TE_BUFFER_SIZE (32)

// Take measurements every n-th time update is called
#define TE_SENSOR_INTERVAL (10)

// Define the pins used to interface with the sensor
struct TE5Config
{
  PORT_t * const pwr_port;
  const uint8_t pwr_pin;
  PORT_t * const rx_port;
  const uint8_t rx_pin;
};


template<const TE5Config &_teConfig, const SerialConfig &_serialConfig>
class TE5Sensor
{
 private:
  SerialHW<_serialConfig> serial;
  FILE *stream;
  MeetAndroid *amarino;

  char teReading[TE_BUFFER_SIZE + 1];
  uint8_t teIndex;
  uint8_t crc;
  int teCount;

  volatile bool isReading;
  bool wasInitialized;
  bool messageIsDone;

 public:
 TE5Sensor(MeetAndroid * const a) 
   : serial(BAUD_1200), stream(serial.stream()), amarino(a), teCount(0) {
  
    // Turn off sensor
    _teConfig.rx_port->DIRCLR = _BV(_teConfig.rx_pin);
    _teConfig.pwr_port->OUTCLR = _BV(_teConfig.pwr_pin);
    _teConfig.pwr_port->DIRSET = _BV(_teConfig.pwr_pin);
  }

  // Converts from raw 5TE sensor value to a floating point in Celsius.
  float toTemp(const int &rawTemp) {
    return (float)(rawTemp - 400)/10.0;
  }
  
  // Converts from raw 5TE sensor value to a floating point mS/cm (dS/m).
  float toConductivity(const int &rawCond) {
    return ((float)rawCond) / 100.0;
  }
  
  // Converts from raw 5TE sensor value to dieletric spec in datasheet.
  float toDielectric(const int &rawDielectric) {
    return ((float) rawDielectric) / 50.0;
  }

  void loop()
  {
    // Do nothing if we aren't reading sensor
    if (!isReading) {
      return;
    }

    // Did the initialization sequence start yet?
    if (!wasInitialized) {
      wasInitialized = (_teConfig.rx_port->IN & _BV(_teConfig.rx_pin));
      return;
    }

    // Did the initialization sequence end yet?
    if (_teConfig.rx_port->IN & _BV(_teConfig.rx_pin)) {
      return;
    }

    // If all this is satisfied, read the serial port
    while(serial.available()) {
      
      // Read in next available character
      char c = fgetc(stream);
      teReading[teIndex++] = c;
      
      // If this indicates sensor type, the next byte is checksum
      // So if we see a sensor type, activate a flag saying the next
      // byte is the last one.
      if (!messageIsDone) {
	messageIsDone = (c == 'z' || c == 'x' || teIndex >= TE_BUFFER_SIZE);
	crc += c;

      } else {
	uint16_t dielectric = 0;
	uint16_t conductivity = 0;
	uint16_t temperature = 0;
	char type = '\0';

	// Turn off sensor (we are done reading)
	_teConfig.pwr_port->OUTCLR = _BV(_teConfig.pwr_pin);
	isReading = false;

	// Verify sensor checksum and then parse reading
	uint8_t checksum = c;
	if (checksum == (crc % 64 + 32)) {

	  // Null-terminate the string 
	  teReading[teIndex] = '\0';

	  // Look for 5TE reading
	  sscanf(teReading, "%d %d %d %c", 
		 &dielectric, &conductivity, &temperature, &type);
	}
	
	// Convert and output the returned values
	amarino->send(RECV_TE_FN);
	amarino->send(toDielectric(dielectric));
	amarino->send(toConductivity(conductivity));
	amarino->send(toTemp(temperature));
	amarino->sendln();
	
	// Clear the buffer
	teIndex = 0;
      }
    }
  }
  
  // Powers up and reads the sensor values from a 5TE environmental sensor, 
  // and checks the resulting checksum for validity.  If data is invalid,
  // all values will return zero.
  void update()
  {
    // Only take measurements every TE_SENSOR_INTERVAL times
    if (teCount < TE_SENSOR_INTERVAL) {
      teCount++;
      return;
    }

    // Turn off sensor (if it was on this whole time)
    if (_teConfig.pwr_port->OUT & _BV(_teConfig.pwr_pin)) {
      _teConfig.pwr_port->OUTCLR = _BV(_teConfig.pwr_pin);
      _delay_ms(10); // TODO: how long do we wait?
    }

    // Turn on sensor
    _teConfig.pwr_port->OUTSET = _BV(_teConfig.pwr_pin);
    
    // Wait for power-up sequence (15ms high)  
    _delay_ms(1);

    // Begin reading in sensor data
    crc = 0;
    teIndex = 0;
    wasInitialized = false;
    messageIsDone = false;
    isReading = true;
  }
};

#endif /* TE5_SENSOR_H */
