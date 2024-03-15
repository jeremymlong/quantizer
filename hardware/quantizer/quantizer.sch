EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 65B72973
P 850 1150
F 0 "J1" H 900 725 50  0000 C CNN
F 1 "Power" H 900 816 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 850 1150 50  0001 C CNN
F 3 "~" H 850 1150 50  0001 C CNN
	1    850  1150
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 65B7381B
P 1400 750
F 0 "#PWR02" H 1400 600 50  0001 C CNN
F 1 "+12V" H 1415 923 50  0000 C CNN
F 2 "" H 1400 750 50  0001 C CNN
F 3 "" H 1400 750 50  0001 C CNN
	1    1400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 950  1400 950 
Wire Wire Line
	1400 950  1400 750 
Wire Wire Line
	650  950  1150 950 
Connection ~ 1150 950 
$Comp
L power:GND #PWR07
U 1 1 65B7478B
P 1400 1150
F 0 "#PWR07" H 1400 900 50  0001 C CNN
F 1 "GND" V 1405 1022 50  0000 R CNN
F 2 "" H 1400 1150 50  0001 C CNN
F 3 "" H 1400 1150 50  0001 C CNN
	1    1400 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 1150 1150 1150
Wire Wire Line
	1150 1050 1150 1150
Connection ~ 1150 1150
Wire Wire Line
	1150 1150 1150 1250
Connection ~ 1150 1050
Wire Wire Line
	1150 1150 650  1150
Wire Wire Line
	1150 1250 650  1250
Connection ~ 1150 1250
Wire Wire Line
	650  1050 1150 1050
$Comp
L power:-12V #PWR09
U 1 1 65B753C1
P 1400 1550
F 0 "#PWR09" H 1400 1650 50  0001 C CNN
F 1 "-12V" H 1415 1723 50  0000 C CNN
F 2 "" H 1400 1550 50  0001 C CNN
F 3 "" H 1400 1550 50  0001 C CNN
	1    1400 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1350 1400 1350
Wire Wire Line
	1400 1350 1400 1550
Wire Wire Line
	1150 1350 650  1350
Connection ~ 1150 1350
$Comp
L Device:CP C3
U 1 1 65B765B8
P 1950 1500
F 0 "C3" H 2068 1546 50  0000 L CNN
F 1 "10uF" H 2068 1455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1988 1350 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 65B7696C
P 1950 900
F 0 "C1" H 2068 946 50  0000 L CNN
F 1 "10uF" H 2068 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1988 750 50  0001 C CNN
F 3 "~" H 1950 900 50  0001 C CNN
	1    1950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1050 1950 1200
$Comp
L power:GND #PWR08
U 1 1 65B76F2E
P 2600 1200
F 0 "#PWR08" H 2600 950 50  0001 C CNN
F 1 "GND" V 2605 1072 50  0000 R CNN
F 2 "" H 2600 1200 50  0001 C CNN
F 3 "" H 2600 1200 50  0001 C CNN
	1    2600 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1200 2500 1200
Connection ~ 1950 1200
Wire Wire Line
	1950 1200 1950 1350
$Comp
L power:+12V #PWR01
U 1 1 65B77346
P 1950 700
F 0 "#PWR01" H 1950 550 50  0001 C CNN
F 1 "+12V" H 1965 873 50  0000 C CNN
F 2 "" H 1950 700 50  0001 C CNN
F 3 "" H 1950 700 50  0001 C CNN
	1    1950 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 700  1950 750 
$Comp
L power:-12V #PWR012
U 1 1 65B77880
P 1950 1700
F 0 "#PWR012" H 1950 1800 50  0001 C CNN
F 1 "-12V" H 1965 1873 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1650 1950 1700
$Comp
L power:+12V #PWR05
U 1 1 65B790FF
P 6550 1100
F 0 "#PWR05" H 6550 950 50  0001 C CNN
F 1 "+12V" H 6565 1273 50  0000 C CNN
F 2 "" H 6550 1100 50  0001 C CNN
F 3 "" H 6550 1100 50  0001 C CNN
	1    6550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1300 6550 1100
NoConn ~ 6750 1300
NoConn ~ 7150 1700
NoConn ~ 7150 1800
$Comp
L power:GND #PWR017
U 1 1 65B79B61
P 6700 3650
F 0 "#PWR017" H 6700 3400 50  0001 C CNN
F 1 "GND" H 6705 3477 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3300 6650 3350
Wire Wire Line
	6650 3350 6700 3350
Wire Wire Line
	6750 3350 6750 3300
Wire Wire Line
	6700 3350 6700 3650
Connection ~ 6700 3350
Wire Wire Line
	6700 3350 6750 3350
NoConn ~ 6150 1700
NoConn ~ 6150 1800
Wire Wire Line
	1300 3050 1300 3150
Text GLabel 7300 2300 2    50   Input ~ 0
CV_A
Wire Wire Line
	7300 2300 7150 2300
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 65B80C83
P 1000 4450
F 0 "J3" H 821 4383 50  0000 R CNN
F 1 "CV IN B" H 821 4474 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1000 4450 50  0001 C CNN
F 3 "~" H 1000 4450 50  0001 C CNN
	1    1000 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	1200 4550 1300 4550
Wire Wire Line
	1300 4550 1300 4650
$Comp
L power:+5V #PWR06
U 1 1 65B83023
P 6850 1100
F 0 "#PWR06" H 6850 950 50  0001 C CNN
F 1 "+5V" H 6865 1273 50  0000 C CNN
F 2 "" H 6850 1100 50  0001 C CNN
F 3 "" H 6850 1100 50  0001 C CNN
	1    6850 1100
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4921 U2
U 1 1 65B8621F
P 9500 1450
F 0 "U2" H 10244 1496 50  0000 L CNN
F 1 "MCP4921" H 10244 1405 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 10500 1350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22248a.pdf" H 10500 1350 50  0001 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4921 U3
U 1 1 65B8727F
P 9500 3200
F 0 "U3" H 10244 3246 50  0000 L CNN
F 1 "MCP4921" H 10244 3155 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 10500 3100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22248a.pdf" H 10500 3100 50  0001 C CNN
	1    9500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 65B8815F
P 9500 1850
F 0 "#PWR0101" H 9500 1600 50  0001 C CNN
F 1 "GND" H 9505 1677 50  0000 C CNN
F 2 "" H 9500 1850 50  0001 C CNN
F 3 "" H 9500 1850 50  0001 C CNN
	1    9500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 65B884F3
P 9500 3600
F 0 "#PWR0102" H 9500 3350 50  0001 C CNN
F 1 "GND" H 9505 3427 50  0000 C CNN
F 2 "" H 9500 3600 50  0001 C CNN
F 3 "" H 9500 3600 50  0001 C CNN
	1    9500 3600
	1    0    0    -1  
$EndComp
Text GLabel 7300 2400 2    50   Input ~ 0
CV_B
Wire Wire Line
	7150 2400 7300 2400
$Comp
L Device:R_POT_US RV2
U 1 1 65B8A71E
P 1500 6450
F 0 "RV2" H 1432 6404 50  0000 R CNN
F 1 "50k" H 1432 6495 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 1500 6450 50  0001 C CNN
F 3 "~" H 1500 6450 50  0001 C CNN
	1    1500 6450
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 6600 1500 6700
$Comp
L Device:R_POT_US RV3
U 1 1 65BA80EF
P 1500 8950
F 0 "RV3" H 1432 8904 50  0000 R CNN
F 1 "50k" H 1432 8995 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 1500 8950 50  0001 C CNN
F 3 "~" H 1500 8950 50  0001 C CNN
	1    1500 8950
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 9100 1500 9200
$Comp
L Connector:AudioJack2_SwitchT J10
U 1 1 65BA8118
P 1100 8150
F 0 "J10" H 920 8083 50  0000 R CNN
F 1 "Transpose" H 920 8174 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1100 8150 50  0001 C CNN
F 3 "~" H 1100 8150 50  0001 C CNN
	1    1100 8150
	1    0    0    1   
$EndComp
Wire Wire Line
	1300 8050 1400 8050
Wire Wire Line
	1300 8250 1400 8250
Wire Wire Line
	1400 8250 1400 8350
$Comp
L Amplifier_Operational:TL072 U4
U 3 1 65BAA7AA
P 5150 1250
F 0 "U4" H 5108 1296 50  0000 L CNN
F 1 "TL072" H 5108 1205 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5150 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5150 1250 50  0001 C CNN
	3    5150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0108
U 1 1 65BB1530
P 5050 850
F 0 "#PWR0108" H 5050 700 50  0001 C CNN
F 1 "+12V" H 5065 1023 50  0000 C CNN
F 2 "" H 5050 850 50  0001 C CNN
F 3 "" H 5050 850 50  0001 C CNN
	1    5050 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0109
U 1 1 65BB1805
P 5050 1650
F 0 "#PWR0109" H 5050 1750 50  0001 C CNN
F 1 "-12V" H 5065 1823 50  0000 C CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "" H 5050 1650 50  0001 C CNN
	1    5050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1650 5050 1550
Wire Wire Line
	5050 950  5050 850 
$Comp
L Device:C C4
U 1 1 65BB45AD
P 5450 1050
F 0 "C4" H 5565 1096 50  0000 L CNN
F 1 "100n" H 5565 1005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5488 900 50  0001 C CNN
F 3 "~" H 5450 1050 50  0001 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 65BB4B39
P 5450 1450
F 0 "C5" H 5565 1496 50  0000 L CNN
F 1 "100n" H 5565 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5488 1300 50  0001 C CNN
F 3 "~" H 5450 1450 50  0001 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0110
U 1 1 65BB4D78
P 5450 1650
F 0 "#PWR0110" H 5450 1750 50  0001 C CNN
F 1 "-12V" H 5465 1823 50  0000 C CNN
F 2 "" H 5450 1650 50  0001 C CNN
F 3 "" H 5450 1650 50  0001 C CNN
	1    5450 1650
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0111
U 1 1 65BB4FE1
P 5450 850
F 0 "#PWR0111" H 5450 700 50  0001 C CNN
F 1 "+12V" H 5465 1023 50  0000 C CNN
F 2 "" H 5450 850 50  0001 C CNN
F 3 "" H 5450 850 50  0001 C CNN
	1    5450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 850  5450 900 
Wire Wire Line
	5450 1200 5450 1250
Wire Wire Line
	5450 1600 5450 1650
$Comp
L power:GND #PWR0112
U 1 1 65BB7627
P 5600 1250
F 0 "#PWR0112" H 5600 1000 50  0001 C CNN
F 1 "GND" V 5605 1122 50  0000 R CNN
F 2 "" H 5600 1250 50  0001 C CNN
F 3 "" H 5600 1250 50  0001 C CNN
	1    5600 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 1250 5450 1250
Connection ~ 5450 1250
Wire Wire Line
	5450 1250 5450 1300
$Comp
L Diode:1N5711 D5
U 1 1 65BC1C84
P 3050 6200
F 0 "D5" V 3004 6280 50  0000 L CNN
F 1 "1N5711" V 3095 6280 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3050 6025 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 3050 6200 50  0001 C CNN
	1    3050 6200
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5711 D6
U 1 1 65BC38F3
P 3050 6700
F 0 "D6" V 3004 6780 50  0000 L CNN
F 1 "1N5711" V 3095 6780 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3050 6525 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 3050 6700 50  0001 C CNN
	1    3050 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 6450 3050 6450
Wire Wire Line
	3050 6450 3050 6350
Wire Wire Line
	3050 6450 3050 6550
Connection ~ 3050 6450
$Comp
L power:GND #PWR0113
U 1 1 65BC9377
P 3050 6900
F 0 "#PWR0113" H 3050 6650 50  0001 C CNN
F 1 "GND" H 3055 6727 50  0000 C CNN
F 2 "" H 3050 6900 50  0001 C CNN
F 3 "" H 3050 6900 50  0001 C CNN
	1    3050 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6900 3050 6850
$Comp
L power:+5V #PWR0114
U 1 1 65BCBEB1
P 3050 6000
F 0 "#PWR0114" H 3050 5850 50  0001 C CNN
F 1 "+5V" H 3065 6173 50  0000 C CNN
F 2 "" H 3050 6000 50  0001 C CNN
F 3 "" H 3050 6000 50  0001 C CNN
	1    3050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6000 3050 6050
Text GLabel 3300 6450 2    50   Input ~ 0
Portamento
Wire Wire Line
	3300 6450 3050 6450
$Comp
L Diode:1N5711 D7
U 1 1 65BE9308
P 3000 8700
F 0 "D7" V 2954 8780 50  0000 L CNN
F 1 "1N5711" V 3045 8780 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3000 8525 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 3000 8700 50  0001 C CNN
	1    3000 8700
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5711 D8
U 1 1 65BE930E
P 3000 9200
F 0 "D8" V 2954 9280 50  0000 L CNN
F 1 "1N5711" V 3045 9280 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3000 9025 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 3000 9200 50  0001 C CNN
	1    3000 9200
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 8950 3000 8950
Wire Wire Line
	3000 8950 3000 8850
Wire Wire Line
	3000 8950 3000 9050
Connection ~ 3000 8950
$Comp
L power:GND #PWR0115
U 1 1 65BE9318
P 3000 9400
F 0 "#PWR0115" H 3000 9150 50  0001 C CNN
F 1 "GND" H 3005 9227 50  0000 C CNN
F 2 "" H 3000 9400 50  0001 C CNN
F 3 "" H 3000 9400 50  0001 C CNN
	1    3000 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 9400 3000 9350
$Comp
L power:+5V #PWR0116
U 1 1 65BE931F
P 3000 8500
F 0 "#PWR0116" H 3000 8350 50  0001 C CNN
F 1 "+5V" H 3015 8673 50  0000 C CNN
F 2 "" H 3000 8500 50  0001 C CNN
F 3 "" H 3000 8500 50  0001 C CNN
	1    3000 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 8500 3000 8550
Text GLabel 3250 8950 2    50   Input ~ 0
Transpose
Wire Wire Line
	3250 8950 3000 8950
Text GLabel 7300 2500 2    50   Input ~ 0
Portamento
Wire Wire Line
	7300 2500 7150 2500
Text GLabel 7300 2600 2    50   Input ~ 0
Transpose
Wire Wire Line
	7300 2600 7150 2600
$Comp
L Reference_Voltage:TL431LP U5
U 1 1 65C03FB4
P 6200 5500
F 0 "U5" V 6246 5430 50  0000 R CNN
F 1 "TL431LP" V 6150 5400 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 5350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 6200 5500 50  0001 C CIN
	1    6200 5500
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 65C2855D
P 6200 6050
F 0 "#PWR0117" H 6200 5800 50  0001 C CNN
F 1 "GND" H 6205 5877 50  0000 C CNN
F 2 "" H 6200 6050 50  0001 C CNN
F 3 "" H 6200 6050 50  0001 C CNN
	1    6200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5600 6200 6050
$Comp
L Device:R_POT_US RV1
U 1 1 65C2C06B
P 6600 5500
F 0 "RV1" H 6532 5546 50  0000 R CNN
F 1 "VRef Trim" H 6532 5455 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 6600 5500 50  0001 C CNN
F 3 "~" H 6600 5500 50  0001 C CNN
	1    6600 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 5500 6450 5500
$Comp
L power:GND #PWR0118
U 1 1 65C37025
P 6600 6050
F 0 "#PWR0118" H 6600 5800 50  0001 C CNN
F 1 "GND" H 6605 5877 50  0000 C CNN
F 2 "" H 6600 6050 50  0001 C CNN
F 3 "" H 6600 6050 50  0001 C CNN
	1    6600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5650 6600 5700
$Comp
L Device:R_US R10
U 1 1 65C3AE01
P 6600 5850
F 0 "R10" H 6532 5804 50  0000 R CNN
F 1 "10k" H 6532 5895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6640 5840 50  0001 C CNN
F 3 "~" H 6600 5850 50  0001 C CNN
	1    6600 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 6000 6600 6050
$Comp
L Device:R_US R9
U 1 1 65C3F208
P 6600 5150
F 0 "R9" H 6532 5104 50  0000 R CNN
F 1 "10k" H 6532 5195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6640 5140 50  0001 C CNN
F 3 "~" H 6600 5150 50  0001 C CNN
	1    6600 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 5300 6600 5350
$Comp
L Device:C C7
U 1 1 65C43363
P 7200 5500
F 0 "C7" H 7315 5546 50  0000 L CNN
F 1 "100nF" H 7315 5455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7238 5350 50  0001 C CNN
F 3 "~" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4950 6200 4950
Wire Wire Line
	6200 4950 6200 5400
Wire Wire Line
	6600 4950 6600 5000
Wire Wire Line
	6600 4950 7200 4950
Wire Wire Line
	7200 4950 7200 5350
Connection ~ 6600 4950
$Comp
L power:GND #PWR0119
U 1 1 65C4F7A6
P 7200 6050
F 0 "#PWR0119" H 7200 5800 50  0001 C CNN
F 1 "GND" H 7205 5877 50  0000 C CNN
F 2 "" H 7200 6050 50  0001 C CNN
F 3 "" H 7200 6050 50  0001 C CNN
	1    7200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5650 7200 6050
$Comp
L Device:R_US R6
U 1 1 65C53A18
P 5800 4950
F 0 "R6" V 6005 4950 50  0000 C CNN
F 1 "330" V 5914 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5840 4940 50  0001 C CNN
F 3 "~" H 5800 4950 50  0001 C CNN
	1    5800 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4950 6200 4950
Connection ~ 6200 4950
$Comp
L Device:C C6
U 1 1 65C58924
P 5350 5500
F 0 "C6" H 5465 5546 50  0000 L CNN
F 1 "100nF" H 5465 5455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5388 5350 50  0001 C CNN
F 3 "~" H 5350 5500 50  0001 C CNN
	1    5350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5350 5350 4950
Wire Wire Line
	5350 4950 5650 4950
$Comp
L power:GND #PWR0120
U 1 1 65C5D18B
P 5350 6050
F 0 "#PWR0120" H 5350 5800 50  0001 C CNN
F 1 "GND" H 5355 5877 50  0000 C CNN
F 2 "" H 5350 6050 50  0001 C CNN
F 3 "" H 5350 6050 50  0001 C CNN
	1    5350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5650 5350 6050
Connection ~ 7200 4950
Text GLabel 7500 4950 2    50   Input ~ 0
VREF
$Comp
L power:+12V #PWR0121
U 1 1 65C6ECE6
P 5350 4900
F 0 "#PWR0121" H 5350 4750 50  0001 C CNN
F 1 "+12V" H 5365 5073 50  0000 C CNN
F 2 "" H 5350 4900 50  0001 C CNN
F 3 "" H 5350 4900 50  0001 C CNN
	1    5350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4900 5350 4950
Connection ~ 5350 4950
Text GLabel 9700 950  1    50   Input ~ 0
VREF
Wire Wire Line
	9700 950  9700 1050
Text GLabel 9700 2700 1    50   Input ~ 0
VREF
Wire Wire Line
	9700 2700 9700 2800
Text GLabel 7300 2100 2    50   Input ~ 0
VREF
Wire Wire Line
	7300 2100 7150 2100
$Comp
L power:+5V #PWR0122
U 1 1 65C867A3
P 9500 950
F 0 "#PWR0122" H 9500 800 50  0001 C CNN
F 1 "+5V" H 9515 1123 50  0000 C CNN
F 2 "" H 9500 950 50  0001 C CNN
F 3 "" H 9500 950 50  0001 C CNN
	1    9500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 950  9500 1050
$Comp
L power:+5V #PWR0123
U 1 1 65C8B8A0
P 9500 2700
F 0 "#PWR0123" H 9500 2550 50  0001 C CNN
F 1 "+5V" H 9515 2873 50  0000 C CNN
F 2 "" H 9500 2700 50  0001 C CNN
F 3 "" H 9500 2700 50  0001 C CNN
	1    9500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2700 9500 2800
Wire Wire Line
	1650 6450 1950 6450
$Comp
L Device:R_US R12
U 1 1 65C9DB63
P 2700 6450
F 0 "R12" V 2905 6450 50  0000 C CNN
F 1 "100k" V 2814 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2740 6440 50  0001 C CNN
F 3 "~" H 2700 6450 50  0001 C CNN
	1    2700 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 65CBC7C9
P 2650 8950
F 0 "R17" V 2855 8950 50  0000 C CNN
F 1 "100k" V 2764 8950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2690 8940 50  0001 C CNN
F 3 "~" H 2650 8950 50  0001 C CNN
	1    2650 8950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 8150 1500 8150
$Comp
L Diode:1N5711 D3
U 1 1 65CD077D
P 2450 4200
F 0 "D3" V 2404 4280 50  0000 L CNN
F 1 "1N5711" V 2495 4280 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 4025 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 2450 4200 50  0001 C CNN
	1    2450 4200
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5711 D4
U 1 1 65CD0783
P 2450 4700
F 0 "D4" V 2404 4780 50  0000 L CNN
F 1 "1N5711" V 2495 4780 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 4525 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 2450 4700 50  0001 C CNN
	1    2450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 4450 2450 4450
Wire Wire Line
	2450 4450 2450 4350
Wire Wire Line
	2450 4450 2450 4550
Connection ~ 2450 4450
$Comp
L power:GND #PWR0125
U 1 1 65CD078D
P 2450 4900
F 0 "#PWR0125" H 2450 4650 50  0001 C CNN
F 1 "GND" H 2455 4727 50  0000 C CNN
F 2 "" H 2450 4900 50  0001 C CNN
F 3 "" H 2450 4900 50  0001 C CNN
	1    2450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4900 2450 4850
$Comp
L power:+5V #PWR0126
U 1 1 65CD0794
P 2450 4000
F 0 "#PWR0126" H 2450 3850 50  0001 C CNN
F 1 "+5V" H 2465 4173 50  0000 C CNN
F 2 "" H 2450 4000 50  0001 C CNN
F 3 "" H 2450 4000 50  0001 C CNN
	1    2450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4000 2450 4050
Text GLabel 2700 4450 2    50   Input ~ 0
CV_B
Wire Wire Line
	2700 4450 2450 4450
$Comp
L Device:R_US R4
U 1 1 65CD079D
P 2100 4450
F 0 "R4" V 2305 4450 50  0000 C CNN
F 1 "100k" V 2214 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2140 4440 50  0001 C CNN
F 3 "~" H 2100 4450 50  0001 C CNN
	1    2100 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 4450 1450 4450
Wire Wire Line
	1200 4350 1300 4350
Wire Wire Line
	1300 4350 1300 4250
Wire Wire Line
	1300 2750 1300 2850
$Comp
L Diode:1N5711 D1
U 1 1 65CE93A6
P 2450 2700
F 0 "D1" V 2404 2780 50  0000 L CNN
F 1 "1N5711" V 2495 2780 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 2525 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 2450 2700 50  0001 C CNN
	1    2450 2700
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5711 D2
U 1 1 65CE93AC
P 2450 3200
F 0 "D2" V 2404 3280 50  0000 L CNN
F 1 "1N5711" V 2495 3280 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 3025 50  0001 C CNN
F 3 "https://www.microsemi.com/document-portal/doc_download/8865-lds-0040-datasheet" H 2450 3200 50  0001 C CNN
	1    2450 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2950 2450 2950
Wire Wire Line
	2450 2950 2450 2850
Wire Wire Line
	2450 2950 2450 3050
Connection ~ 2450 2950
$Comp
L power:GND #PWR0129
U 1 1 65CE93B6
P 2450 3400
F 0 "#PWR0129" H 2450 3150 50  0001 C CNN
F 1 "GND" H 2455 3227 50  0000 C CNN
F 2 "" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3400 2450 3350
$Comp
L power:+5V #PWR0130
U 1 1 65CE93BD
P 2450 2500
F 0 "#PWR0130" H 2450 2350 50  0001 C CNN
F 1 "+5V" H 2465 2673 50  0000 C CNN
F 2 "" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2500 2450 2550
Text GLabel 2700 2950 2    50   Input ~ 0
CV_A
Wire Wire Line
	2700 2950 2450 2950
$Comp
L Device:R_US R2
U 1 1 65CE93C6
P 2100 2950
F 0 "R2" V 2305 2950 50  0000 C CNN
F 1 "100k" V 2214 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2140 2940 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 65D4F9BC
P 9000 1350
F 0 "#PWR0131" H 9000 1100 50  0001 C CNN
F 1 "GND" V 9005 1222 50  0000 R CNN
F 2 "" H 9000 1350 50  0001 C CNN
F 3 "" H 9000 1350 50  0001 C CNN
	1    9000 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1350 9100 1350
$Comp
L power:GND #PWR0132
U 1 1 65D538B4
P 9000 3100
F 0 "#PWR0132" H 9000 2850 50  0001 C CNN
F 1 "GND" V 9005 2972 50  0000 R CNN
F 2 "" H 9000 3100 50  0001 C CNN
F 3 "" H 9000 3100 50  0001 C CNN
	1    9000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 3100 9100 3100
Text GLabel 6050 3000 0    50   Input ~ 0
SCK
Wire Wire Line
	6050 3000 6150 3000
Text GLabel 9000 1550 0    50   Input ~ 0
SCK
Wire Wire Line
	9000 1550 9100 1550
Text GLabel 9000 3300 0    50   Input ~ 0
SCK
Wire Wire Line
	9000 3300 9100 3300
Text GLabel 6050 2600 0    50   Input ~ 0
CS_A
Wire Wire Line
	6050 2600 6150 2600
Text GLabel 6050 2700 0    50   Input ~ 0
CS_B
Wire Wire Line
	6050 2700 6150 2700
Text GLabel 9000 1450 0    50   Input ~ 0
CS_A
Wire Wire Line
	9000 1450 9100 1450
Text GLabel 9000 3200 0    50   Input ~ 0
CS_B
Wire Wire Line
	9000 3200 9100 3200
Text GLabel 6050 2800 0    50   Input ~ 0
MOSI
Wire Wire Line
	6050 2800 6150 2800
Text GLabel 9000 1650 0    50   Input ~ 0
MOSI
Wire Wire Line
	9000 1650 9100 1650
Text GLabel 9000 3400 0    50   Input ~ 0
MOSI
Wire Wire Line
	9000 3400 9100 3400
$Comp
L Amplifier_Operational:TL072 U4
U 1 1 65D89B8B
P 11350 1550
F 0 "U4" H 11350 1917 50  0000 C CNN
F 1 "TL072" H 11350 1826 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 11350 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 11350 1550 50  0001 C CNN
	1    11350 1550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U4
U 2 1 65D8AF2B
P 11350 3300
F 0 "U4" H 11350 3667 50  0000 C CNN
F 1 "TL072" H 11350 3576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 11350 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 11350 3300 50  0001 C CNN
	2    11350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1450 11050 1450
Wire Wire Line
	10200 3200 11050 3200
Wire Wire Line
	11050 3400 11000 3400
Wire Wire Line
	11000 3400 11000 3650
Wire Wire Line
	11000 3650 11700 3650
Wire Wire Line
	11700 3650 11700 3300
Wire Wire Line
	11700 3300 11650 3300
Wire Wire Line
	11050 1650 11000 1650
Wire Wire Line
	11000 1650 11000 1850
Wire Wire Line
	11000 1850 11700 1850
Wire Wire Line
	11700 1850 11700 1550
Wire Wire Line
	11700 1550 11650 1550
$Comp
L Device:R_US R3
U 1 1 65DA7030
P 12000 3300
F 0 "R3" V 12205 3300 50  0000 C CNN
F 1 "1k" V 12114 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 12040 3290 50  0001 C CNN
F 3 "~" H 12000 3300 50  0001 C CNN
	1    12000 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11700 3300 11850 3300
Connection ~ 11700 3300
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 65DAC523
P 13050 3300
F 0 "J5" H 12870 3233 50  0000 R CNN
F 1 "CV OUT B" H 12870 3324 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 13050 3300 50  0001 C CNN
F 3 "~" H 13050 3300 50  0001 C CNN
	1    13050 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R1
U 1 1 65DB7B5A
P 12000 1550
F 0 "R1" V 12205 1550 50  0000 C CNN
F 1 "1k" V 12114 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 12040 1540 50  0001 C CNN
F 3 "~" H 12000 1550 50  0001 C CNN
	1    12000 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11700 1550 11850 1550
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 65DB7B61
P 13050 1550
F 0 "J4" H 12870 1483 50  0000 R CNN
F 1 "CV OUT A" H 12870 1574 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 13050 1550 50  0001 C CNN
F 3 "~" H 13050 1550 50  0001 C CNN
	1    13050 1550
	-1   0    0    1   
$EndComp
Connection ~ 11700 1550
Wire Wire Line
	7200 4950 7500 4950
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 65E1260F
P 4650 7650
F 0 "J9" H 4470 7583 50  0000 R CNN
F 1 "TRIGGER IN A" H 4470 7674 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 4650 7650 50  0001 C CNN
F 3 "~" H 4650 7650 50  0001 C CNN
	1    4650 7650
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 7750 4950 7750
Wire Wire Line
	4950 7750 4950 7850
Wire Wire Line
	4850 7550 4950 7550
$Comp
L Connector:AudioJack2_SwitchT J11
U 1 1 65E1261E
P 4650 9150
F 0 "J11" H 4470 9083 50  0000 R CNN
F 1 "TRIGGER IN B" H 4470 9174 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 4650 9150 50  0001 C CNN
F 3 "~" H 4650 9150 50  0001 C CNN
	1    4650 9150
	1    0    0    1   
$EndComp
Wire Wire Line
	4850 9250 4950 9250
Wire Wire Line
	4950 9250 4950 9350
Text GLabel 6800 8800 2    50   Input ~ 0
TGR_IN_B
$Comp
L Device:R_US R18
U 1 1 65E1264C
P 5850 9150
F 0 "R18" V 6055 9150 50  0000 C CNN
F 1 "100k" V 5964 9150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5890 9140 50  0001 C CNN
F 3 "~" H 5850 9150 50  0001 C CNN
	1    5850 9150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 9150 5100 9150
Wire Wire Line
	4850 9050 4950 9050
Wire Wire Line
	4950 9050 4950 8950
Wire Wire Line
	4950 7450 4950 7550
$Comp
L power:GND #PWR0137
U 1 1 65E12672
P 6100 8150
F 0 "#PWR0137" H 6100 7900 50  0001 C CNN
F 1 "GND" H 6105 7977 50  0000 C CNN
F 2 "" H 6100 8150 50  0001 C CNN
F 3 "" H 6100 8150 50  0001 C CNN
	1    6100 8150
	1    0    0    -1  
$EndComp
Text GLabel 6800 7300 2    50   Input ~ 0
TGR_IN_A
$Comp
L Device:R_US R15
U 1 1 65E12682
P 5850 7650
F 0 "R15" V 6055 7650 50  0000 C CNN
F 1 "100k" V 5964 7650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5890 7640 50  0001 C CNN
F 3 "~" H 5850 7650 50  0001 C CNN
	1    5850 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 7650 5100 7650
Wire Wire Line
	12850 1650 12800 1650
Wire Wire Line
	12800 1650 12800 1700
Wire Wire Line
	12850 3400 12800 3400
Wire Wire Line
	12800 3400 12800 3450
NoConn ~ 12850 1450
NoConn ~ 12850 3200
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 65E36186
P 6550 7650
F 0 "Q3" H 6740 7696 50  0000 L CNN
F 1 "2N3904" H 6740 7605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6750 7575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6550 7650 50  0001 L CNN
	1    6550 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 7300 6650 7300
Wire Wire Line
	6650 7300 6650 7450
$Comp
L Device:R_US R16
U 1 1 65E3DC0B
P 6100 7900
F 0 "R16" H 6168 7946 50  0000 L CNN
F 1 "33k" H 6168 7855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6140 7890 50  0001 C CNN
F 3 "~" H 6100 7900 50  0001 C CNN
	1    6100 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 7650 6100 7650
Wire Wire Line
	6100 7650 6100 7750
Wire Wire Line
	6100 8050 6100 8150
$Comp
L power:GND #PWR0140
U 1 1 65E4BE7D
P 6650 7950
F 0 "#PWR0140" H 6650 7700 50  0001 C CNN
F 1 "GND" H 6655 7777 50  0000 C CNN
F 2 "" H 6650 7950 50  0001 C CNN
F 3 "" H 6650 7950 50  0001 C CNN
	1    6650 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 7850 6650 7950
Wire Wire Line
	6100 7650 6350 7650
Connection ~ 6100 7650
$Comp
L power:GND #PWR0141
U 1 1 65E618D4
P 6100 9650
F 0 "#PWR0141" H 6100 9400 50  0001 C CNN
F 1 "GND" H 6105 9477 50  0000 C CNN
F 2 "" H 6100 9650 50  0001 C CNN
F 3 "" H 6100 9650 50  0001 C CNN
	1    6100 9650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 65E618DB
P 6550 9150
F 0 "Q4" H 6740 9196 50  0000 L CNN
F 1 "2N3904" H 6740 9105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6750 9075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 6550 9150 50  0001 L CNN
	1    6550 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 8800 6650 8800
Wire Wire Line
	6650 8800 6650 8950
$Comp
L Device:R_US R19
U 1 1 65E618E3
P 6100 9400
F 0 "R19" H 6168 9446 50  0000 L CNN
F 1 "33k" H 6168 9355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6140 9390 50  0001 C CNN
F 3 "~" H 6100 9400 50  0001 C CNN
	1    6100 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 9150 6100 9150
Wire Wire Line
	6100 9150 6100 9250
Wire Wire Line
	6100 9550 6100 9650
$Comp
L power:GND #PWR0142
U 1 1 65E618EC
P 6650 9450
F 0 "#PWR0142" H 6650 9200 50  0001 C CNN
F 1 "GND" H 6655 9277 50  0000 C CNN
F 2 "" H 6650 9450 50  0001 C CNN
F 3 "" H 6650 9450 50  0001 C CNN
	1    6650 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 9350 6650 9450
Wire Wire Line
	6100 9150 6350 9150
Connection ~ 6100 9150
Text GLabel 6050 1900 0    50   Input ~ 0
TGR_IN_A
Wire Wire Line
	6050 1900 6150 1900
Text GLabel 6050 2000 0    50   Input ~ 0
TGR_IN_B
Wire Wire Line
	6050 2000 6150 2000
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 65E7DF0D
P 13050 4800
F 0 "J6" H 12870 4733 50  0000 R CNN
F 1 "TRIGGER OUT A" H 12870 4824 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 13050 4800 50  0001 C CNN
F 3 "~" H 13050 4800 50  0001 C CNN
	1    13050 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	12850 4900 12750 4900
Wire Wire Line
	12750 4900 12750 5000
Text GLabel 10450 5000 0    50   Input ~ 0
TGR_OUT_A
$Comp
L Device:R_US R7
U 1 1 65E7DF1C
P 10750 5000
F 0 "R7" V 10955 5000 50  0000 C CNN
F 1 "10k" V 10864 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10790 4990 50  0001 C CNN
F 3 "~" H 10750 5000 50  0001 C CNN
	1    10750 5000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 65E7DF2B
P 11850 5300
F 0 "#PWR0144" H 11850 5050 50  0001 C CNN
F 1 "GND" H 11855 5127 50  0000 C CNN
F 2 "" H 11850 5300 50  0001 C CNN
F 3 "" H 11850 5300 50  0001 C CNN
	1    11850 5300
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 65E7DF31
P 11250 5000
F 0 "Q1" H 11440 5046 50  0000 L CNN
F 1 "2N3904" H 11440 4955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11450 4925 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 11250 5000 50  0001 L CNN
	1    11250 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 65E7DF42
P 11350 5300
F 0 "#PWR0145" H 11350 5050 50  0001 C CNN
F 1 "GND" H 11355 5127 50  0000 C CNN
F 2 "" H 11350 5300 50  0001 C CNN
F 3 "" H 11350 5300 50  0001 C CNN
	1    11350 5300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 65E96144
P 11850 4550
F 0 "R5" H 11782 4596 50  0000 R CNN
F 1 "5.1k" H 11782 4505 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11890 4540 50  0001 C CNN
F 3 "~" H 11850 4550 50  0001 C CNN
	1    11850 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 65E96C9F
P 11850 5050
F 0 "R8" H 11782 5096 50  0000 R CNN
F 1 "15k" H 11782 5005 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11890 5040 50  0001 C CNN
F 3 "~" H 11850 5050 50  0001 C CNN
	1    11850 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11850 4700 11850 4800
Wire Wire Line
	11350 4800 11850 4800
Connection ~ 11850 4800
Wire Wire Line
	11850 4800 11850 4900
NoConn ~ 12850 4700
$Comp
L power:+12V #PWR0146
U 1 1 65EBDC67
P 11850 4300
F 0 "#PWR0146" H 11850 4150 50  0001 C CNN
F 1 "+12V" H 11865 4473 50  0000 C CNN
F 2 "" H 11850 4300 50  0001 C CNN
F 3 "" H 11850 4300 50  0001 C CNN
	1    11850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 4300 11850 4400
Wire Wire Line
	11850 5200 11850 5300
Wire Wire Line
	11350 5200 11350 5300
Wire Wire Line
	10450 5000 10600 5000
Wire Wire Line
	10900 5000 11050 5000
$Comp
L Connector:AudioJack2_SwitchT J7
U 1 1 65F0279E
P 13050 6400
F 0 "J7" H 12870 6333 50  0000 R CNN
F 1 "TRIGGER OUT B" H 12870 6424 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 13050 6400 50  0001 C CNN
F 3 "~" H 13050 6400 50  0001 C CNN
	1    13050 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	12850 6500 12750 6500
Wire Wire Line
	12750 6500 12750 6600
Text GLabel 10450 6600 0    50   Input ~ 0
TGR_OUT_B
$Comp
L Device:R_US R13
U 1 1 65F027AD
P 10750 6600
F 0 "R13" V 10955 6600 50  0000 C CNN
F 1 "10k" V 10864 6600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10790 6590 50  0001 C CNN
F 3 "~" H 10750 6600 50  0001 C CNN
	1    10750 6600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 65F027B3
P 11850 6900
F 0 "#PWR0148" H 11850 6650 50  0001 C CNN
F 1 "GND" H 11855 6727 50  0000 C CNN
F 2 "" H 11850 6900 50  0001 C CNN
F 3 "" H 11850 6900 50  0001 C CNN
	1    11850 6900
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 65F027B9
P 11250 6600
F 0 "Q2" H 11440 6646 50  0000 L CNN
F 1 "2N3904" H 11440 6555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 11450 6525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 11250 6600 50  0001 L CNN
	1    11250 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 65F027BF
P 11350 6900
F 0 "#PWR0149" H 11350 6650 50  0001 C CNN
F 1 "GND" H 11355 6727 50  0000 C CNN
F 2 "" H 11350 6900 50  0001 C CNN
F 3 "" H 11350 6900 50  0001 C CNN
	1    11350 6900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 65F027C5
P 11850 6150
F 0 "R11" H 11782 6196 50  0000 R CNN
F 1 "5.1k" H 11782 6105 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11890 6140 50  0001 C CNN
F 3 "~" H 11850 6150 50  0001 C CNN
	1    11850 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R14
U 1 1 65F027CB
P 11850 6650
F 0 "R14" H 11782 6696 50  0000 R CNN
F 1 "15k" H 11782 6605 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 11890 6640 50  0001 C CNN
F 3 "~" H 11850 6650 50  0001 C CNN
	1    11850 6650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11850 6300 11850 6400
Wire Wire Line
	11350 6400 11850 6400
Connection ~ 11850 6400
Wire Wire Line
	11850 6400 11850 6500
NoConn ~ 12850 6300
$Comp
L power:+12V #PWR0150
U 1 1 65F027D6
P 11850 5900
F 0 "#PWR0150" H 11850 5750 50  0001 C CNN
F 1 "+12V" H 11865 6073 50  0000 C CNN
F 2 "" H 11850 5900 50  0001 C CNN
F 3 "" H 11850 5900 50  0001 C CNN
	1    11850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 5900 11850 6000
Wire Wire Line
	11850 6800 11850 6900
Wire Wire Line
	11350 6800 11350 6900
Wire Wire Line
	10450 6600 10600 6600
Wire Wire Line
	10900 6600 11050 6600
Text GLabel 7300 2800 2    50   Input ~ 0
TGR_OUT_A
Text GLabel 7300 2700 2    50   Input ~ 0
TGR_OUT_B
Wire Wire Line
	6050 2100 6150 2100
Wire Wire Line
	6050 2200 6150 2200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 65F40779
P 2300 700
F 0 "#FLG0101" H 2300 775 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 873 50  0000 C CNN
F 2 "" H 2300 700 50  0001 C CNN
F 3 "~" H 2300 700 50  0001 C CNN
	1    2300 700 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 65F4AD50
P 2300 1700
F 0 "#FLG0102" H 2300 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1873 50  0000 C CNN
F 2 "" H 2300 1700 50  0001 C CNN
F 3 "~" H 2300 1700 50  0001 C CNN
	1    2300 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 700  1950 700 
Connection ~ 1950 700 
Wire Wire Line
	2300 1700 1950 1700
Connection ~ 1950 1700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 65F83CC4
P 2500 1350
F 0 "#FLG0103" H 2500 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 1523 50  0000 C CNN
F 2 "" H 2500 1350 50  0001 C CNN
F 3 "~" H 2500 1350 50  0001 C CNN
	1    2500 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1350 2500 1200
Connection ~ 2500 1200
Wire Wire Line
	2500 1200 1950 1200
Wire Wire Line
	6850 1100 6850 1300
NoConn ~ 6150 2900
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 65FA1BE8
P 7200 4750
F 0 "#FLG0104" H 7200 4825 50  0001 C CNN
F 1 "PWR_FLAG" H 7200 4923 50  0000 C CNN
F 2 "" H 7200 4750 50  0001 C CNN
F 3 "~" H 7200 4750 50  0001 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4750 7200 4950
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 65FACBD8
P 11450 8400
F 0 "SW1" H 11450 8767 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 11450 8676 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 11300 8560 50  0001 C CNN
F 3 "~" H 11450 8660 50  0001 C CNN
	1    11450 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 8500 11850 8500
Wire Wire Line
	11850 8500 11850 8600
Text GLabel 6050 2300 0    50   Input ~ 0
ENC_BTN
Text GLabel 12400 8300 2    50   Input ~ 0
ENC_BTN
Wire Wire Line
	11750 8300 11900 8300
Wire Wire Line
	11100 8400 11150 8400
Text GLabel 9800 8300 0    50   Input ~ 0
ENC_A
Wire Wire Line
	10500 8300 10600 8300
Text GLabel 9800 8500 0    50   Input ~ 0
ENC_B
Wire Wire Line
	10500 8500 11000 8500
$Comp
L Device:C C2
U 1 1 65FF5665
P 10600 8750
F 0 "C2" H 10715 8796 50  0000 L CNN
F 1 "10n" H 10715 8705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10638 8600 50  0001 C CNN
F 3 "~" H 10600 8750 50  0001 C CNN
	1    10600 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 8600 10600 8300
Connection ~ 10600 8300
Wire Wire Line
	10600 8300 11150 8300
Wire Wire Line
	10600 8900 10600 9000
$Comp
L Device:C C8
U 1 1 6600B18C
P 11000 8750
F 0 "C8" H 11115 8796 50  0000 L CNN
F 1 "10n" H 11115 8705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 11038 8600 50  0001 C CNN
F 3 "~" H 11000 8750 50  0001 C CNN
	1    11000 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8600 11000 8500
Connection ~ 11000 8500
Wire Wire Line
	11000 8500 11150 8500
Wire Wire Line
	11000 9000 11000 8900
Text GLabel 6050 2100 0    50   Input ~ 0
ENC_A
Text GLabel 6050 2200 0    50   Input ~ 0
ENC_B
Wire Wire Line
	7300 2800 7150 2800
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 65B78078
P 6650 2300
F 0 "A1" H 6650 1211 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6650 1120 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6650 2300 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6650 2300 50  0001 C CNN
	1    6650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2700 7300 2700
NoConn ~ 6150 2500
Text GLabel 6050 2400 0    50   Input ~ 0
LEDs
Wire Wire Line
	6050 2300 6150 2300
Text GLabel 6800 4100 0    50   Input ~ 0
LEDs
NoConn ~ 8150 3750
Wire Wire Line
	7850 4050 7850 4100
Wire Wire Line
	7850 3400 7850 3450
Wire Wire Line
	6050 2400 6150 2400
NoConn ~ 7150 3000
Wire Wire Line
	1300 5750 1500 5750
Wire Wire Line
	1400 5950 1400 5850
Wire Wire Line
	1300 5850 1400 5850
Wire Wire Line
	1300 5650 1400 5650
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 65B9B6D4
P 1100 5750
F 0 "J8" H 921 5683 50  0000 R CNN
F 1 "Portamento" H 921 5774 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1100 5750 50  0001 C CNN
F 3 "~" H 1100 5750 50  0001 C CNN
	1    1100 5750
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 65B92948
P 4100 1100
F 0 "#PWR0103" H 4100 950 50  0001 C CNN
F 1 "+5V" V 4115 1228 50  0000 L CNN
F 2 "" H 4100 1100 50  0001 C CNN
F 3 "" H 4100 1100 50  0001 C CNN
	1    4100 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 5750 1500 6300
Wire Wire Line
	1650 8950 1900 8950
Wire Wire Line
	1500 8150 1500 8800
$Comp
L LED:WS2811_5.0mm_LED D9
U 1 1 6620DA5D
P 7850 3750
F 0 "D9" H 8194 3796 50  0000 L CNN
F 1 "WS2811_5.0mm_LED" H 8194 3705 50  0000 L CNN
F 2 "Custom:LED_D5.0mm-WS2811" H 7900 3450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7950 3375 50  0001 L TNN
	1    7850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0104
U 1 1 66278D19
P 3300 900
F 0 "#PWR0104" H 3300 650 50  0001 C CNN
F 1 "GND2" V 3305 772 50  0000 R CNN
F 2 "" H 3300 900 50  0001 C CNN
F 3 "" H 3300 900 50  0001 C CNN
	1    3300 900 
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J12
U 1 1 6627B48E
P 3700 900
F 0 "J12" H 3808 1081 50  0000 C CNN
F 1 "g" H 3808 990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3700 900 50  0001 C CNN
F 3 "~" H 3700 900 50  0001 C CNN
	1    3700 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J13
U 1 1 6627D420
P 3700 900
F 0 "J13" H 3728 926 50  0000 L CNN
F 1 "g" H 3728 835 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3700 900 50  0001 C CNN
F 3 "~" H 3700 900 50  0001 C CNN
	1    3700 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6627DE76
P 4050 900
F 0 "#PWR0105" H 4050 650 50  0001 C CNN
F 1 "GND" V 4055 772 50  0000 R CNN
F 2 "" H 4050 900 50  0001 C CNN
F 3 "" H 4050 900 50  0001 C CNN
	1    4050 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 900  3400 900 
Wire Wire Line
	3900 900  4050 900 
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 662964D8
P 3400 750
F 0 "#FLG0105" H 3400 825 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 923 50  0000 C CNN
F 2 "" H 3400 750 50  0001 C CNN
F 3 "~" H 3400 750 50  0001 C CNN
	1    3400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 750  3400 900 
Connection ~ 3400 900 
Wire Wire Line
	3400 900  3500 900 
Wire Wire Line
	1200 2950 1450 2950
Wire Wire Line
	1200 2850 1300 2850
Wire Wire Line
	1200 3050 1300 3050
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 65B7B7DB
P 1000 2950
F 0 "J2" H 820 2883 50  0000 R CNN
F 1 "CV IN A" H 820 2974 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1000 2950 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J18
U 1 1 662BE000
P 1650 2950
F 0 "J18" H 1758 3131 50  0000 C CNN
F 1 "g" H 1758 3040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1650 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J19
U 1 1 662BE006
P 1650 2950
F 0 "J19" H 1678 2976 50  0000 L CNN
F 1 "g" H 1678 2885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1650 2950 50  0001 C CNN
F 3 "~" H 1650 2950 50  0001 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J24
U 1 1 662C9FA6
P 1650 4450
F 0 "J24" H 1758 4631 50  0000 C CNN
F 1 "g" H 1758 4540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1650 4450 50  0001 C CNN
F 3 "~" H 1650 4450 50  0001 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J25
U 1 1 662C9FAC
P 1650 4450
F 0 "J25" H 1678 4476 50  0000 L CNN
F 1 "g" H 1678 4385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1650 4450 50  0001 C CNN
F 3 "~" H 1650 4450 50  0001 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J30
U 1 1 662D5EE8
P 2150 6450
F 0 "J30" H 2258 6631 50  0000 C CNN
F 1 "g" H 2258 6540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2150 6450 50  0001 C CNN
F 3 "~" H 2150 6450 50  0001 C CNN
	1    2150 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J31
U 1 1 662D5EEE
P 2150 6450
F 0 "J31" H 2178 6476 50  0000 L CNN
F 1 "g" H 2178 6385 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2150 6450 50  0001 C CNN
F 3 "~" H 2150 6450 50  0001 C CNN
	1    2150 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J34
U 1 1 662E1CCC
P 2100 8950
F 0 "J34" H 2208 9131 50  0000 C CNN
F 1 "g" H 2208 9040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 8950 50  0001 C CNN
F 3 "~" H 2100 8950 50  0001 C CNN
	1    2100 8950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J35
U 1 1 662E1CD2
P 2100 8950
F 0 "J35" H 2128 8976 50  0000 L CNN
F 1 "g" H 2128 8885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2100 8950 50  0001 C CNN
F 3 "~" H 2100 8950 50  0001 C CNN
	1    2100 8950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J32
U 1 1 662EDB5A
P 5300 7650
F 0 "J32" H 5408 7831 50  0000 C CNN
F 1 "g" H 5408 7740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 7650 50  0001 C CNN
F 3 "~" H 5300 7650 50  0001 C CNN
	1    5300 7650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J33
U 1 1 662EDB60
P 5300 7650
F 0 "J33" H 5328 7676 50  0000 L CNN
F 1 "g" H 5328 7585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 7650 50  0001 C CNN
F 3 "~" H 5300 7650 50  0001 C CNN
	1    5300 7650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J36
U 1 1 662F98EE
P 5300 9150
F 0 "J36" H 5408 9331 50  0000 C CNN
F 1 "g" H 5408 9240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 9150 50  0001 C CNN
F 3 "~" H 5300 9150 50  0001 C CNN
	1    5300 9150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J37
U 1 1 662F98F4
P 5300 9150
F 0 "J37" H 5328 9176 50  0000 L CNN
F 1 "g" H 5328 9085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 9150 50  0001 C CNN
F 3 "~" H 5300 9150 50  0001 C CNN
	1    5300 9150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J28
U 1 1 66305682
P 12400 6400
F 0 "J28" H 12508 6581 50  0000 C CNN
F 1 "g" H 12508 6490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12400 6400 50  0001 C CNN
F 3 "~" H 12400 6400 50  0001 C CNN
	1    12400 6400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J29
U 1 1 66305688
P 12400 6400
F 0 "J29" H 12428 6426 50  0000 L CNN
F 1 "g" H 12428 6335 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12400 6400 50  0001 C CNN
F 3 "~" H 12400 6400 50  0001 C CNN
	1    12400 6400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J26
U 1 1 663114F2
P 12400 4800
F 0 "J26" H 12508 4981 50  0000 C CNN
F 1 "g" H 12508 4890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12400 4800 50  0001 C CNN
F 3 "~" H 12400 4800 50  0001 C CNN
	1    12400 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J27
U 1 1 663114F8
P 12400 4800
F 0 "J27" H 12428 4826 50  0000 L CNN
F 1 "g" H 12428 4735 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12400 4800 50  0001 C CNN
F 3 "~" H 12400 4800 50  0001 C CNN
	1    12400 4800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J20
U 1 1 6631D286
P 12500 3300
F 0 "J20" H 12608 3481 50  0000 C CNN
F 1 "g" H 12608 3390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12500 3300 50  0001 C CNN
F 3 "~" H 12500 3300 50  0001 C CNN
	1    12500 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J21
U 1 1 6631D28C
P 12500 3300
F 0 "J21" H 12528 3326 50  0000 L CNN
F 1 "g" H 12528 3235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12500 3300 50  0001 C CNN
F 3 "~" H 12500 3300 50  0001 C CNN
	1    12500 3300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J16
U 1 1 6632901A
P 12500 1550
F 0 "J16" H 12608 1731 50  0000 C CNN
F 1 "g" H 12608 1640 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12500 1550 50  0001 C CNN
F 3 "~" H 12500 1550 50  0001 C CNN
	1    12500 1550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J17
U 1 1 66329020
P 12500 1550
F 0 "J17" H 12528 1576 50  0000 L CNN
F 1 "g" H 12528 1485 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12500 1550 50  0001 C CNN
F 3 "~" H 12500 1550 50  0001 C CNN
	1    12500 1550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J22
U 1 1 66334F5C
P 7150 4100
F 0 "J22" H 7258 4281 50  0000 C CNN
F 1 "g" H 7258 4190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7150 4100 50  0001 C CNN
F 3 "~" H 7150 4100 50  0001 C CNN
	1    7150 4100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J23
U 1 1 66334F62
P 7150 4100
F 0 "J23" H 7178 4126 50  0000 L CNN
F 1 "g" H 7178 4035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7150 4100 50  0001 C CNN
F 3 "~" H 7150 4100 50  0001 C CNN
	1    7150 4100
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0106
U 1 1 66340CB2
P 1300 2750
F 0 "#PWR0106" H 1300 2500 50  0001 C CNN
F 1 "GND2" H 1305 2577 50  0000 C CNN
F 2 "" H 1300 2750 50  0001 C CNN
F 3 "" H 1300 2750 50  0001 C CNN
	1    1300 2750
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0107
U 1 1 6634134E
P 1300 3150
F 0 "#PWR0107" H 1300 2900 50  0001 C CNN
F 1 "GND2" H 1305 2977 50  0000 C CNN
F 2 "" H 1300 3150 50  0001 C CNN
F 3 "" H 1300 3150 50  0001 C CNN
	1    1300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2950 1950 2950
$Comp
L power:GND2 #PWR0124
U 1 1 66367D24
P 1300 4650
F 0 "#PWR0124" H 1300 4400 50  0001 C CNN
F 1 "GND2" H 1305 4477 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "" H 1300 4650 50  0001 C CNN
	1    1300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4450 1950 4450
$Comp
L power:GND2 #PWR0127
U 1 1 6638E345
P 1300 4250
F 0 "#PWR0127" H 1300 4000 50  0001 C CNN
F 1 "GND2" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 6639027A
P 3700 1100
F 0 "J14" H 3808 1281 50  0000 C CNN
F 1 "g" H 3808 1190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3700 1100 50  0001 C CNN
F 3 "~" H 3700 1100 50  0001 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J15
U 1 1 66390280
P 3700 1100
F 0 "J15" H 3728 1126 50  0000 L CNN
F 1 "g" H 3728 1035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3700 1100 50  0001 C CNN
F 3 "~" H 3700 1100 50  0001 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1100 4100 1100
$Comp
L power:+5C #PWR0128
U 1 1 663AA68D
P 3300 1100
F 0 "#PWR0128" H 3300 950 50  0001 C CNN
F 1 "+5C" V 3315 1228 50  0000 L CNN
F 2 "" H 3300 1100 50  0001 C CNN
F 3 "" H 3300 1100 50  0001 C CNN
	1    3300 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1100 3400 1100
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 663B9084
P 3400 1250
F 0 "#FLG0106" H 3400 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 1423 50  0000 C CNN
F 2 "" H 3400 1250 50  0001 C CNN
F 3 "~" H 3400 1250 50  0001 C CNN
	1    3400 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 1250 3400 1100
Connection ~ 3400 1100
Wire Wire Line
	3400 1100 3500 1100
$Comp
L power:+5C #PWR0133
U 1 1 663C69EA
P 1400 5550
F 0 "#PWR0133" H 1400 5400 50  0001 C CNN
F 1 "+5C" H 1415 5723 50  0000 C CNN
F 2 "" H 1400 5550 50  0001 C CNN
F 3 "" H 1400 5550 50  0001 C CNN
	1    1400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5550 1400 5650
$Comp
L power:GND2 #PWR0134
U 1 1 663D50FE
P 1400 5950
F 0 "#PWR0134" H 1400 5700 50  0001 C CNN
F 1 "GND2" H 1405 5777 50  0000 C CNN
F 2 "" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0001 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0135
U 1 1 663D5316
P 1500 6700
F 0 "#PWR0135" H 1500 6450 50  0001 C CNN
F 1 "GND2" H 1505 6527 50  0000 C CNN
F 2 "" H 1500 6700 50  0001 C CNN
F 3 "" H 1500 6700 50  0001 C CNN
	1    1500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6450 2550 6450
$Comp
L power:+5C #PWR0136
U 1 1 6640D2A0
P 1400 7900
F 0 "#PWR0136" H 1400 7750 50  0001 C CNN
F 1 "+5C" H 1415 8073 50  0000 C CNN
F 2 "" H 1400 7900 50  0001 C CNN
F 3 "" H 1400 7900 50  0001 C CNN
	1    1400 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 8050 1400 7900
Wire Wire Line
	2300 8950 2500 8950
$Comp
L power:GND2 #PWR0138
U 1 1 664467E9
P 1400 8350
F 0 "#PWR0138" H 1400 8100 50  0001 C CNN
F 1 "GND2" H 1405 8177 50  0000 C CNN
F 2 "" H 1400 8350 50  0001 C CNN
F 3 "" H 1400 8350 50  0001 C CNN
	1    1400 8350
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0139
U 1 1 66446B90
P 1500 9200
F 0 "#PWR0139" H 1500 8950 50  0001 C CNN
F 1 "GND2" H 1505 9027 50  0000 C CNN
F 2 "" H 1500 9200 50  0001 C CNN
F 3 "" H 1500 9200 50  0001 C CNN
	1    1500 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 9150 5700 9150
$Comp
L power:GND2 #PWR0143
U 1 1 6648C50B
P 4950 9350
F 0 "#PWR0143" H 4950 9100 50  0001 C CNN
F 1 "GND2" H 4955 9177 50  0000 C CNN
F 2 "" H 4950 9350 50  0001 C CNN
F 3 "" H 4950 9350 50  0001 C CNN
	1    4950 9350
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0147
U 1 1 6648C8A9
P 4950 8950
F 0 "#PWR0147" H 4950 8700 50  0001 C CNN
F 1 "GND2" H 4955 8777 50  0000 C CNN
F 2 "" H 4950 8950 50  0001 C CNN
F 3 "" H 4950 8950 50  0001 C CNN
	1    4950 8950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 7650 5700 7650
$Comp
L power:GND2 #PWR0151
U 1 1 664B772D
P 4950 7450
F 0 "#PWR0151" H 4950 7200 50  0001 C CNN
F 1 "GND2" H 4955 7277 50  0000 C CNN
F 2 "" H 4950 7450 50  0001 C CNN
F 3 "" H 4950 7450 50  0001 C CNN
	1    4950 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0152
U 1 1 664B7ACA
P 4950 7850
F 0 "#PWR0152" H 4950 7600 50  0001 C CNN
F 1 "GND2" H 4955 7677 50  0000 C CNN
F 2 "" H 4950 7850 50  0001 C CNN
F 3 "" H 4950 7850 50  0001 C CNN
	1    4950 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4100 6800 4100
Wire Wire Line
	7450 3750 7550 3750
Wire Wire Line
	7450 4100 7350 4100
Wire Wire Line
	7450 3750 7450 4100
$Comp
L power:GND2 #PWR0153
U 1 1 6650230C
P 12750 6600
F 0 "#PWR0153" H 12750 6350 50  0001 C CNN
F 1 "GND2" H 12755 6427 50  0000 C CNN
F 2 "" H 12750 6600 50  0001 C CNN
F 3 "" H 12750 6600 50  0001 C CNN
	1    12750 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11850 6400 12200 6400
Wire Wire Line
	12600 6400 12850 6400
Wire Wire Line
	11850 4800 12200 4800
Wire Wire Line
	12600 4800 12850 4800
$Comp
L power:GND2 #PWR0154
U 1 1 665A0D2F
P 12750 5000
F 0 "#PWR0154" H 12750 4750 50  0001 C CNN
F 1 "GND2" H 12755 4827 50  0000 C CNN
F 2 "" H 12750 5000 50  0001 C CNN
F 3 "" H 12750 5000 50  0001 C CNN
	1    12750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 3300 12300 3300
Wire Wire Line
	12700 3300 12850 3300
$Comp
L power:GND2 #PWR0155
U 1 1 66605A53
P 12800 3450
F 0 "#PWR0155" H 12800 3200 50  0001 C CNN
F 1 "GND2" H 12805 3277 50  0000 C CNN
F 2 "" H 12800 3450 50  0001 C CNN
F 3 "" H 12800 3450 50  0001 C CNN
	1    12800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 1550 12300 1550
Wire Wire Line
	12700 1550 12850 1550
$Comp
L power:GND2 #PWR0156
U 1 1 6665C918
P 12800 1700
F 0 "#PWR0156" H 12800 1450 50  0001 C CNN
F 1 "GND2" H 12805 1527 50  0000 C CNN
F 2 "" H 12800 1700 50  0001 C CNN
F 3 "" H 12800 1700 50  0001 C CNN
	1    12800 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5C #PWR0158
U 1 1 6667F57F
P 7850 3400
F 0 "#PWR0158" H 7850 3250 50  0001 C CNN
F 1 "+5C" H 7865 3573 50  0000 C CNN
F 2 "" H 7850 3400 50  0001 C CNN
F 3 "" H 7850 3400 50  0001 C CNN
	1    7850 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J38
U 1 1 666B7749
P 10300 8300
F 0 "J38" H 10408 8481 50  0000 C CNN
F 1 "g" H 10408 8390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10300 8300 50  0001 C CNN
F 3 "~" H 10300 8300 50  0001 C CNN
	1    10300 8300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J39
U 1 1 666B774F
P 10300 8300
F 0 "J39" H 10328 8326 50  0000 L CNN
F 1 "g" H 10328 8235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10300 8300 50  0001 C CNN
F 3 "~" H 10300 8300 50  0001 C CNN
	1    10300 8300
	-1   0    0    1   
$EndComp
$Comp
L power:GND2 #PWR0159
U 1 1 666EC65B
P 11850 8600
F 0 "#PWR0159" H 11850 8350 50  0001 C CNN
F 1 "GND2" H 11855 8427 50  0000 C CNN
F 2 "" H 11850 8600 50  0001 C CNN
F 3 "" H 11850 8600 50  0001 C CNN
	1    11850 8600
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0160
U 1 1 666ECA2C
P 11000 9000
F 0 "#PWR0160" H 11000 8750 50  0001 C CNN
F 1 "GND2" H 11005 8827 50  0000 C CNN
F 2 "" H 11000 9000 50  0001 C CNN
F 3 "" H 11000 9000 50  0001 C CNN
	1    11000 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0161
U 1 1 666ECC31
P 10600 9000
F 0 "#PWR0161" H 10600 8750 50  0001 C CNN
F 1 "GND2" H 10605 8827 50  0000 C CNN
F 2 "" H 10600 9000 50  0001 C CNN
F 3 "" H 10600 9000 50  0001 C CNN
	1    10600 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND2 #PWR0162
U 1 1 666ECDB7
P 11100 8400
F 0 "#PWR0162" H 11100 8150 50  0001 C CNN
F 1 "GND2" V 11105 8272 50  0000 R CNN
F 2 "" H 11100 8400 50  0001 C CNN
F 3 "" H 11100 8400 50  0001 C CNN
	1    11100 8400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J42
U 1 1 666FBB4B
P 10300 8500
F 0 "J42" H 10408 8681 50  0000 C CNN
F 1 "g" H 10408 8590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10300 8500 50  0001 C CNN
F 3 "~" H 10300 8500 50  0001 C CNN
	1    10300 8500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J43
U 1 1 666FBB51
P 10300 8500
F 0 "J43" H 10328 8526 50  0000 L CNN
F 1 "g" H 10328 8435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10300 8500 50  0001 C CNN
F 3 "~" H 10300 8500 50  0001 C CNN
	1    10300 8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 8300 10100 8300
Wire Wire Line
	9800 8500 10100 8500
$Comp
L Connector:Conn_01x01_Male J40
U 1 1 66728B0B
P 12100 8300
F 0 "J40" H 12208 8481 50  0000 C CNN
F 1 "g" H 12208 8390 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12100 8300 50  0001 C CNN
F 3 "~" H 12100 8300 50  0001 C CNN
	1    12100 8300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J41
U 1 1 66728B11
P 12100 8300
F 0 "J41" H 12128 8326 50  0000 L CNN
F 1 "g" H 12128 8235 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 12100 8300 50  0001 C CNN
F 3 "~" H 12100 8300 50  0001 C CNN
	1    12100 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 8300 12400 8300
$Comp
L Device:C C9
U 1 1 667DA0E9
P 8250 4300
F 0 "C9" H 8365 4346 50  0000 L CNN
F 1 "100n" H 8365 4255 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8288 4150 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5C #PWR03
U 1 1 667DB06A
P 8250 4100
F 0 "#PWR03" H 8250 3950 50  0001 C CNN
F 1 "+5C" H 8265 4273 50  0000 C CNN
F 2 "" H 8250 4100 50  0001 C CNN
F 3 "" H 8250 4100 50  0001 C CNN
	1    8250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4100 8250 4150
$Comp
L power:GND2 #PWR04
U 1 1 667EA604
P 9350 4350
F 0 "#PWR04" H 9350 4100 50  0001 C CNN
F 1 "GND2" H 9355 4177 50  0000 C CNN
F 2 "" H 9350 4350 50  0001 C CNN
F 3 "" H 9350 4350 50  0001 C CNN
	1    9350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4500 8250 4450
$Comp
L power:GNDD #PWR013
U 1 1 66855461
P 8250 4500
F 0 "#PWR013" H 8250 4250 50  0001 C CNN
F 1 "GNDD" H 8254 4345 50  0000 C CNN
F 2 "" H 8250 4500 50  0001 C CNN
F 3 "" H 8250 4500 50  0001 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 66856F7C
P 7850 4100
F 0 "#PWR010" H 7850 3850 50  0001 C CNN
F 1 "GNDD" H 7854 3945 50  0000 C CNN
F 2 "" H 7850 4100 50  0001 C CNN
F 3 "" H 7850 4100 50  0001 C CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 6685729A
P 8750 4350
F 0 "#PWR011" H 8750 4100 50  0001 C CNN
F 1 "GNDD" H 8754 4195 50  0000 C CNN
F 2 "" H 8750 4350 50  0001 C CNN
F 3 "" H 8750 4350 50  0001 C CNN
	1    8750 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 66857A34
P 9050 4250
F 0 "JP1" H 9050 4514 50  0000 C CNN
F 1 "Jumper" H 9050 4423 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 9050 4250 50  0001 C CNN
F 3 "~" H 9050 4250 50  0001 C CNN
	1    9050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4250 8750 4350
Wire Wire Line
	9350 4350 9350 4250
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 6687989C
P 8750 4150
F 0 "#FLG0107" H 8750 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 8750 4323 50  0000 C CNN
F 2 "" H 8750 4150 50  0001 C CNN
F 3 "~" H 8750 4150 50  0001 C CNN
	1    8750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4150 8750 4250
Connection ~ 8750 4250
$Comp
L Device:C C10
U 1 1 66940B54
P 8450 1050
F 0 "C10" H 8565 1096 50  0000 L CNN
F 1 "100n" H 8565 1005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8488 900 50  0001 C CNN
F 3 "~" H 8450 1050 50  0001 C CNN
	1    8450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 6694298B
P 8450 850
F 0 "#PWR014" H 8450 700 50  0001 C CNN
F 1 "+5V" H 8465 1023 50  0000 C CNN
F 2 "" H 8450 850 50  0001 C CNN
F 3 "" H 8450 850 50  0001 C CNN
	1    8450 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 66942EE9
P 8450 1250
F 0 "#PWR015" H 8450 1000 50  0001 C CNN
F 1 "GND" H 8455 1077 50  0000 C CNN
F 2 "" H 8450 1250 50  0001 C CNN
F 3 "" H 8450 1250 50  0001 C CNN
	1    8450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 850  8450 900 
Wire Wire Line
	8450 1200 8450 1250
$Comp
L Device:C C11
U 1 1 669533A5
P 8550 2600
F 0 "C11" H 8665 2646 50  0000 L CNN
F 1 "100n" H 8665 2555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8588 2450 50  0001 C CNN
F 3 "~" H 8550 2600 50  0001 C CNN
	1    8550 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 669533AB
P 8550 2400
F 0 "#PWR016" H 8550 2250 50  0001 C CNN
F 1 "+5V" H 8565 2573 50  0000 C CNN
F 2 "" H 8550 2400 50  0001 C CNN
F 3 "" H 8550 2400 50  0001 C CNN
	1    8550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 669533B1
P 8550 2800
F 0 "#PWR018" H 8550 2550 50  0001 C CNN
F 1 "GND" H 8555 2627 50  0000 C CNN
F 2 "" H 8550 2800 50  0001 C CNN
F 3 "" H 8550 2800 50  0001 C CNN
	1    8550 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2400 8550 2450
Wire Wire Line
	8550 2750 8550 2800
NoConn ~ 7150 2900
$EndSCHEMATC
