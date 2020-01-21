EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Lever"
Date "2020-01-15"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5800 3200 5800 3650
Wire Wire Line
	5400 3200 5400 3550
Wire Wire Line
	7700 3550 7700 5500
$Comp
L asl_symbols:AVR_ISP X1
U 1 1 5E19724B
P 5250 5000
F 0 "X1" H 5250 5325 50  0000 C CNN
F 1 "AVR_ISP" H 5250 5234 50  0000 C CNN
F 2 "asl_footprints:AVR_ISP" H 5100 4950 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=609-5122-ND" H 5100 4950 50  0001 C CNN
F 4 "ISP Header" H 5250 5000 50  0001 C CNN "Description"
	1    5250 5000
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E1914C1
P 7450 3000
F 0 "H3" H 7550 3046 50  0000 L CNN
F 1 "MountingHole" H 7550 2955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7450 3000 50  0001 C CNN
F 3 "~" H 7450 3000 50  0001 C CNN
F 4 "1" H 7450 3000 50  0001 C CNN "DNP"
	1    7450 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E191246
P 6700 3000
F 0 "H2" H 6800 3046 50  0000 L CNN
F 1 "MountingHole" H 6800 2955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6700 3000 50  0001 C CNN
F 3 "~" H 6700 3000 50  0001 C CNN
F 4 "1" H 6700 3000 50  0001 C CNN "DNP"
	1    6700 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E199A19
P 6700 2650
F 0 "H1" H 6800 2696 50  0000 L CNN
F 1 "MountingHole" H 6800 2605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 6700 2650 50  0001 C CNN
F 3 "~" H 6700 2650 50  0001 C CNN
F 4 "1" H 6700 2650 50  0001 C CNN "DNP"
	1    6700 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5E190954
P 4650 3550
F 0 "J2" H 4730 3542 50  0000 L CNN
F 1 "Conn_01x02" H 4730 3451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4650 3550 50  0001 C CNN
F 3 "~" H 4650 3550 50  0001 C CNN
F 4 "1" H 4650 3550 50  0001 C CNN "DNP"
	1    4650 3550
	-1   0    0    1   
$EndComp
$Comp
L asl_symbols:RJ45_pyControl J1
U 1 1 5E18FEB4
P 5650 2750
F 0 "J1" H 5682 3325 50  0000 C CNN
F 1 "RJ45_pyControl" H 5682 3234 50  0000 C CNN
F 2 "asl_footprints:RJ45_SMD_Vertical" H 5700 2200 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=WM3553CT-ND" V 5550 2725 50  0001 C CNN
F 4 "RJ45 Jack" H 5650 2750 50  0001 C CNN "Description"
	1    5650 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4900 5950 4900
Wire Wire Line
	5950 4900 5950 4500
Wire Wire Line
	6050 4600 6050 5250
Wire Wire Line
	6050 5250 4750 5250
Wire Wire Line
	4750 5250 4750 5000
Wire Wire Line
	4750 5000 4900 5000
Wire Wire Line
	4900 5100 4900 5500
Wire Wire Line
	5600 5100 5800 5100
Wire Wire Line
	5800 5100 5800 5200
Wire Wire Line
	5600 5000 5850 5000
Wire Wire Line
	5850 5000 5850 4400
Wire Wire Line
	5850 4400 6050 4400
Connection ~ 5800 3650
Text Label 5600 5500 0    50   ~ 0
GND
Text Label 5800 4150 0    50   ~ 0
Vcc
Wire Wire Line
	5950 4250 5950 4500
Connection ~ 5950 4500
Wire Wire Line
	5800 4150 5800 3950
Text Label 5500 3950 2    50   ~ 0
GND
Wire Wire Line
	4850 3450 5600 3450
Wire Wire Line
	5600 3450 5600 3200
Wire Wire Line
	4850 3550 5400 3550
Connection ~ 5400 3550
Text Label 4900 3550 0    50   ~ 0
GND
Wire Wire Line
	5300 3200 5300 3400
Wire Wire Line
	5300 3400 6050 3400
Connection ~ 6050 4400
Text Label 5850 3400 0    50   ~ 0
DIO_A
Text Label 4900 3450 0    50   ~ 0
DIO_B
Wire Wire Line
	5700 3200 5700 3300
Wire Wire Line
	5700 3300 6150 3300
Wire Wire Line
	6150 3300 6150 5100
Text Label 6050 3300 0    50   ~ 0
DIO_C
$Comp
L Device:LED D1
U 1 1 5E1D3913
P 4500 4450
F 0 "D1" H 4493 4666 50  0000 C CNN
F 1 "LED" H 4493 4575 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4500 4450 50  0001 C CNN
F 3 "~" H 4500 4450 50  0001 C CNN
F 4 "Indicator LED" H 4500 4450 50  0001 C CNN "Description"
	1    4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3650 6850 3650
Wire Wire Line
	6050 4400 6250 4400
Wire Wire Line
	5950 4500 6250 4500
Wire Wire Line
	6250 4600 6050 4600
Wire Wire Line
	6150 5100 6250 5100
Wire Wire Line
	5800 5200 6250 5200
Connection ~ 6850 5500
Wire Wire Line
	4900 5500 6850 5500
Wire Wire Line
	7700 5500 6850 5500
Wire Wire Line
	6850 3650 6850 3700
$Comp
L MCU_Microchip_ATtiny:ATtiny84-20SSU U1
U 1 1 5E191972
P 6850 4600
F 0 "U1" H 6320 4646 50  0000 R CNN
F 1 "ATtiny84-20SSU" H 6320 4555 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6850 4600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8006.pdf" H 6850 4600 50  0001 C CNN
F 4 "ATtiny 84 MCU" H 6850 4600 50  0001 C CNN "Description"
	1    6850 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5E1E2B3D
P 4250 4950
F 0 "R1" H 4182 4904 50  0000 R CNN
F 1 "10KΩ" H 4182 4995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4290 4940 50  0001 C CNN
F 3 "~" H 4250 4950 50  0001 C CNN
	1    4250 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4450 5700 4300
Wire Wire Line
	5700 4300 6250 4300
Wire Wire Line
	4250 5500 4900 5500
Connection ~ 4900 5500
Wire Wire Line
	4250 5100 4250 5500
Wire Wire Line
	5700 4450 4650 4450
Text Notes 4400 3350 0    50   ~ 0
Limit switch
Wire Wire Line
	4250 4800 4250 4450
Wire Wire Line
	4250 4450 4350 4450
Text Notes 4900 4000 0    50   ~ 0
Servo
$Comp
L Device:C C1
U 1 1 5E1F59E0
P 7000 3650
F 0 "C1" V 6748 3650 50  0000 C CNN
F 1 "0.1µF" V 6839 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7038 3500 50  0001 C CNN
F 3 "~" H 7000 3650 50  0001 C CNN
	1    7000 3650
	0    1    1    0   
$EndComp
Connection ~ 6850 3650
Wire Wire Line
	7150 3650 7150 3550
Connection ~ 7150 3550
Wire Wire Line
	7150 3550 7700 3550
$Comp
L Device:C C2
U 1 1 5E1F5A3D
P 5650 3950
F 0 "C2" V 5398 3950 50  0000 C CNN
F 1 "470 µF" V 5489 3950 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x4.9" H 5688 3800 50  0001 C CNN
F 3 "https://www.digikey.com/products/en?keywords=P15094CT-ND" H 5650 3950 50  0001 C CNN
F 4 "Capacitor" H 5650 3950 50  0001 C CNN "Description"
	1    5650 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 4900 4700 4900
Wire Wire Line
	4700 4900 4700 3650
Wire Wire Line
	4700 3650 5800 3650
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5E1921A1
P 5300 4150
F 0 "J3" H 5380 4192 50  0000 L CNN
F 1 "Conn_01x03" H 5380 4101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5300 4150 50  0001 C CNN
F 3 "~" H 5300 4150 50  0001 C CNN
F 4 "1" H 5300 4150 50  0001 C CNN "DNP"
	1    5300 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 4250 5950 4250
Wire Wire Line
	5500 4150 5800 4150
Wire Wire Line
	5500 4050 5500 3950
Wire Wire Line
	6050 3400 6050 4400
Connection ~ 5800 3950
Connection ~ 5500 3950
Wire Wire Line
	5500 3550 7150 3550
Wire Wire Line
	5400 3550 5500 3550
Connection ~ 5500 3550
Wire Wire Line
	5500 3550 5500 3950
Wire Wire Line
	5800 3650 5800 3950
$EndSCHEMATC
