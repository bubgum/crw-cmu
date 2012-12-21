/**
 * EEPROMHelper.h
 *
 * Contains a few helper functions for loading and unloading data
 * from persistent EEPROM memory.
 */
#include <avr/eeprom.h>

template <class T> int eeprom_write(int ee, const T& value) {
    const char* p = (const char*) (const void*) &value;
    uint8_t i;
    for (i = 0; i < sizeof (value); i++)
        eeprom_write_byte(*p++, ee++);
    return i;
}

template <class T> int eeprom_read(int ee, T& value) {
    char* p = (char*) (void*) &value;
    uint8_t i;
    for (i = 0; i < sizeof (value); i++)
        eeprom_read_byte(*p++, ee++);
    return i;
}
