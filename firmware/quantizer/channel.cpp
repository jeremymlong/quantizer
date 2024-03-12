#include "channel.h"

using namespace quantizer;

channel::channel(uint8_t dac_select_pin, uint8_t output_trigger_pin)
    :   dac(dac_select_pin),
        output_trigger_pin(output_trigger_pin) {
    pinMode(output_trigger_pin, OUTPUT);
    digitalWrite(output_trigger_pin, HIGH);
}

void channel::loop() {
    uint64_t ms = millis();
    if (input_triggering_mode) {
        if (input_trigger_pending) {
            input_trigger_pending = false;
            disable_input_triggering_mode_ms = ms + 6000;
            update_cv_output();
        }
        if (ms > disable_input_triggering_mode_ms) {
            input_triggering_mode = false;
        }
    }

    dac.write(portamento.get_current_value(ms));

    if (output_trigger_pending && ms > output_trigger_low_ms) {
        output_trigger_pending = false;
        digitalWrite(output_trigger_pin, HIGH); // inverted logic
    }
}

void channel::update(uint16_t dac_value) {
    if (dac_value != current_dac_value) {
        current_dac_value = dac_value;
        if (!input_triggering_mode) {
            update_cv_output();
        }
    }
}

void channel::update_cv_output() {
    uint64_t ms = millis();
    portamento.start(current_dac_value, ms);

    // trigger
    output_trigger_pending = true;
    output_trigger_low_ms = ms + 5;
    digitalWrite(output_trigger_pin, LOW);  // inverted logic
}

void channel::trigger() {
    input_triggering_mode = true;
    input_trigger_pending = true;
}
