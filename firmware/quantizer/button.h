#pragma once
#include <Arduino.h>

namespace quantizer {

typedef void (*button_press)();

class button {
  public:
    button(uint8_t pin, uint8_t pin_mode = INPUT_PULLUP);

    void loop();
    bool is_pressed();

    button_press on_button_pressed = nullptr;

  private:
    uint8_t pin{};
    uint8_t pin_mode{};
    uint64_t next_allowed_button_press_ms{};
};

}
