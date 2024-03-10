#include "portamento.h"

using namespace quantizer;

void portamento::set_duration(int milliseconds) {
    duration_ms = milliseconds;
}

void portamento::start(uint16_t start_value, uint16_t end_value, uint64_t current_ms) {

    if (start_value > 4095) {
        Serial.println("portamento::start start_value out of range");
        Serial.print("start_value: ");
        Serial.print(start_value);
        while(true);
    }

    if (end_value > 4095) {
        Serial.println("portamento::start end_value out of range");
        Serial.print("end_value: ");
        Serial.print(end_value);
        while(true);
    }

    if (current_ms < end_ms) {
        // If there's a glide in progress, start at the current value
        this->start_value = last_calculated_value;
    } else {
        this->start_value = start_value;
    }
    this->end_value = end_value;
    end_ms = current_ms + duration_ms;
}

int portamento::get_current_value(uint64_t current_ms) {
    if (current_ms >= end_ms) {
        last_calculated_value = start_value = end_value;
    } else {
        last_calculated_value = map(current_ms, end_ms - duration_ms, end_ms, start_value, end_value);
    }
    if (last_calculated_value > 4095) {
        Serial.println("portamento::get_current_value last_calculated_value out of range");
        Serial.print("current_ms: ");
        Serial.print((unsigned)current_ms);
        Serial.print(", end_ms: ");
        Serial.print((unsigned)end_ms);
        Serial.print(", start_value: ");
        Serial.print(start_value);
        Serial.print(", end_value: ");
        Serial.print(end_value);
        Serial.print(", last_calculated_value: ");
        Serial.print(last_calculated_value);
        while(true);
    }
    return last_calculated_value;
}

uint16_t portamento::get_last_calculated_value() {
    return last_calculated_value;
}
