#pragma once
#include <Arduino.h>

const uint8_t major[] = { 0, 2, 4, 5, 7, 9, 11 };
const uint8_t minor_natural[] = { 0, 2, 3, 5, 7, 8, 10 };
const uint8_t minor_harmonic[] = { 0, 2, 3, 5, 7, 8, 11 };
const uint8_t pentatonic_major[] = { 0, 2, 4, 7, 9 };
const uint8_t pentatonic_minor[] = { 0, 3, 5, 7, 10 };
const uint8_t blues_major[] = { 0, 2, 3, 4, 7, 9 };
const uint8_t blues_minor[] = { 0, 3, 5, 6, 7, 10 };
const uint8_t chromatic[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 };

const size_t scales_count = 8;

extern const uint8_t* scales[scales_count];

const uint8_t scale_sizes[scales_count] = {
    sizeof(major),
    sizeof(minor_natural),
    sizeof(minor_harmonic),
    sizeof(pentatonic_major),
    sizeof(pentatonic_minor),
    sizeof(blues_major),
    sizeof(blues_minor),
    sizeof(chromatic),
};
