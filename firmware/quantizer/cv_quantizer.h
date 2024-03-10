#pragma once
#include "adc.h"
#include "channel.h"
#include "pin_mappings.h"
#include "scales.h"
#include "dac_output_notes.h"
#include "leds.h"

#include <Arduino.h>

namespace quantizer {

class cv_quantizer : public adc_handler {
    public:
        void begin();
        void loop();

        void on_adc_update(adc_channel channel, uint16_t adc_sample) override;
        void trigger_a(bool state);
        void trigger_b(bool state);
        void next_scale();
        void previous_scale();
        void toggle_display_side();

    protected:
        uint16_t quantize_cv(uint16_t cv);
        int get_quantized_note(int note, bool is_sharp_of_choromatic);
        void set_current_scale();

        adc& adc = adc::get_instance();
        channel channel_a = channel(pins::dac_a_select, pins::trigger_out_a);
        channel channel_b = channel(pins::dac_b_select, pins::trigger_out_b);
        leds leds;
        
        int base_note = 0;
        int current_scale_index = 0;
        const uint8_t* current_scale{};
        size_t current_scale_size{};
        bool displaying_a_side = true;
};

}
