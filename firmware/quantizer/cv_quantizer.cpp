#include "cv_quantizer.h"

using namespace quantizer;

void cv_quantizer::begin() {
    adc.begin(this);
    leds.begin();
    toggle_display_side();
    set_current_scale();
}

void cv_quantizer::loop() {
    adc.loop();
    channel_a.loop();
    channel_b.loop();
    uint16_t led_value;
    if (displaying_a_side) {
        led_value = channel_a.get_portamento_value();
    } else {
        led_value = channel_b.get_portamento_value();
    }
    leds.set_current_note(led_value);
}

void cv_quantizer::on_adc_update(adc_channel channel, uint16_t adc_sample) {
    switch (channel) {
        case quantizer::adc_channel::cv_input_a:
            channel_a.update(quantize_cv(adc_sample));
            break;

        case quantizer::adc_channel::cv_input_b:
            channel_b.update(quantize_cv(adc_sample));
            break;
            
        case quantizer::adc_channel::portamento:
            channel_a.set_portamento_duration(adc_sample);
            channel_b.set_portamento_duration(adc_sample);
            break;
            
        case quantizer::adc_channel::base_note: {
            set_base_note(map(adc_sample, 0, 1023, 0, 11));
            break;
        }
    }
}

void cv_quantizer::trigger_a(bool state) {
    if (state) {
        channel_a.trigger();
    }
    leds.trigger_a(state);
}

void cv_quantizer::trigger_b(bool state) {
    if (state) {
        channel_b.trigger();
    }
    leds.trigger_b(state);
}


uint16_t cv_quantizer::quantize_cv(uint16_t cv) {
    float percent = cv / 1023.0F; // TODO: floating point
    int chromatic_index = round(percent * 60); // TODO: floating point
    uint16_t quantized_chromatic = dac_output_notes[chromatic_index];
    int unquantized_dac_value = round(percent * 4095); // TODO: floating point
    bool is_sharp_of_choromatic = unquantized_dac_value > quantized_chromatic;
    int octave = chromatic_index / 12;
    int note = chromatic_index % 12;
    int quantized_note = get_quantized_note(note, is_sharp_of_choromatic);
    int quantized_note_index = quantized_note + (octave * 12);
    return dac_output_notes[quantized_note_index];
}

int cv_quantizer::get_quantized_note(int note, bool is_sharp_of_chromatic) {
    int lower_index = current_scale[0];
    int higher_index = current_scale_size - 1;
    if (note > current_scale[higher_index]) {
        // Edge case when the note may be in the next octave.
        lower_index = higher_index;
        higher_index = 12;
    } else {
        for (int i = 0; i < current_scale_size - 1; i++) {
            int current_low_index = current_scale[i];
            int current_high_index = current_scale[i + 1];
            if (note >= current_low_index && note <= current_high_index) {
                lower_index = current_low_index;
                higher_index = current_high_index;
                break;
            }
        }
    }
    int distance_to_lower = note - lower_index;
    int distance_to_higher = higher_index - note;
    int result;
    if (distance_to_lower == distance_to_higher) {
        if (is_sharp_of_chromatic) {
            result = higher_index;
        } else {
            result = lower_index;
        }
    } else if (distance_to_lower < distance_to_higher) {
        result = lower_index;
    } else {
        result = higher_index;
    }
    return result;
}

void cv_quantizer::set_current_scale() {
    if (current_scale != nullptr) {
        delete[] current_scale;
        current_scale = nullptr;
    }
    current_scale_size = scale_sizes[current_scale_index];
    current_scale = new uint8_t[current_scale_size];
    // Need to update the current scale to selected. Also, transpose by base_note.
    // This can leave current_scale unsorted, so it needs to be sorted afterward.
    for (int i = 0; i < current_scale_size; i++) {
        current_scale[i] = (scales[current_scale_index][i] + base_note) % 12;
    }

    qsort(current_scale,  current_scale_size, sizeof(uint8_t),
        [](const void *a, const void *b) {
            return  ( *(uint8_t*)a - *(uint8_t*)b );
        }
    );

    leds.set_current_scale(current_scale, current_scale_size);
}

void cv_quantizer::set_base_note(uint8_t value) {  
    if (value != base_note) {
        base_note = value;
        set_current_scale();
        channel_a.update(quantize_cv(adc.get_last_sample(quantizer::adc_channel::cv_input_a)));
        channel_b.update(quantize_cv(adc.get_last_sample(quantizer::adc_channel::cv_input_b)));
    }
}

void cv_quantizer::next_scale() {
    current_scale_index++;
    if (current_scale_index >= scales_count) {
        current_scale_index = 0;
    }
    set_current_scale();
}

void cv_quantizer::previous_scale() {
    current_scale_index--;
    if (current_scale_index < 0) {
        current_scale_index = scales_count - 1;
    }
    set_current_scale();
}

void cv_quantizer::toggle_display_side() {
    displaying_a_side = !displaying_a_side;
    if (displaying_a_side) {
        leds.display_a_selected();
    } else {
        leds.display_b_selected();
    }
}
