#pragma once
#include <Arduino.h>
#include "pin_mappings.h"

namespace quantizer {

enum class adc_channel {
  cv_input_a,
  portamento,
  cv_input_b,
  base_note
};

class adc_handler {
  public:
    virtual void on_adc_update(adc_channel, uint16_t) = 0;
};


class adc {
  public:
    static adc& get_instance();
    void begin(adc_handler* handler);
    void loop();
    uint16_t get_last_sample(adc_channel channel);
    
  private:
    adc() = default;
    void set_adc_channel();

    static uint16_t get_sample_shift(adc_channel channel);
    uint16_t get_sample_count(adc_channel channel);

    static const uint8_t cv_sample_shift = 4;
    static const uint8_t portamento_sample_shift = 1;
    static const uint8_t base_note_sample_shift = 1;

    const uint8_t cv_sample_count = pow(2, cv_sample_shift);
    const uint8_t portamento_sample_count = pow(2, portamento_sample_shift);
    const uint8_t base_note_sample_count = pow(2, base_note_sample_shift);


    static const uint8_t cv_sample_diff = 5;

    adc_handler* handler{};
    adc_channel current_channel{};
    uint16_t accumulator{};
    uint8_t remaining_samples{};
    uint8_t invalidate_sample_counter{};

    uint16_t last_cv_a_sample{};
    uint16_t last_cv_b_sample{};
    uint16_t last_portamento_sample{};
    uint16_t last_base_note_sample{};
};

}
