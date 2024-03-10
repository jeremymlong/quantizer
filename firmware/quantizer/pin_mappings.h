#pragma once
#include <Arduino.h>
namespace quantizer {
namespace pins {
    const int trigger_in_a = 2;
    const int trigger_in_b = 3;
    const int encoder_a = 4;
    const int encoder_b = 5;
    const int encoder_button = 6;
    const int leds = 7;
    // 8
    const int dac_a_select = 9;
    const int dac_b_select = 10;
    // MOSI is 11
    // MISO is 12
    // SCK is 13
    const int cv_input_a = A0;
    const int cv_input_b = A1;
    const int portamento = A2;
    const int base_note = A3;
    // A4
    const int trigger_out_a = A5;
    const int trigger_out_b = A6;
    // A7
}
}
