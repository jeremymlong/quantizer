#pragma once
#include <SPI.h>
#include <Arduino.h>

namespace quantizer {

class dac {
  public:
    dac(uint8_t select_pin);
    void write(uint16_t value);

  private:
    uint8_t select_pin{};
};

}
