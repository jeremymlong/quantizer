#include "leds.h"

//#define REVERSE_LED_ORDER

using namespace quantizer;

const uint32_t off = 0;
const uint32_t red = 0xFF0000;
const uint32_t orange = 0xFF3F00;
const uint32_t green = 0x00FF00;
const uint32_t blue = 0x0000FF;
const uint32_t dim_blue = 0x00007F;

leds::leds() : pixels(led_count, pins::leds, NEO_RGB + NEO_KHZ800) {}

void leds::begin() {
    pixels.begin();
    pixels.setBrightness(32);
    pixels.clear();
    pixels.show();
    set_current_note(0);
}

void leds::display_a_selected() {
    displaying_a = true;
    pixels.setPixelColor(0, green);
    // Invalidate last_dac_note to force an update
    last_dac_note = 1<<15;
}

void leds::display_b_selected() {
    displaying_a = false;
    pixels.setPixelColor(0, red);
    // Invalidate last_dac_note to force an update
    last_dac_note = 1<<15;
}

void leds::set_current_scale(const uint8_t* scale, int scale_size) {
    current_scale = scale;
    current_scale_size = scale_size;
    // Invalidate last_dac_note to force an update
    last_dac_note = 1<<15;
    show_scale();
}

void leds::show_scale() {
    clear_scale_leds();
    for (int i = 0; i < current_scale_size; i ++) {
        int pixel_index = current_scale[i] + 1;
        #ifdef REVERSE_LED_ORDER
        pixel_index = 12 - current_scale[i];
        #endif
        colors[pixel_index].b = dim_blue;
        pixels.setPixelColor(pixel_index, colors[pixel_index].toUint());
    }
    pixels.show();
}

void leds::clear_scale_leds() {
    for (int i = 1; i < pixels.numPixels(); i++) {
        colors[i].b = 0;
        pixels.setPixelColor(i, colors[i].toUint());
    }
}

void leds::clear_current_note_leds() {
    for (int i = 1; i < pixels.numPixels(); i++) {
        colors[i].r = 0;
        colors[i].g = 0;
        pixels.setPixelColor(i, colors[i].toUint());
    }
}

void leds::trigger_a(bool state) {
    if (displaying_a) {
        pixels.setPixelColor(0, state ? green : off);
        pixels.show();
    }
}

void leds::trigger_b(bool state) {
    if (!displaying_a) {
        pixels.setPixelColor(0, state ? red : off);
        pixels.show();
    }
}

void leds::set_current_note(uint16_t dac_note) {
    if (last_dac_note != dac_note) {
        last_dac_note = dac_note;

        clear_current_note_leds();

        int lower_index = -1;
        int higher_index = -1;
        uint8_t higher_led_value = 0;
        uint8_t lower_led_value = 0;
        
        if (dac_note == dac_output_notes[60]) {
            // Edge case for octave 5
            lower_index = 0;
            higher_index = 1;
            higher_led_value = 0;
            lower_led_value = 68; // 68 is the average difference between dac notes
        } else {
            for (int i = 0; i < 5; i++) {
                int octave_start_index = i * 12;
                // Find the right octave (5V is the last value, so can look ahead to the last value (index 60))
                uint16_t low_octave_note = dac_output_notes[octave_start_index];
                uint16_t high_octave_note = dac_output_notes[octave_start_index + 12];
                bool in_octave_range = low_octave_note <= dac_note && dac_note < high_octave_note;
                if (!in_octave_range) {
                    continue;
                }
                
                uint16_t note_in_octave = dac_note - low_octave_note;

                // Now find the two notes
                for (int j = 0; j < 12; j++) {
                    uint16_t lower_note = dac_output_notes[j];
                    uint16_t higher_note = dac_output_notes[j + 1];
                    uint16_t dac_note_difference = higher_note - lower_note;

                    if (lower_note <= note_in_octave  && note_in_octave < higher_note) {
                        lower_index = j;
                        higher_index = j + 1;
                        higher_led_value = note_in_octave - lower_note;
                        lower_led_value = dac_note_difference - higher_led_value;
                        break;
                    }
                }
                break;
            }
        }

        lower_index %= 12;
        higher_index %= 12;

        #ifdef REVERSE_LED_ORDER
        lower_index = 11 - lower_index;
        higher_index = 11 - higher_index;
        #endif

        lower_index++;
        higher_index++;

        if (displaying_a) {
            colors[lower_index].g = lower_led_value * 3;
            colors[higher_index].g = higher_led_value * 3;
        } else {
            colors[lower_index].r = lower_led_value * 3;
            colors[higher_index].r = higher_led_value * 3;
        }
        
        pixels.setPixelColor(lower_index, colors[lower_index].toUint());
        pixels.setPixelColor(higher_index, colors[higher_index].toUint());
        pixels.show();
    }
}
