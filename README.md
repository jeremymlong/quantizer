# Dual Quantizer
![](images/photo_right.jpg)

## Specs
 * Range 0 to 5V
 * Arduino Nano based
 * Encoder knob for selecting scale
 * Encoder button for selecting which quantizer is displayed on the LEDs
 * Transpose with CV control
 * Portamento with CV control
 * LED for displaying
    * Red for left quantizer, Green for right quantizer
    * Trigger in
    * Current scale
    * Current CV note out
 * Two quantizers
    * CV input
    * CV output
    * Trigger in - CV input is sampled on rising edge and output until next trigger.
    * Trigger out - A pulse out each time the CV output changes
 * Scales
    * Major
    * Minor natural
    * Minor harmonic
    * Pentatonic major
    * Pentatonic minor
    * Blues major
    * Blues minor
    * Chromatic

## TODO
 * Editable scale
 * Chord mode

## Notes about LEDs
The 12 scale LED are not included on the schematic or board. My hope was to use these boards for another project. I directly mounted the LEDs to the panel with hot glue and wired them point to point.

LEDs are WS2811 (NeoPixel) style, but in a traditional 5mm form factor.
![](images/leds.png)

![](images/photo_left.jpg)
