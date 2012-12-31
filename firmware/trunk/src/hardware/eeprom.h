/**
 * EEPROMHelper.h
 *
 * Contains a few helper functions for loading and unloading data
 * from persistent EEPROM memory.
 */
#include <avr/eeprom.h>

template <class T> void eeprom_write(int ee, const T& value) {
    const void* p = (const void*) &value;
    eeprom_write_block(p, (void*)ee, sizeof(value));
}

template <class T> void eeprom_read(int ee, T& value) {
    void* p = (void*) &value;
    eeprom_read_block(p, (void*)ee, sizeof(value));
}
