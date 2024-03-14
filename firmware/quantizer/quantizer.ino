#if 1

#include "rotary_encoder.h"
#include "button.h"
#include "cv_quantizer.h"
#include <SPI.h>

quantizer::rotary_encoder encoder(quantizer::pins::encoder_a, quantizer::pins::encoder_b);
quantizer::button encoder_button(quantizer::pins::encoder_button);
quantizer::cv_quantizer cv_quantizer;
quantizer::leds leds;
void setup() {
    SPI.begin();
    analogReference(EXTERNAL);
    
    encoder.increased = [] { cv_quantizer.next_scale(); };
    encoder.decreased = [] { cv_quantizer.previous_scale(); };
    encoder_button.on_button_pressed = [] { cv_quantizer.toggle_display_side(); };

    pinMode(quantizer::pins::trigger_in_a, INPUT_PULLUP);
    pinMode(quantizer::pins::trigger_in_b, INPUT_PULLUP);

    attachInterrupt(digitalPinToInterrupt(quantizer::pins::trigger_in_a), []{
        cv_quantizer.trigger_a(!digitalRead(quantizer::pins::trigger_in_a));
    }, CHANGE);

    attachInterrupt(digitalPinToInterrupt(quantizer::pins::trigger_in_b), []{
        cv_quantizer.trigger_b(!digitalRead(quantizer::pins::trigger_in_b));
    }, CHANGE);

    cv_quantizer.begin();
}

void loop() {
    cv_quantizer.loop();
    encoder.loop();
    encoder_button.loop();
}

#else

#include "test/cv_quantizer_tests.h"
#include "test/leds_tests.h"
#include <AUnit.h>

void setup() {
    Serial.begin(115200);
}

void loop() {
    aunit::TestRunner::run();
}

#endif
