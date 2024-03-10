#pragma once
#include <Arduino.h>

namespace quantizer {

typedef void (*rotary_encoder_change)();

class rotary_encoder {
public:
	rotary_encoder(uint8_t pinA, uint8_t pinB);
	void loop();

	rotary_encoder_change increased = nullptr;
	rotary_encoder_change decreased = nullptr;

private:
	uint8_t m_pinA{};
	uint8_t m_pinB{};
	uint8_t m_state{};
};

}
