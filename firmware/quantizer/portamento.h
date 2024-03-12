#pragma once
#include<Arduino.h>

namespace quantizer {

class portamento {
  public:
    portamento() = default;

    void set_duration(int milliseconds);
    void start(uint16_t value, uint64_t current_ms);
    int get_current_value(uint64_t current_ms);
    uint16_t get_last_calculated_value();

  private:
    int duration_ms{};
    uint16_t start_value = 0;
    uint16_t end_value = 0;
    uint64_t end_ms{};
    uint16_t last_calculated_value = 0;
};

}
