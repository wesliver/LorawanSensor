EESchema Schematic File Version 4
EELAYER 30 0
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
L power:GND #PWR0101
U 1 1 5ECAD610
P 5800 4850
F 0 "#PWR0101" H 5800 4600 50  0001 C CNN
F 1 "GND" H 5805 4677 50  0000 C CNN
F 2 "" H 5800 4850 50  0001 C CNN
F 3 "" H 5800 4850 50  0001 C CNN
	1    5800 4850
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L0:STM32L041K6Tx U1
U 1 1 5ECAC074
P 5850 3700
F 0 "U1" H 5800 4050 50  0000 C CNN
F 1 "STM32L041K6Tx" H 5800 3950 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 5350 2800 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00152023.pdf" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4700 5750 4850
Wire Wire Line
	5750 4850 5800 4850
Wire Wire Line
	5800 4850 5850 4850
Wire Wire Line
	5850 4850 5850 4700
Connection ~ 5800 4850
$Comp
L power:VDDA #PWR0102
U 1 1 5ECB0E10
P 5950 2450
F 0 "#PWR0102" H 5950 2300 50  0001 C CNN
F 1 "VDDA" H 5967 2623 50  0000 C CNN
F 2 "" H 5950 2450 50  0001 C CNN
F 3 "" H 5950 2450 50  0001 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5ECB1FA2
P 4800 3650
F 0 "Y1" V 4846 3519 50  0000 R CNN
F 1 "32KHz" V 4755 3519 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 4800 3650 50  0001 C CNN
F 3 "NX3215SA" H 4800 3650 50  0001 C CNN
	1    4800 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3600 5250 3500
Wire Wire Line
	5250 3800 5250 3700
$Comp
L Device:C C2
U 1 1 5ECB38BC
P 4650 3500
F 0 "C2" V 4450 3500 50  0000 C CNN
F 1 "12,5 pF" V 4550 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 3350 50  0001 C CNN
F 3 "~" H 4650 3500 50  0001 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
Connection ~ 4800 3500
$Comp
L Device:C C1
U 1 1 5ECB4DA6
P 4650 3800
F 0 "C1" V 4800 3800 50  0000 C CNN
F 1 "12,5 pF" V 4900 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4688 3650 50  0001 C CNN
F 3 "~" H 4650 3800 50  0001 C CNN
	1    4650 3800
	0    1    1    0   
$EndComp
Connection ~ 4800 3800
$Comp
L power:GND #PWR0103
U 1 1 5ECB6835
P 4450 3650
F 0 "#PWR0103" H 4450 3400 50  0001 C CNN
F 1 "GND" V 4455 3522 50  0001 R CNN
F 2 "" H 4450 3650 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3500 4500 3650
Wire Wire Line
	4450 3650 4500 3650
Connection ~ 4500 3650
Wire Wire Line
	4500 3650 4500 3800
$Comp
L Switch:SW_Push SW2
U 1 1 5ECB7E79
P 5050 3000
F 0 "SW2" H 5050 3285 50  0000 C CNN
F 1 "RESET" H 5050 3194 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 5050 3200 50  0001 C CNN
F 3 "~" H 5050 3200 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5ECB9728
P 4450 3200
F 0 "SW1" H 4450 3485 50  0000 C CNN
F 1 "BOOT" H 4450 3394 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4450 3400 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5ECBA44B
P 5000 2600
F 0 "C4" V 4748 2600 50  0000 C CNN
F 1 "100 nF" V 4839 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 2450 50  0001 C CNN
F 3 "~" H 5000 2600 50  0001 C CNN
	1    5000 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5ECBAEA8
P 4450 2750
F 0 "C3" V 4198 2750 50  0000 C CNN
F 1 "100 nF" V 4289 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4488 2600 50  0001 C CNN
F 3 "~" H 4450 2750 50  0001 C CNN
	1    4450 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 3200 5250 3200
Wire Wire Line
	4850 3000 4850 2600
Wire Wire Line
	4600 2750 4650 2750
Wire Wire Line
	4650 2750 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	5250 3000 5250 2600
Wire Wire Line
	5150 2600 5250 2600
Connection ~ 5250 3000
Wire Wire Line
	4250 3200 4250 2750
Wire Wire Line
	4250 2750 4300 2750
$Comp
L power:GND #PWR0104
U 1 1 5ECBD389
P 4850 3000
F 0 "#PWR0104" H 4850 2750 50  0001 C CNN
F 1 "GND" H 4855 2827 50  0001 C CNN
F 2 "" H 4850 3000 50  0001 C CNN
F 3 "" H 4850 3000 50  0001 C CNN
	1    4850 3000
	1    0    0    -1  
$EndComp
Connection ~ 4850 3000
$Comp
L power:+3.3V #PWR0105
U 1 1 5ECBDAC5
P 4250 2750
F 0 "#PWR0105" H 4250 2600 50  0001 C CNN
F 1 "+3.3V" H 4265 2923 50  0001 C CNN
F 2 "" H 4250 2750 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
Connection ~ 4250 2750
Wire Wire Line
	4800 3500 5250 3500
Wire Wire Line
	4800 3800 5250 3800
$Comp
L Device:C C5
U 1 1 5ECC3138
P 5600 2750
F 0 "C5" V 5400 2750 50  0000 C CNN
F 1 "100 nF" V 5450 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 2600 50  0001 C CNN
F 3 "~" H 5600 2750 50  0001 C CNN
	1    5600 2750
	0    1    1    0   
$EndComp
Connection ~ 5750 2750
Wire Wire Line
	5750 2750 5750 2800
$Comp
L Device:C C6
U 1 1 5ECC45A5
P 5600 2400
F 0 "C6" V 5348 2400 50  0000 C CNN
F 1 "100 nF" V 5439 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 2250 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    1    1    0   
$EndComp
Connection ~ 5750 2400
Wire Wire Line
	5750 2400 5750 2750
Wire Wire Line
	5850 2400 5750 2400
Wire Wire Line
	5850 2400 5850 2800
Wire Wire Line
	5450 2750 5450 2400
Wire Wire Line
	4850 2600 4850 2300
Wire Wire Line
	4850 2300 5450 2300
Wire Wire Line
	5450 2300 5450 2400
Connection ~ 4850 2600
Connection ~ 5450 2400
Wire Wire Line
	4300 2750 4300 2100
Wire Wire Line
	4300 2100 5750 2100
Connection ~ 4300 2750
Wire Wire Line
	5750 2100 5750 2400
$Comp
L Device:C C7
U 1 1 5ECC9C7E
P 6150 2600
F 0 "C7" V 6000 2600 50  0000 C CNN
F 1 "100 nF" V 5950 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 2450 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5ECCB17B
P 6500 2600
F 0 "C8" V 6350 2600 50  0000 C CNN
F 1 "100 nF" V 6300 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 2450 50  0001 C CNN
F 3 "~" H 6500 2600 50  0001 C CNN
	1    6500 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 2450 6500 2450
Wire Wire Line
	6150 2750 6300 2750
$Comp
L power:GND #PWR0106
U 1 1 5ECCC31E
P 6300 2750
F 0 "#PWR0106" H 6300 2500 50  0001 C CNN
F 1 "GND" H 6305 2577 50  0000 C CNN
F 2 "" H 6300 2750 50  0001 C CNN
F 3 "" H 6300 2750 50  0001 C CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
Connection ~ 6300 2750
Wire Wire Line
	6300 2750 6500 2750
Wire Wire Line
	5950 2450 6150 2450
Wire Wire Line
	5950 2450 5950 2800
Connection ~ 6150 2450
Connection ~ 5950 2450
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5ECCEBAA
P 6300 2100
F 0 "FB1" V 6450 2100 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 6154 2100 50  0001 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6230 2100 50  0001 C CNN
F 3 "~" H 6300 2100 50  0001 C CNN
	1    6300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2100 6200 2100
Connection ~ 5750 2100
Wire Wire Line
	6400 2100 6500 2100
Wire Wire Line
	6500 2100 6500 2450
Connection ~ 6500 2450
Text GLabel 6350 3500 2    50   Input ~ 0
SCK
Text GLabel 6350 3600 2    50   Input ~ 0
MISO
Text GLabel 6350 3700 2    50   Input ~ 0
MOSI
Text GLabel 6350 4300 2    50   Input ~ 0
SWDIO
Text GLabel 6350 4400 2    50   Input ~ 0
SWCLK
Text GLabel 6350 3300 2    50   Input ~ 0
RX
Text GLabel 6350 3200 2    50   Input ~ 0
TX
$Comp
L RF_Module:RFM95W-868S2 U2
U 1 1 5ECD2FAF
P 8400 3850
F 0 "U2" H 8400 3850 50  0000 C CNN
F 1 "RFM95W-868S2" H 8300 3750 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 5100 5500 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 5100 5500 50  0001 C CNN
	1    8400 3850
	1    0    0    -1  
$EndComp
Text GLabel 7900 3550 0    50   Input ~ 0
SCK
Text GLabel 7900 3750 0    50   Input ~ 0
MISO
Text GLabel 7900 3650 0    50   Input ~ 0
MOSI
Wire Wire Line
	8300 4450 8400 4450
Wire Wire Line
	8500 4450 8400 4450
Connection ~ 8400 4450
$Comp
L power:GND #PWR0107
U 1 1 5ECD67D9
P 8400 4450
F 0 "#PWR0107" H 8400 4200 50  0001 C CNN
F 1 "GND" H 8405 4277 50  0000 C CNN
F 2 "" H 8400 4450 50  0001 C CNN
F 3 "" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 5ECD7396
P 8400 3150
F 0 "#PWR0108" H 8400 3000 50  0001 C CNN
F 1 "+3.3V" H 8415 3323 50  0000 C CNN
F 2 "" H 8400 3150 50  0001 C CNN
F 3 "" H 8400 3150 50  0001 C CNN
	1    8400 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5ECD8914
P 8600 3250
F 0 "C9" V 8348 3250 50  0000 C CNN
F 1 "100 nF" V 8439 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8638 3100 50  0001 C CNN
F 3 "~" H 8600 3250 50  0001 C CNN
	1    8600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3150 8400 3250
Wire Wire Line
	8400 3250 8450 3250
Connection ~ 8400 3250
Wire Wire Line
	8400 3250 8400 3350
$Comp
L power:GND #PWR0109
U 1 1 5ECDA993
P 8750 3250
F 0 "#PWR0109" H 8750 3000 50  0001 C CNN
F 1 "GND" H 8755 3077 50  0000 C CNN
F 2 "" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
	1    8750 3250
	1    0    0    -1  
$EndComp
Text GLabel 8900 4250 2    50   Input ~ 0
DIO0
Text GLabel 8900 4150 2    50   Input ~ 0
DIO1
Text GLabel 8900 4050 2    50   Input ~ 0
DIO2
Text GLabel 7900 4050 0    50   Input ~ 0
RESET
Text GLabel 7900 3850 0    50   Input ~ 0
NSS
$Comp
L Device:Antenna AE1
U 1 1 5ECDC133
P 9000 3250
F 0 "AE1" H 9080 3239 50  0000 L CNN
F 1 "Antenna_Chip" H 9080 3148 50  0000 L CNN
F 2 "RF_Antenna:Texas_SWRA416_868MHz_915MHz" H 8900 3425 50  0001 C CNN
F 3 "~" H 8900 3425 50  0001 C CNN
	1    9000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3550 9000 3550
Wire Wire Line
	9000 3550 9000 3450
$Comp
L power:GND #PWR0111
U 1 1 5ECE13EE
P 8400 5650
F 0 "#PWR0111" H 8400 5400 50  0001 C CNN
F 1 "GND" H 8405 5477 50  0000 C CNN
F 2 "" H 8400 5650 50  0001 C CNN
F 3 "" H 8400 5650 50  0001 C CNN
	1    8400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5ECE1F3D
P 8400 5150
F 0 "#PWR0112" H 8400 5000 50  0001 C CNN
F 1 "+3.3V" H 8550 5300 50  0000 C CNN
F 2 "" H 8400 5150 50  0001 C CNN
F 3 "" H 8400 5150 50  0001 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
Text GLabel 8400 5550 2    50   Input ~ 0
SWDIO
Text GLabel 8400 5450 2    50   Input ~ 0
SWCLK
Text GLabel 8400 5350 2    50   Input ~ 0
TX
Text GLabel 8400 5250 2    50   Input ~ 0
RX
$Comp
L Device:R R1
U 1 1 5ECE2E98
P 6750 3000
F 0 "R1" V 6957 3000 50  0000 C CNN
F 1 "10K" V 6866 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6680 3000 50  0001 C CNN
F 3 "~" H 6750 3000 50  0001 C CNN
	1    6750 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5ECE46E0
P 6500 3100
F 0 "R2" V 6707 3100 50  0000 C CNN
F 1 "10M" V 6616 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6430 3100 50  0001 C CNN
F 3 "~" H 6500 3100 50  0001 C CNN
	1    6500 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5ECE56FC
P 5000 4700
F 0 "C10" H 5115 4746 50  0000 L CNN
F 1 "C" H 5115 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 4550 50  0001 C CNN
F 3 "~" H 5000 4700 50  0001 C CNN
	1    5000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4500 5250 4850
Wire Wire Line
	5250 4850 5750 4850
Connection ~ 5750 4850
Wire Wire Line
	5000 4850 5250 4850
Connection ~ 5250 4850
Wire Wire Line
	5250 4400 5000 4400
Wire Wire Line
	5000 4400 5000 4550
Text GLabel 6950 3100 2    50   Input ~ 0
SONDE
$Comp
L Device:R R4
U 1 1 5ECEBE14
P 4300 3900
F 0 "R4" V 4507 3900 50  0000 C CNN
F 1 "10M" V 4416 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
	1    4300 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5ECEC60F
P 4050 4000
F 0 "R3" V 4257 4000 50  0000 C CNN
F 1 "10K" V 4166 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3980 4000 50  0001 C CNN
F 3 "~" H 4050 4000 50  0001 C CNN
	1    4050 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 3900 5250 3900
Wire Wire Line
	5250 4000 4200 4000
Wire Wire Line
	4150 3900 3900 3900
Wire Wire Line
	3900 3900 3900 4000
Text GLabel 3900 3950 0    50   Input ~ 0
SONDE_SHIELD
Text GLabel 6350 3900 2    50   Input ~ 0
NSS
Text GLabel 6350 4000 2    50   Input ~ 0
DIO0
Text GLabel 6350 4100 2    50   Input ~ 0
DIO1
Text GLabel 6350 4200 2    50   Input ~ 0
DIO2
Text GLabel 6350 3800 2    50   Input ~ 0
RESET
Wire Wire Line
	6600 3000 6350 3000
Wire Wire Line
	6650 3100 6900 3100
Wire Wire Line
	6900 3000 6900 3100
Connection ~ 6900 3100
Wire Wire Line
	6900 3100 6950 3100
$Comp
L Sensor_Temperature:DS18B20 U3
U 1 1 5ECF201A
P 7000 4550
F 0 "U3" H 6770 4596 50  0000 R CNN
F 1 "DS18B20" H 6770 4505 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6000 4300 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 6850 4800 50  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5ED19278
P 5300 5450
F 0 "BT1" H 5418 5546 50  0000 L CNN
F 1 "Battery_Cell" H 5418 5455 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5300 5510 50  0001 C CNN
F 3 "~" V 5300 5510 50  0001 C CNN
	1    5300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5ED1B07F
P 5300 5550
F 0 "#PWR0113" H 5300 5300 50  0001 C CNN
F 1 "GND" H 5305 5377 50  0000 C CNN
F 2 "" H 5300 5550 50  0001 C CNN
F 3 "" H 5300 5550 50  0001 C CNN
	1    5300 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5ED1BA2E
P 5300 5250
F 0 "#PWR0114" H 5300 5100 50  0001 C CNN
F 1 "+3.3V" H 5315 5423 50  0000 C CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5ED1FD6B
P 8200 5350
F 0 "J1" H 8050 5100 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8000 5000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8200 5350 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4850 5850 4850
Connection ~ 5850 4850
Wire Wire Line
	7000 4250 6700 4250
Wire Wire Line
	6700 4250 6700 4500
Wire Wire Line
	6700 4500 6350 4500
Wire Wire Line
	7300 4550 7300 3400
Wire Wire Line
	7300 3400 6350 3400
Wire Wire Line
	5250 4250 5250 4300
Text Notes 6500 4950 0    50   ~ 0
No firmware for it\nused internal STM32L4 temp sensor
$EndSCHEMATC