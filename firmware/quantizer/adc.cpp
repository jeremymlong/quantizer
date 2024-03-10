#include "adc.h"

using namespace quantizer;

volatile bool sample_ready{};
volatile uint16_t sample{};

adc_channel operator++(adc_channel& channel, int) {
    switch (channel) {
        case adc_channel::cv_input_a:
            channel = adc_channel::portamento;
            break;
        case adc_channel::portamento:
            channel = adc_channel::cv_input_b;
            break;
        case adc_channel::cv_input_b:
            channel = adc_channel::base_note;
            break;
        case adc_channel::base_note:
            channel = adc_channel::cv_input_a;
            break;
    }
    return channel;
}

ISR (ADC_vect) {
	uint8_t low = ADCL;
	uint8_t high = ADCH;
	uint16_t value = high << 8;
	value &= 0xFF00;
	value |= low;
	sample_ready = true;
	sample = value;
}

adc& adc::get_instance() {
	static adc instance;
	return instance;
}

void adc::begin(adc_handler* handler) {
    this->handler = handler;
    	
    noInterrupts ();

	// Init
	ADCSRA = 0;
	ADCSRB = 0;

	//ADMUX = 0; //set AREF reference voltage
    set_adc_channel();

	ADCSRA |= _BV(ADPS2) | _BV (ADPS1); //set ADC clock with 64 prescaler
	ADCSRA |= _BV(ADATE); //enable auto trigger
	ADCSRA |= _BV(ADIE); //enable interrupts when measurement complete
	ADCSRA |= _BV(ADEN); //enable ADC
	ADCSRA |= _BV(ADSC); //start ADC measurements

	interrupts ();
}

void adc::loop() {
    if (sample_ready) {
        noInterrupts();
		sample_ready = false;
		uint16_t sample_copy = sample;
		interrupts();
        if (invalidate_sample_counter > 0) {
            invalidate_sample_counter--;
            return;
        }

        accumulator += sample_copy;
        remaining_samples--;
        if (remaining_samples <= 0) {
            uint16_t current_sample = accumulator >> get_sample_shift(current_channel);
            bool should_output_sample = true;
            switch (current_channel) {
                case adc_channel::cv_input_a:
                    if (abs(last_cv_a_sample - current_sample) > cv_sample_diff) {
                        last_cv_a_sample = current_sample;
                    } else {
                        should_output_sample = false;
                    }
                    break;
                case adc_channel::cv_input_b:
                    if (abs(last_cv_b_sample - current_sample) > cv_sample_diff) {
                        last_cv_b_sample = current_sample;
                    } else {
                        should_output_sample = false;
                    }
                    break;
                case adc_channel::portamento:
                    last_portamento_sample = current_sample;
                    break;
                case adc_channel::base_note:
                    last_base_note_sample = current_sample;
                    break;
            }
            if (should_output_sample && handler != nullptr) {
                handler->on_adc_update(current_channel, current_sample);
            }
            accumulator = 0;
            current_channel++;
            set_adc_channel();
        }
    }
}

uint16_t adc::get_last_sample(adc_channel channel) {
    switch (channel) {
        case adc_channel::cv_input_a:
            return last_cv_a_sample;
        case adc_channel::cv_input_b:
            return last_cv_b_sample;
        case adc_channel::portamento:
            return last_portamento_sample;
        case adc_channel::base_note:
            return last_base_note_sample;
    }
}

void adc::set_adc_channel() {
    uint8_t channel = 0;
    switch (current_channel) {
        case adc_channel::cv_input_a:
            channel = pins::cv_input_a - A0;
            break;
        
        case adc_channel::cv_input_b:
            channel = pins::cv_input_b - A0;
            break;
        
        case adc_channel::portamento:
            channel = pins::portamento - A0;
            break;
        
        case adc_channel::base_note:
            channel = pins::base_note - A0;
            break;
    }
    remaining_samples = get_sample_count(current_channel);
    invalidate_sample_counter = 2;
    ADMUX = channel;
}

uint16_t adc::get_sample_count(adc_channel channel) {
    switch (channel) {
        case adc_channel::cv_input_a:
        case adc_channel::cv_input_b:
            return cv_sample_count;
        case adc_channel::portamento:
            return portamento_sample_count;
        case adc_channel::base_note:
            return base_note_sample_count;
    }
    return 1;
}

uint16_t adc::get_sample_shift(adc_channel channel) {
    switch (channel) {
        case adc_channel::cv_input_a:
        case adc_channel::cv_input_b:
            return cv_sample_shift;
        case adc_channel::portamento:
            return portamento_sample_shift;
        case adc_channel::base_note:
            return base_note_sample_shift;
    }
    return 1;
}
