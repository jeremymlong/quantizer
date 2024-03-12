#pragma once
#include "dac.h"
#include "portamento.h"
#include <Arduino.h>

namespace quantizer {

class channel {
  public:
    channel(uint8_t dac_select_pin, uint8_t output_trigger_pin);
    void loop();
    void update(uint16_t dac_value);
    void set_portamento_duration(int ms) { portamento.set_duration(ms); }
    void trigger();
    uint16_t get_portamento_value() { return portamento.get_last_calculated_value(); }
    
  private:
    dac dac;
    portamento portamento;

    void update_cv_output();

    uint16_t current_dac_value{1<<15};

    uint64_t disable_input_triggering_mode_ms{};
    bool input_triggering_mode = false;
    bool input_trigger_pending{};

    bool output_trigger_pending = false;
    uint64_t output_trigger_low_ms{};
    uint8_t output_trigger_pin{};
};

}
