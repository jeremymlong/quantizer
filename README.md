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

## Calibration
Use a multimeter to calibrate the voltage reference to 5.0V. This voltage reference is used by the Arduino and the MCP4921s. The easiest place to measure this is at the AREF socket. This can be done when doing other voltage tests when first applying power to the board.
1. Apply power to the board
1. Connect a multimeter to monitor AREF
1. Adjust the trim pot until the voltage reads 5.0V.

![](images/calibration.jpg)

## BOM
| Part | Quantity |
|-----|-----|
| Arduino Nano | 1 |
| MCP4921 DIP-8 | 2 |
| TL072 DIP-8 | 1 |
| TL431 TO-92 | 1 |
| 2N3904 TO-92 | 4 |
| 5mm WS2811 LED | 13 |
| 1x2 vertical pin header | 1 |
| 1x4 vertical pin header | 1 |
| 1x5 vertical pin header | 2 |
| 1x2 vertical pin socket | 1 |
| 1x4 vertical pin socket | 1 |
| 1x5 vertical pin socket | 2 |
| Rotary encoder (footprint is Alps EC12E) | 1 |
| 9mm vertical potentiometer 50k | 2 |
| Potentiometer 3296W 1k | 1 |
| 330 1/4W resisitor | 1 |
| 1k 1/4W resisitor | 2 |
| 5.1k 1/4W resisitor | 2 |
| 10k 1/4W resisitor | 4 |
| 15k 1/4W resisitor | 2 |
| 33k 1/4W resisitor | 2 |
| 100k 1/4W resisitor | 6 |
| 10nF capacitor 5mm spacing | 2 |
| 100nF capacitor 5mm spacing | 7 |
| 10uF capacitor 5mm diameter, 2mm spacing | 2 |
| PJ301M (Thonkiconn) | 10 |
| 2x5 IDC Shrouded header (no reverse power protection on this) | 1 |
| Schottky diode DO-35 (signal diodes work too) | 8 |

## TODO
 * Editable scale
 * Chord mode

## Arduino Dependencies
 * [Adafruit_NeoPixel](https://github.com/adafruit/Adafruit_NeoPixel)
 * [AUnit](https://github.com/bxparks/AUnit) (for tests)

## Notes about LEDs
The 12 scale LED are not included on the schematic or board. My hope was to use these boards for another project. I directly mounted the LEDs to the panel with hot glue and wired them point to point.

LEDs are WS2811 (NeoPixel) style, but in a traditional 5mm form factor.
![](images/leds.png)

![](images/photo_left.jpg)
