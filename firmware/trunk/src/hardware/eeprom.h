/**
 * EEPROMHelper.h
 *
 * Contains a few helper functions for loading and unloading data
 * from persistent EEPROM memory.
 */
#include <avr/eeprom.h>

template <class T> int EEPROM_writeAnything(int ee, const T& value)
{
    const char* p = (const char*)(const void*)&value;
    int i;
    for (i = 0; i < sizeof(value); i++)
	  eeprom_write_byte(ee++, *p++);
    return i;
}

template <class T> int EEPROM_readAnything(int ee, T& value)
{
    char* p = (char*)(void*)&value;
    int i;
    for (i = 0; i < sizeof(value); i++)
	  *p++ = eeprom_read_byte(ee++);
    return i;
}
