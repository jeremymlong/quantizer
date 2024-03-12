#include "portamento.h"

using namespace quantizer;

void portamento::set_duration(int milliseconds) {
    duration_ms = milliseconds;
}

void portamento::start(uint16_t value, uint64_t current_ms) {
    start_value = last_calculated_value;
    end_value = value;
    end_ms = current_ms + duration_ms;
}

int portamento::get_current_value(uint64_t current_ms) {
    if (current_ms >= end_ms) {
        last_calculated_value = start_value = end_value;
    } else {
        last_calculated_value = map(current_ms, end_ms - duration_ms, end_ms, start_value, end_value);
    }
    return last_calculated_value;
}

uint16_t portamento::get_last_calculated_value() {
    return last_calculated_value;
}
