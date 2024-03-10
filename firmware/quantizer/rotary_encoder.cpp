#include "rotary_encoder.h"

namespace quantizer {

rotary_encoder::rotary_encoder(uint8_t pinA, uint8_t pinB) :
	m_pinA(pinA),
	m_pinB(pinB) {

	pinMode(pinA, INPUT_PULLUP);
	pinMode(pinB, INPUT_PULLUP);

	m_state = digitalRead(m_pinA);
}

void rotary_encoder::loop() {
	auto state = digitalRead(m_pinA);
	if (state != m_state) {
		if (state) {
			if (digitalRead(m_pinB) == state) {
				if (increased != nullptr) {
					increased();
				}
			}
			else {
				if (decreased != nullptr) {
					decreased();
				}
			}
		}
		m_state = state;
	}
}

}

