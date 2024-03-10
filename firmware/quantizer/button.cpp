#include "button.h"

using namespace quantizer;

button::button(uint8_t pin, uint8_t pin_mode) : pin(pin), pin_mode(pin_mode) {
    pinMode(pin, pin_mode);
}

void button::loop() {
    uint64_t current_ms = millis();
    if (next_allowed_button_press_ms < current_ms && is_pressed() && on_button_pressed != nullptr) {
        next_allowed_button_press_ms = current_ms + 200;
        on_button_pressed();
    }
}

bool button::is_pressed()  {
    return digitalRead(pin) ^ pin_mode != OUTPUT;
}

