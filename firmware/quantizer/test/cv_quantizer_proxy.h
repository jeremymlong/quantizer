#pragma once

#include "../cv_quantizer.h"

class cv_quantizer_proxy : public quantizer::cv_quantizer {
  public:
    bool is_scale_major() { return current_scale_index == 0; }
    bool is_scale_minor_natural() { return current_scale_index == 1; }
    bool is_scale_minor_harmonic() { return current_scale_index == 2; }
    bool is_scale_pentatonic_major() { return current_scale_index == 3; }
    bool is_scale_pentatonic_minor() { return current_scale_index == 4; }
    bool is_scale_blues_major() { return current_scale_index == 5; }
    bool is_scale_blues_minor() { return current_scale_index == 6; }
    bool is_scale_chromatic() { return current_scale_index == 7; }

    void set_chromatic() { 
        current_scale_index = 7;
        set_current_scale();
    }

    void set_minor_natural() {
        current_scale_index = 1;
        set_current_scale();
    }

    uint16_t quantize_cv(uint16_t cv) { return quantizer::cv_quantizer::quantize_cv(cv); }

    int get_quantized_note(int note, bool is_sharp_of_chromatic) {
        // Serial.print("get_quantized_note(");
        // Serial.print(note);
        // Serial.print(", ");
        // Serial.print(is_sharp_of_chromatic);
        // Serial.println(")");
        return quantizer::cv_quantizer::get_quantized_note(note, is_sharp_of_chromatic);
    }
};
