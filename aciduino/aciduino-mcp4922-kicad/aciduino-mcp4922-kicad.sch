EESchema Schematic File Version 4
LIBS:aciduino-mcp4922-kicad-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CB7DA7B
P 5800 3850
F 0 "A1" H 5800 2761 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5800 2670 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5950 2900 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5800 2850 50  0001 C CNN
	1    5800 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5CB7F48D
P 8850 3750
F 0 "RV1" H 8780 3704 50  0000 R CNN
F 1 "R_POT" H 8780 3795 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Horizontal" H 8850 3750 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5CB80BEE
P 8850 4200
F 0 "RV2" H 8780 4154 50  0000 R CNN
F 1 "R_POT" H 8780 4245 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Horizontal" H 8850 4200 50  0001 C CNN
F 3 "~" H 8850 4200 50  0001 C CNN
	1    8850 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5CB80FDF
P 8850 4650
F 0 "RV3" H 8780 4604 50  0000 R CNN
F 1 "R_POT" H 8780 4695 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Horizontal" H 8850 4650 50  0001 C CNN
F 3 "~" H 8850 4650 50  0001 C CNN
	1    8850 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5CB81352
P 8850 5100
F 0 "RV4" H 8780 5054 50  0000 R CNN
F 1 "R_POT" H 8780 5145 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Horizontal" H 8850 5100 50  0001 C CNN
F 3 "~" H 8850 5100 50  0001 C CNN
	1    8850 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 4350 9250 4350
Wire Wire Line
	9250 4350 9250 4800
Wire Wire Line
	9250 4800 8850 4800
Wire Wire Line
	9250 4800 9250 5250
Wire Wire Line
	9250 5250 8850 5250
Connection ~ 9250 4800
$Comp
L power:GND #PWR06
U 1 1 5CB81B07
P 5900 5150
F 0 "#PWR06" H 5900 4900 50  0001 C CNN
F 1 "GND" H 5905 4977 50  0000 C CNN
F 2 "" H 5900 5150 50  0001 C CNN
F 3 "" H 5900 5150 50  0001 C CNN
	1    5900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4350 9250 3900
Wire Wire Line
	9250 3900 8850 3900
Connection ~ 9250 4350
$Comp
L power:+5V #PWR07
U 1 1 5CB828B2
P 6000 2750
F 0 "#PWR07" H 6000 2600 50  0001 C CNN
F 1 "+5V" H 6015 2923 50  0000 C CNN
F 2 "" H 6000 2750 50  0001 C CNN
F 3 "" H 6000 2750 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3550 9450 3550
Wire Wire Line
	9450 3550 9450 4050
Wire Wire Line
	9450 4050 8850 4050
Wire Wire Line
	8850 3550 8850 3600
Wire Wire Line
	9450 4050 9450 4500
Wire Wire Line
	9450 4500 8850 4500
Connection ~ 9450 4050
Wire Wire Line
	9450 4500 9450 4950
Wire Wire Line
	9450 4950 8850 4950
Connection ~ 9450 4500
$Comp
L Switch:SW_Push SW1
U 1 1 5CB8B080
P 2150 3800
F 0 "SW1" H 2150 4085 50  0000 C CNN
F 1 "SW_Push" H 2150 3994 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 4000 50  0001 C CNN
F 3 "~" H 2150 4000 50  0001 C CNN
	1    2150 3800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CB8B4E0
P 2150 4000
F 0 "SW2" H 2150 4285 50  0000 C CNN
F 1 "SW_Push" H 2150 4194 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 4200 50  0001 C CNN
F 3 "~" H 2150 4200 50  0001 C CNN
	1    2150 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5CB8BBB1
P 2150 4400
F 0 "SW4" H 2150 4685 50  0000 C CNN
F 1 "SW_Push" H 2150 4594 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 4600 50  0001 C CNN
F 3 "~" H 2150 4600 50  0001 C CNN
	1    2150 4400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5CB8BE9F
P 2150 4600
F 0 "SW5" H 2150 4885 50  0000 C CNN
F 1 "SW_Push" H 2150 4794 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 4800 50  0001 C CNN
F 3 "~" H 2150 4800 50  0001 C CNN
	1    2150 4600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5CB8C121
P 2150 4800
F 0 "SW6" H 2150 5085 50  0000 C CNN
F 1 "SW_Push" H 2150 4994 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 5000 50  0001 C CNN
F 3 "~" H 2150 5000 50  0001 C CNN
	1    2150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3800 3100 3800
Wire Wire Line
	3100 3900 2350 3900
Wire Wire Line
	2350 3900 2350 4000
Wire Wire Line
	3100 4000 2450 4000
Wire Wire Line
	2450 4000 2450 4200
Wire Wire Line
	2450 4200 2350 4200
Wire Wire Line
	3100 4100 2550 4100
Wire Wire Line
	2550 4100 2550 4400
Wire Wire Line
	2550 4400 2350 4400
Wire Wire Line
	3100 4200 2650 4200
Wire Wire Line
	2650 4200 2650 4600
Wire Wire Line
	2650 4600 2350 4600
Wire Wire Line
	3100 4300 2750 4300
Wire Wire Line
	2750 4300 2750 4800
Wire Wire Line
	2750 4800 2350 4800
$Comp
L power:GND #PWR01
U 1 1 5CB90E19
P 1950 4950
F 0 "#PWR01" H 1950 4700 50  0001 C CNN
F 1 "GND" H 1955 4777 50  0000 C CNN
F 2 "" H 1950 4950 50  0001 C CNN
F 3 "" H 1950 4950 50  0001 C CNN
	1    1950 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4950 1950 4800
Connection ~ 1950 4000
Wire Wire Line
	1950 4000 1950 3800
Connection ~ 1950 4200
Wire Wire Line
	1950 4200 1950 4000
Connection ~ 1950 4400
Wire Wire Line
	1950 4400 1950 4200
Connection ~ 1950 4600
Wire Wire Line
	1950 4600 1950 4400
Connection ~ 1950 4800
Wire Wire Line
	1950 4800 1950 4600
Text Notes 5550 3550 0    50   ~ 0
pwm
Text Notes 5550 3750 0    50   ~ 0
pwm
Text Notes 5550 3850 0    50   ~ 0
pwm
Text Notes 5550 4150 0    50   ~ 0
pwm
Text Notes 5600 4250 0    50   ~ 0
pwm
Text Notes 5600 4350 0    50   ~ 0
pwm
$Comp
L power:GND #PWR04
U 1 1 5CB9CBC4
P 4000 4600
F 0 "#PWR04" H 4000 4350 50  0001 C CNN
F 1 "GND" H 4005 4427 50  0000 C CNN
F 2 "" H 4000 4600 50  0001 C CNN
F 3 "" H 4000 4600 50  0001 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4500 4000 4500
Wire Wire Line
	4000 4500 4000 4600
Wire Wire Line
	3900 4600 4000 4600
Connection ~ 4000 4600
$Comp
L power:+5V #PWR03
U 1 1 5CBA2C9B
P 3900 3700
F 0 "#PWR03" H 3900 3550 50  0001 C CNN
F 1 "+5V" H 3915 3873 50  0000 C CNN
F 2 "" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3700 3900 3800
$Comp
L Device:C C1
U 1 1 5CBA482C
P 4050 3800
F 0 "C1" V 3798 3800 50  0000 C CNN
F 1 "100n" V 3889 3800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4088 3650 50  0001 C CNN
F 3 "~" H 4050 3800 50  0001 C CNN
	1    4050 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CBA52F9
P 4400 3800
F 0 "#PWR05" H 4400 3550 50  0001 C CNN
F 1 "GND" H 4405 3627 50  0000 C CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3800 4300 3800
Wire Wire Line
	4300 3900 4300 3800
Wire Wire Line
	3900 3900 4300 3900
Connection ~ 4300 3800
Wire Wire Line
	4300 3800 4200 3800
NoConn ~ 3900 4200
NoConn ~ 3100 4400
NoConn ~ 3100 4500
$Comp
L Device:LED D1
U 1 1 5CBBAFEE
P 3500 1500
F 0 "D1" H 3493 1716 50  0000 C CNN
F 1 "LED" H 3493 1625 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 1500 50  0001 C CNN
F 3 "~" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5CBBB6AD
P 3500 1800
F 0 "D2" H 3493 2016 50  0000 C CNN
F 1 "LED" H 3493 1925 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5CBBBC58
P 3500 2100
F 0 "D3" H 3493 2316 50  0000 C CNN
F 1 "LED" H 3493 2225 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 2100 50  0001 C CNN
F 3 "~" H 3500 2100 50  0001 C CNN
	1    3500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5CBBC06C
P 3500 2400
F 0 "D4" H 3493 2616 50  0000 C CNN
F 1 "LED" H 3493 2525 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 2400 50  0001 C CNN
F 3 "~" H 3500 2400 50  0001 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5CBBC51B
P 3500 2700
F 0 "D5" H 3493 2916 50  0000 C CNN
F 1 "LED" H 3493 2825 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 2700 50  0001 C CNN
F 3 "~" H 3500 2700 50  0001 C CNN
	1    3500 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5CBBFBE7
P 3500 2950
F 0 "D6" H 3493 3166 50  0000 C CNN
F 1 "LED" H 3493 3075 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3500 2950 50  0001 C CNN
F 3 "~" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CBC1B32
P 3850 1500
F 0 "R1" V 3643 1500 50  0000 C CNN
F 1 "470" V 3734 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 1500 50  0001 C CNN
F 3 "~" H 3850 1500 50  0001 C CNN
	1    3850 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1500 3700 1500
$Comp
L Device:R R2
U 1 1 5CBC3C1D
P 3850 1800
F 0 "R2" V 3643 1800 50  0000 C CNN
F 1 "470" V 3734 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 1800 50  0001 C CNN
F 3 "~" H 3850 1800 50  0001 C CNN
	1    3850 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5CBC3EF8
P 3850 2100
F 0 "R3" V 3643 2100 50  0000 C CNN
F 1 "470" V 3734 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 2100 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
	1    3850 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CBC41AD
P 3850 2400
F 0 "R4" V 3643 2400 50  0000 C CNN
F 1 "470" V 3734 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5CBC45CC
P 3850 2700
F 0 "R5" V 3643 2700 50  0000 C CNN
F 1 "470" V 3734 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 2700 50  0001 C CNN
F 3 "~" H 3850 2700 50  0001 C CNN
	1    3850 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5CBC47EE
P 3850 2950
F 0 "R6" V 3643 2950 50  0000 C CNN
F 1 "470" V 3734 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3780 2950 50  0001 C CNN
F 3 "~" H 3850 2950 50  0001 C CNN
	1    3850 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 2950 3700 2950
Wire Wire Line
	3700 2700 3650 2700
Wire Wire Line
	3650 2400 3700 2400
Wire Wire Line
	3700 2100 3650 2100
Wire Wire Line
	3650 1800 3700 1800
$Comp
L power:GND #PWR02
U 1 1 5CBCCEC4
P 3150 3050
F 0 "#PWR02" H 3150 2800 50  0001 C CNN
F 1 "GND" H 3155 2877 50  0000 C CNN
F 2 "" H 3150 3050 50  0001 C CNN
F 3 "" H 3150 3050 50  0001 C CNN
	1    3150 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3050 3150 2950
Wire Wire Line
	3150 2950 3350 2950
Wire Wire Line
	3350 2700 3150 2700
Wire Wire Line
	3150 2700 3150 2950
Connection ~ 3150 2950
Wire Wire Line
	3350 2400 3150 2400
Wire Wire Line
	3150 2400 3150 2700
Connection ~ 3150 2700
Wire Wire Line
	3350 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2400
Connection ~ 3150 2400
Wire Wire Line
	3350 1800 3150 1800
Wire Wire Line
	3150 1800 3150 2100
Connection ~ 3150 2100
Wire Wire Line
	3350 1500 3150 1500
Wire Wire Line
	3150 1500 3150 1800
Connection ~ 3150 1800
Wire Wire Line
	4000 1500 5100 1500
Wire Wire Line
	5100 1500 5100 3550
Wire Wire Line
	5100 3550 5300 3550
Wire Wire Line
	4000 1800 5000 1800
Wire Wire Line
	5000 1800 5000 3750
Wire Wire Line
	5000 3750 5300 3750
Wire Wire Line
	4000 2100 4900 2100
Wire Wire Line
	4900 2100 4900 3850
Wire Wire Line
	4900 3850 5300 3850
Wire Wire Line
	4000 2400 4800 2400
Wire Wire Line
	4800 2400 4800 4150
Wire Wire Line
	4800 4150 5300 4150
Wire Wire Line
	4000 2700 4700 2700
Wire Wire Line
	4700 2700 4700 4250
Wire Wire Line
	4700 4250 5300 4250
Wire Wire Line
	4000 2950 4600 2950
Wire Wire Line
	4600 2950 4600 4350
Wire Wire Line
	4600 4350 5300 4350
Wire Wire Line
	5900 4850 5900 5150
$Comp
L power:GND #PWR0101
U 1 1 5CBF3FE8
P 9250 5350
F 0 "#PWR0101" H 9250 5100 50  0001 C CNN
F 1 "GND" H 9255 5177 50  0000 C CNN
F 2 "" H 9250 5350 50  0001 C CNN
F 3 "" H 9250 5350 50  0001 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5350 9250 5250
Connection ~ 9250 5250
Wire Wire Line
	6000 2750 6000 2850
$Comp
L power:+5V #PWR0102
U 1 1 5CBF74CA
P 9450 3500
F 0 "#PWR0102" H 9450 3350 50  0001 C CNN
F 1 "+5V" H 9465 3673 50  0000 C CNN
F 2 "" H 9450 3500 50  0001 C CNN
F 3 "" H 9450 3500 50  0001 C CNN
	1    9450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3500 9450 3550
Connection ~ 9450 3550
Connection ~ 3900 3800
$Comp
L 74HC165:74HC165 U1
U 1 1 5CB86521
P 3500 4400
F 0 "U1" H 3500 5267 50  0000 C CNN
F 1 "74HC165" H 3500 5176 50  0000 C CNN
F 2 "74HC165:SO-16" H 3500 4400 50  0001 C CNN
F 3 "" H 3500 4400 50  0001 L BNN
F 4 "VFQFN-16 STMicroelectronics" H 3500 4400 50  0001 L BNN "Field4"
F 5 "Nexperia USA" H 3500 4400 50  0001 L BNN "Field5"
F 6 "74HC165" H 3500 4400 50  0001 L BNN "Field6"
F 7 "None" H 3500 4400 50  0001 L BNN "Field7"
F 8 "Unavailable" H 3500 4400 50  0001 L BNN "Field8"
	1    3500 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 4600 3100 4900
Wire Wire Line
	3100 4900 5200 4900
Wire Wire Line
	5200 4900 5200 3450
Wire Wire Line
	5200 3450 5300 3450
Wire Wire Line
	3900 4400 4400 4400
Wire Wire Line
	4400 4400 4400 4550
Wire Wire Line
	4400 4550 4900 4550
$Comp
L Memory_EEPROM:24LC512 U4
U 1 1 5CC07A5B
P 7400 2400
F 0 "U4" H 7100 2800 50  0000 C CNN
F 1 "24LC512" H 7150 2700 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 7400 2400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21754M.pdf" H 7400 2400 50  0001 C CNN
	1    7400 2400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CC08A76
P 7400 2750
F 0 "#PWR0103" H 7400 2500 50  0001 C CNN
F 1 "GND" H 7405 2577 50  0000 C CNN
F 2 "" H 7400 2750 50  0001 C CNN
F 3 "" H 7400 2750 50  0001 C CNN
	1    7400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2750 7400 2700
$Comp
L power:+5V #PWR0104
U 1 1 5CC0C7A9
P 7400 2050
F 0 "#PWR0104" H 7400 1900 50  0001 C CNN
F 1 "+5V" H 7415 2223 50  0000 C CNN
F 2 "" H 7400 2050 50  0001 C CNN
F 3 "" H 7400 2050 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2050 7400 2100
Wire Wire Line
	7400 2700 7850 2700
Wire Wire Line
	7850 2700 7850 2500
Wire Wire Line
	7850 2500 7800 2500
Connection ~ 7400 2700
Wire Wire Line
	7850 2500 7850 2400
Wire Wire Line
	7850 2400 7800 2400
Connection ~ 7850 2500
Wire Wire Line
	7850 2400 7850 2300
Wire Wire Line
	7850 2300 7800 2300
Connection ~ 7850 2400
Wire Wire Line
	7000 2700 7400 2700
$Comp
L Device:R R8
U 1 1 5CC22443
P 6800 2150
F 0 "R8" H 6870 2196 50  0000 L CNN
F 1 "2.2k" H 6870 2105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6730 2150 50  0001 C CNN
F 3 "~" H 6800 2150 50  0001 C CNN
	1    6800 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5CC26089
P 6700 2250
F 0 "R7" H 6770 2296 50  0000 L CNN
F 1 "2.2k" H 6770 2205 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6630 2250 50  0001 C CNN
F 3 "~" H 6700 2250 50  0001 C CNN
	1    6700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2300 6800 2300
Wire Wire Line
	6700 2400 7000 2400
Wire Wire Line
	6700 2100 6700 2000
Wire Wire Line
	6700 2000 6800 2000
$Comp
L power:+5V #PWR0105
U 1 1 5CC32212
P 6800 1950
F 0 "#PWR0105" H 6800 1800 50  0001 C CNN
F 1 "+5V" H 6815 2123 50  0000 C CNN
F 2 "" H 6800 1950 50  0001 C CNN
F 3 "" H 6800 1950 50  0001 C CNN
	1    6800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1950 6800 2000
Connection ~ 6800 2000
Wire Wire Line
	6300 4250 6750 4250
Wire Wire Line
	6750 4250 6750 2700
Wire Wire Line
	6750 2700 6800 2700
Wire Wire Line
	6800 2700 6800 2300
Connection ~ 6800 2300
Wire Wire Line
	6300 4350 6850 4350
Wire Wire Line
	6850 4350 6850 2950
Wire Wire Line
	6850 2950 6700 2950
Wire Wire Line
	6700 2950 6700 2400
Connection ~ 6700 2400
Text Notes 5900 4250 0    50   ~ 0
sda
Text Notes 5900 4350 0    50   ~ 0
scl
Wire Wire Line
	4900 4550 4900 5600
Wire Wire Line
	4900 5600 4800 5600
Connection ~ 4900 4550
Wire Wire Line
	4900 4550 5300 4550
$Comp
L power:GND #PWR0106
U 1 1 5CC4606A
P 4900 6300
F 0 "#PWR0106" H 4900 6050 50  0001 C CNN
F 1 "GND" H 4905 6127 50  0000 C CNN
F 2 "" H 4900 6300 50  0001 C CNN
F 3 "" H 4900 6300 50  0001 C CNN
	1    4900 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5700 4900 5700
$Comp
L power:+5V #PWR0107
U 1 1 5CC509D3
P 4550 5200
F 0 "#PWR0107" H 4550 5050 50  0001 C CNN
F 1 "+5V" H 4565 5373 50  0000 C CNN
F 2 "" H 4550 5200 50  0001 C CNN
F 3 "" H 4550 5200 50  0001 C CNN
	1    4550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CCBBC24
P 3250 5350
F 0 "#PWR0108" H 3250 5100 50  0001 C CNN
F 1 "GND" H 3255 5177 50  0000 C CNN
F 2 "" H 3250 5350 50  0001 C CNN
F 3 "" H 3250 5350 50  0001 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5CCBAE08
P 2900 5650
F 0 "J2" H 3008 5931 50  0000 C CNN
F 1 "CV12_OUT" H 3008 5840 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2900 5650 50  0001 C CNN
F 3 "~" H 2900 5650 50  0001 C CNN
	1    2900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5350 3100 5350
Wire Wire Line
	3100 5350 3100 5550
Wire Wire Line
	3600 5650 3100 5650
Wire Wire Line
	3600 5750 3100 5750
Wire Wire Line
	3600 5750 3600 5800
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CD25303
P 900 7350
F 0 "J1" H 873 7232 50  0000 R CNN
F 1 "PWR_IN" H 873 7323 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 900 7350 50  0001 C CNN
F 3 "~" H 900 7350 50  0001 C CNN
	1    900  7350
	1    0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0109
U 1 1 5CD2D6A5
P 1400 7350
F 0 "#PWR0109" H 1400 7150 50  0001 C CNN
F 1 "GNDPWR" H 1404 7196 50  0000 C CNN
F 2 "" H 1400 7300 50  0001 C CNN
F 3 "" H 1400 7300 50  0001 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7350 1100 7350
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CD350EB
P 1700 7250
F 0 "#FLG0101" H 1700 7325 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 7423 50  0000 C CNN
F 2 "" H 1700 7250 50  0001 C CNN
F 3 "~" H 1700 7250 50  0001 C CNN
	1    1700 7250
	1    0    0    -1  
$EndComp
Connection ~ 1400 7350
NoConn ~ 6300 3650
NoConn ~ 6300 3350
NoConn ~ 6300 3250
Wire Wire Line
	7000 2500 7000 2700
NoConn ~ 5900 2850
NoConn ~ 5700 2850
Wire Wire Line
	5800 4850 5900 4850
Connection ~ 5900 4850
Wire Wire Line
	3900 4100 4550 4100
Wire Wire Line
	4550 4100 4550 4000
Wire Wire Line
	4550 4000 5100 4000
Wire Wire Line
	5100 4000 5100 3650
Wire Wire Line
	5100 3650 5300 3650
Wire Wire Line
	4800 5800 5100 5800
Wire Wire Line
	5100 5800 5100 4050
Wire Wire Line
	5100 4050 5150 4050
Wire Wire Line
	5150 4050 5150 3950
Wire Wire Line
	5150 3950 5300 3950
Wire Wire Line
	4800 5900 5250 5900
Wire Wire Line
	5250 5900 5250 4050
Wire Wire Line
	5250 4050 5300 4050
$Comp
L Regulator_Linear:LM7805_TO220 U5
U 1 1 5CDF45C8
P 2050 7250
F 0 "U5" H 2050 7492 50  0000 C CNN
F 1 "LM7805_TO220" H 2050 7401 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2050 7475 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 2050 7200 50  0001 C CNN
	1    2050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7250 1750 7250
Wire Wire Line
	1700 7350 1700 7550
Wire Wire Line
	1700 7550 1850 7550
Wire Wire Line
	1400 7350 1700 7350
$Comp
L power:GND #PWR0110
U 1 1 5CE05741
P 1850 7550
F 0 "#PWR0110" H 1850 7300 50  0001 C CNN
F 1 "GND" H 1855 7377 50  0000 C CNN
F 2 "" H 1850 7550 50  0001 C CNN
F 3 "" H 1850 7550 50  0001 C CNN
	1    1850 7550
	1    0    0    -1  
$EndComp
Connection ~ 1850 7550
Wire Wire Line
	1850 7550 2050 7550
$Comp
L power:+5V #PWR0111
U 1 1 5CE05EEC
P 2950 7250
F 0 "#PWR0111" H 2950 7100 50  0001 C CNN
F 1 "+5V" H 2965 7423 50  0000 C CNN
F 2 "" H 2950 7250 50  0001 C CNN
F 3 "" H 2950 7250 50  0001 C CNN
	1    2950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7250 2850 7250
$Comp
L Device:C C2
U 1 1 5CE16616
P 2450 7400
F 0 "C2" H 2565 7446 50  0000 L CNN
F 1 "100n" H 2565 7355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2488 7250 50  0001 C CNN
F 3 "~" H 2450 7400 50  0001 C CNN
	1    2450 7400
	1    0    0    -1  
$EndComp
Connection ~ 2450 7250
Wire Wire Line
	2450 7250 2350 7250
$Comp
L Device:CP C3
U 1 1 5CE1713A
P 2850 7400
F 0 "C3" H 2968 7446 50  0000 L CNN
F 1 "10u" H 2968 7355 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2888 7250 50  0001 C CNN
F 3 "~" H 2850 7400 50  0001 C CNN
	1    2850 7400
	1    0    0    -1  
$EndComp
Connection ~ 2850 7250
Wire Wire Line
	2850 7250 2450 7250
Wire Wire Line
	2050 7550 2450 7550
Connection ~ 2050 7550
Connection ~ 2450 7550
Wire Wire Line
	2450 7550 2850 7550
$Comp
L Device:Rotary_Encoder_Switch SW7
U 1 1 5CE42EE4
P 6850 5700
F 0 "SW7" H 6850 6067 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 6850 5976 50  0000 C CNN
F 2 "" H 6700 5860 50  0001 C CNN
F 3 "~" H 6850 5960 50  0001 C CNN
	1    6850 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5CE4454E
P 6250 6000
F 0 "#PWR0112" H 6250 5750 50  0001 C CNN
F 1 "GND" H 6255 5827 50  0000 C CNN
F 2 "" H 6250 6000 50  0001 C CNN
F 3 "" H 6250 6000 50  0001 C CNN
	1    6250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5800 7150 6000
Wire Wire Line
	6250 6000 6400 6000
Wire Wire Line
	6550 5700 6400 5700
Wire Wire Line
	6400 5700 6400 6000
Connection ~ 6400 6000
Wire Wire Line
	6400 6000 7150 6000
Wire Wire Line
	6300 4450 6650 4450
Wire Wire Line
	6650 4450 6650 5300
Wire Wire Line
	6650 5300 6300 5300
Wire Wire Line
	6300 5300 6300 5600
Wire Wire Line
	6300 5600 6550 5600
Wire Wire Line
	6300 4550 6300 5150
Wire Wire Line
	6300 5150 6200 5150
Wire Wire Line
	6200 5150 6200 5800
Wire Wire Line
	6200 5800 6550 5800
Wire Wire Line
	7150 5600 7150 5350
Wire Wire Line
	4800 5350 4800 4450
Wire Wire Line
	4800 4450 5300 4450
Wire Wire Line
	4800 5350 7150 5350
$Comp
L Analog_DAC:MCP4922 U2
U 1 1 5CE873ED
P 4300 5600
F 0 "U2" H 4300 6181 50  0000 C CNN
F 1 "Arduino Nano Rev3" H 4300 6090 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5100 5300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22250A.pdf" H 5100 5300 50  0001 C CNN
	1    4300 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 5700 4900 6300
Wire Wire Line
	4300 5200 4400 5200
Wire Wire Line
	4800 5400 4850 5400
Wire Wire Line
	4850 5400 4850 5250
Wire Wire Line
	4850 5250 4400 5250
Wire Wire Line
	4400 5250 4400 5200
Connection ~ 4400 5200
Wire Wire Line
	4400 5200 4550 5200
Wire Wire Line
	3600 5500 3800 5500
Wire Wire Line
	3600 5500 3600 5650
Wire Wire Line
	3600 5800 3800 5800
$Comp
L power:+5V #PWR0113
U 1 1 5CEBE2F0
P 3750 5200
F 0 "#PWR0113" H 3750 5050 50  0001 C CNN
F 1 "+5V" H 3765 5373 50  0000 C CNN
F 2 "" H 3750 5200 50  0001 C CNN
F 3 "" H 3750 5200 50  0001 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5200 3750 5400
Wire Wire Line
	3750 5400 3800 5400
Wire Wire Line
	3750 5400 3750 5900
Wire Wire Line
	3750 5900 3800 5900
Connection ~ 3750 5400
$Comp
L power:GND #PWR0114
U 1 1 5CED583B
P 4300 6150
F 0 "#PWR0114" H 4300 5900 50  0001 C CNN
F 1 "GND" H 4305 5977 50  0000 C CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6150 4300 6100
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5CEEE804
P 950 2100
F 0 "J3" V 904 1871 50  0000 R CNN
F 1 "MIDI_IN" V 995 1871 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 950 2100 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 950 2100 50  0001 C CNN
	1    950  2100
	0    1    1    0   
$EndComp
$Comp
L Connector:DIN-5_180degree J4
U 1 1 5CEEEF85
P 950 2900
F 0 "J4" V 904 2670 50  0000 R CNN
F 1 "MIDI_OUT" V 995 2670 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 950 2900 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 950 2900 50  0001 C CNN
	1    950  2900
	0    1    1    0   
$EndComp
$Comp
L Isolator:6N138 U3
U 1 1 5CF077A5
P 1900 1950
F 0 "U3" H 1900 2417 50  0000 C CNN
F 1 "6N138" H 1900 2326 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 2190 1650 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 2190 1650 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 5CF0962B
P 1450 1950
F 0 "D7" V 1404 2029 50  0000 L CNN
F 1 "1N4148" V 1495 2029 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 1775 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1450 1950 50  0001 C CNN
	1    1450 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1800 1600 1800
Wire Wire Line
	1600 1800 1600 1850
Wire Wire Line
	1600 2100 1600 2050
Wire Wire Line
	1450 2100 1600 2100
$Comp
L Device:R R9
U 1 1 5CF2E07B
P 1250 1800
F 0 "R9" V 1043 1800 50  0000 C CNN
F 1 "220" V 1134 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 1800 50  0001 C CNN
F 3 "~" H 1250 1800 50  0001 C CNN
	1    1250 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1800 1450 1800
Connection ~ 1450 1800
Wire Wire Line
	1100 1800 1050 1800
Wire Wire Line
	1450 2100 1450 2400
Wire Wire Line
	1450 2400 1050 2400
Connection ~ 1450 2100
$Comp
L power:GND #PWR0115
U 1 1 5CF7786C
P 2250 2150
F 0 "#PWR0115" H 2250 1900 50  0001 C CNN
F 1 "GND" H 2255 1977 50  0000 C CNN
F 2 "" H 2250 2150 50  0001 C CNN
F 3 "" H 2250 2150 50  0001 C CNN
	1    2250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2150 2200 2150
$Comp
L power:+5V #PWR0116
U 1 1 5CF84C6A
P 2250 1750
F 0 "#PWR0116" H 2250 1600 50  0001 C CNN
F 1 "+5V" H 2265 1923 50  0000 C CNN
F 2 "" H 2250 1750 50  0001 C CNN
F 3 "" H 2250 1750 50  0001 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1750 2200 1750
$Comp
L Device:R R11
U 1 1 5CF9248C
P 2450 1850
F 0 "R11" V 2243 1850 50  0000 C CNN
F 1 "5.6k" V 2334 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2380 1850 50  0001 C CNN
F 3 "~" H 2450 1850 50  0001 C CNN
	1    2450 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 1850 2300 1850
$Comp
L power:GND #PWR0117
U 1 1 5CFDFD38
P 2650 1850
F 0 "#PWR0117" H 2650 1600 50  0001 C CNN
F 1 "GND" H 2655 1677 50  0000 C CNN
F 2 "" H 2650 1850 50  0001 C CNN
F 3 "" H 2650 1850 50  0001 C CNN
	1    2650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1850 2600 1850
$Comp
L Device:R R12
U 1 1 5CFED296
P 2650 2050
F 0 "R12" V 2443 2050 50  0000 C CNN
F 1 "1.2k" V 2534 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 2050 50  0001 C CNN
F 3 "~" H 2650 2050 50  0001 C CNN
	1    2650 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2050 2450 2050
$Comp
L power:+5V #PWR0118
U 1 1 5D007D5A
P 2800 2000
F 0 "#PWR0118" H 2800 1850 50  0001 C CNN
F 1 "+5V" H 2815 2173 50  0000 C CNN
F 2 "" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2000 2800 2050
Wire Wire Line
	5300 3250 2450 3250
Wire Wire Line
	2450 3250 2450 2050
Connection ~ 2450 2050
Wire Wire Line
	2450 2050 2200 2050
$Comp
L Device:R R10
U 1 1 5D023FAB
P 1300 2600
F 0 "R10" V 1093 2600 50  0000 C CNN
F 1 "220" V 1184 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1230 2600 50  0001 C CNN
F 3 "~" H 1300 2600 50  0001 C CNN
	1    1300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 2600 1050 2600
$Comp
L power:+5V #PWR0119
U 1 1 5D032AB3
P 1550 2600
F 0 "#PWR0119" H 1550 2450 50  0001 C CNN
F 1 "+5V" H 1565 2773 50  0000 C CNN
F 2 "" H 1550 2600 50  0001 C CNN
F 3 "" H 1550 2600 50  0001 C CNN
	1    1550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2600 1450 2600
$Comp
L power:GND #PWR0120
U 1 1 5D0419DB
P 1350 2900
F 0 "#PWR0120" H 1350 2650 50  0001 C CNN
F 1 "GND" H 1355 2727 50  0000 C CNN
F 2 "" H 1350 2900 50  0001 C CNN
F 3 "" H 1350 2900 50  0001 C CNN
	1    1350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2900 1250 2900
Wire Wire Line
	1050 3200 1050 3350
Wire Wire Line
	1050 3350 5300 3350
Wire Wire Line
	8600 3850 8600 3750
Wire Wire Line
	8600 3750 8700 3750
Wire Wire Line
	6300 3850 8600 3850
Wire Wire Line
	8600 3950 8600 4200
Wire Wire Line
	8600 4200 8700 4200
Wire Wire Line
	6300 3950 8600 3950
Wire Wire Line
	8500 4050 8500 4650
Wire Wire Line
	8500 4650 8700 4650
Wire Wire Line
	6300 4050 8500 4050
Wire Wire Line
	8400 4150 8400 5100
Wire Wire Line
	8400 5100 8700 5100
Wire Wire Line
	6300 4150 8400 4150
$Comp
L Diode:1N4001 D8
U 1 1 5D10375F
P 1400 7250
F 0 "D8" H 1400 7034 50  0000 C CNN
F 1 "1N4001" H 1400 7125 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1400 7075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1400 7250 50  0001 C CNN
	1    1400 7250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 7250 1250 7250
Wire Wire Line
	1550 7250 1700 7250
Connection ~ 1700 7250
NoConn ~ 950  3200
NoConn ~ 950  2600
NoConn ~ 950  2400
NoConn ~ 950  1800
NoConn ~ 1250 2100
$Comp
L Device:C C4
U 1 1 5CBE4221
P 4150 5200
F 0 "C4" V 3898 5200 50  0000 C CNN
F 1 "100n" V 3989 5200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 4188 5050 50  0001 C CNN
F 3 "~" H 4150 5200 50  0001 C CNN
	1    4150 5200
	0    1    1    0   
$EndComp
Connection ~ 4300 5200
$Comp
L power:GND #PWR08
U 1 1 5CBE5772
P 3950 5200
F 0 "#PWR08" H 3950 4950 50  0001 C CNN
F 1 "GND" H 3955 5027 50  0000 C CNN
F 2 "" H 3950 5200 50  0001 C CNN
F 3 "" H 3950 5200 50  0001 C CNN
	1    3950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5200 4000 5200
$Comp
L Switch:SW_Push SW3
U 1 1 5CB8B8B7
P 2150 4200
F 0 "SW3" H 2150 4485 50  0000 C CNN
F 1 "SW_Push" H 2150 4394 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 2150 4400 50  0001 C CNN
F 3 "~" H 2150 4400 50  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
