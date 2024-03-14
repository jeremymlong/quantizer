#include "dac.h"

using namespace quantizer;

SPISettings dac_spi_settings(16000000, MSBFIRST, SPI_MODE0);

dac::dac(uint8_t select_pin) : select_pin(select_pin) {
    pinMode(select_pin, OUTPUT);
    digitalWrite(select_pin, HIGH);
}

void dac::write(uint16_t value) {
    digitalWrite(select_pin, LOW);
    SPI.beginTransaction(dac_spi_settings);
    SPI.transfer16(0x2000 | 0x1000 | value);
    SPI.endTransaction();
    digitalWrite(select_pin, HIGH);
}

