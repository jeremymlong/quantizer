#include <AUnit.h>
#include "cv_quantizer_proxy.h"

test(next_scale) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    assertTrue(proxy.is_scale_major());
    proxy.next_scale();
    assertTrue(proxy.is_scale_minor_natural());
    proxy.next_scale();
    assertTrue(proxy.is_scale_minor_harmonic());
    proxy.next_scale();
    assertTrue(proxy.is_scale_pentatonic_major());
    proxy.next_scale();
    assertTrue(proxy.is_scale_pentatonic_minor());
    proxy.next_scale();
    assertTrue(proxy.is_scale_blues_major());
    proxy.next_scale();
    assertTrue(proxy.is_scale_blues_minor());
    proxy.next_scale();
    assertTrue(proxy.is_scale_chromatic());
    proxy.next_scale();
    assertTrue(proxy.is_scale_major());
}

test(previous_scale) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    assertTrue(proxy.is_scale_major());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_chromatic());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_blues_minor());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_blues_major());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_pentatonic_minor());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_pentatonic_major());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_minor_harmonic());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_minor_natural());
    proxy.previous_scale();
    assertTrue(proxy.is_scale_major());
}

test(get_quantized_note_chromactic) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    proxy.set_chromatic();
    for (int i = 0; i < 12; i++) {
        int actual = proxy.get_quantized_note(i, false);
        assertEqual(i, actual);
    }
}

test(get_quantized_note_major) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    int expected, actual;

    // 0, 2, 4, 5, 7, 9, 11 
    expected = 0;
    actual = proxy.get_quantized_note(0, false);
    assertEqual(expected, actual);
    
    expected = 0;
    actual = proxy.get_quantized_note(1, false);
    assertEqual(expected, actual);
    
    expected = 2;
    actual = proxy.get_quantized_note(1, true);
    assertEqual(expected, actual);

    expected = 2;
    actual = proxy.get_quantized_note(2, false);
    assertEqual(expected, actual);
    
    expected = 2;
    actual = proxy.get_quantized_note(3, false);
    assertEqual(expected, actual);
    
    expected = 4;
    actual = proxy.get_quantized_note(3, true);
    assertEqual(expected, actual);
    
    expected = 4;
    actual = proxy.get_quantized_note(4, true);
    assertEqual(expected, actual);
}

test(quantize_cv) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    proxy.set_chromatic();
    uint16_t cv, expected, actual;

    const int adc_max = (1 << 10) - 1;
    const int dac_max = (1 << 12) - 1;

    const int dac_note_count = sizeof(dac_output_notes) / sizeof(dac_output_notes[0]);

    for (int i = 0; i < dac_note_count - 1; i++) {
        expected = dac_output_notes[i];
        cv = map(expected, 0, dac_max, 0, adc_max);
        actual = proxy.quantize_cv(cv);
        assertEqual(expected, actual);
    }
}

test(get_quantized_note_top_of_scale_flat) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    uint16_t expected, actual;

    expected = 9;
    actual = proxy.get_quantized_note(10, false);
    assertEqual(expected, actual);
}

test(get_quantized_note_top_of_scale_sharp) {
    cv_quantizer_proxy proxy;
    proxy.begin();

    proxy.set_minor_natural();
    uint16_t expected, actual;

    expected = 12;
    actual = proxy.get_quantized_note(11, true);
    assertEqual(expected, actual);
}
