#pragma once
#include "pin_mappings.h"
#include "dac_output_notes.h"
#include <Adafruit_NeoPixel.h>
#include <Arduino.h>

namespace quantizer {
struct led_color {
  uint32_t r{}, g{}, b{};
  uint32_t toUint() {
    return r<<16 | g<<8 | b; 
  }
};

class leds {
  public:
    leds();

    void begin();

    void display_a_selected();
    void display_b_selected();
    void set_current_scale(const uint8_t* scale, int scale_size);
    void set_base_note(int base_note);
    void show_scale();
    void set_current_note(uint16_t dac_note);

    void trigger_a(bool state);
    void trigger_b(bool state);

  private:
    static const int led_count{13};

    void clear_scale_leds();
    void clear_current_note_leds();

    Adafruit_NeoPixel pixels;
    const uint8_t* current_scale{};
    int current_scale_size{};
    int base_note{};
    led_color colors[led_count]{};
    bool displaying_a{};
    uint16_t last_dac_note = 1<<12;
};

}
