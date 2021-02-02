EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STMars with BlackPill v1.0"
Date "2021-01-31"
Rev ""
Comp "grados73"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom BlackPill_2
U 1 1 601743E3
P 3550 2450
F 0 "BlackPill_2" H 3600 3567 50  0000 C CNN
F 1 "BP" H 3600 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 3550 2450 50  0001 C CNN
F 3 "~" H 3550 2450 50  0001 C CNN
	1    3550 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom VMOT1
U 1 1 60179E6C
P 4550 1650
F 0 "VMOT1" H 4600 1967 50  0000 C CNN
F 1 "7V" H 4600 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4550 1650 50  0001 C CNN
F 3 "~" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom GND1
U 1 1 6017AB1D
P 5550 1650
F 0 "GND1" H 5600 1967 50  0000 C CNN
F 1 "GND" H 5600 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5550 1650 50  0001 C CNN
F 3 "~" H 5550 1650 50  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom 3V1
U 1 1 6017B7B2
P 6550 1650
F 0 "3V1" H 6600 1967 50  0000 C CNN
F 1 "3V" H 6600 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6550 1650 50  0001 C CNN
F 3 "~" H 6550 1650 50  0001 C CNN
	1    6550 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom 5V1
U 1 1 6017D349
P 7550 1650
F 0 "5V1" H 7600 1967 50  0000 C CNN
F 1 "5V" H 7600 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7550 1650 50  0001 C CNN
F 3 "~" H 7550 1650 50  0001 C CNN
	1    7550 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom HC-5
U 1 1 6017EFC5
P 4550 2750
F 0 "HC-5" H 4600 3167 50  0000 C CNN
F 1 "BT_Mod" H 4600 3076 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 4550 2750 50  0001 C CNN
F 3 "~" H 4550 2750 50  0001 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom MostekH_1
U 1 1 6018109C
P 6550 2850
F 0 "MostekH_1" H 6600 3367 50  0000 C CNN
F 1 "H" H 6600 3276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 6550 2850 50  0001 C CNN
F 3 "~" H 6550 2850 50  0001 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom MostekH_2
U 1 1 601856F1
P 7550 2850
F 0 "MostekH_2" H 7600 3367 50  0000 C CNN
F 1 "H" H 7600 3276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 7550 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male SW1
U 1 1 6020776B
P 9650 1600
F 0 "SW1" H 9622 1532 50  0000 R CNN
F 1 "SW1" H 9622 1623 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9650 1600 50  0001 C CNN
F 3 "~" H 9650 1600 50  0001 C CNN
	1    9650 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 1600 9200 1500
Wire Wire Line
	9200 1500 9450 1500
Wire Wire Line
	9450 1600 9300 1600
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom Free_con1
U 1 1 60217D38
P 8550 3450
F 0 "Free_con1" H 8600 4567 50  0000 C CNN
F 1 "FC" H 8600 4476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8550 3450 50  0001 C CNN
F 3 "~" H 8550 3450 50  0001 C CNN
	1    8550 3450
	1    0    0    -1  
$EndComp
NoConn ~ 9450 1700
$Comp
L Connector_Generic:Conn_02x20_Top_Bottom BlackPill_1
U 1 1 60171C6E
P 2550 2450
F 0 "BlackPill_1" H 2600 3567 50  0000 C CNN
F 1 "BP" H 2600 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2550 2450 50  0001 C CNN
F 3 "~" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom Vin1
U 1 1 60188367
P 8550 1650
F 0 "Vin1" H 8600 1967 50  0000 C CNN
F 1 "7V" H 8600 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 8550 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom Pololu1
U 1 1 601801D1
P 5550 2650
F 0 "Pololu1" H 5600 2967 50  0000 C CNN
F 1 "StepDown3V" H 5600 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5550 2650 50  0001 C CNN
F 3 "~" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2350 1650
Wire Wire Line
	2350 1750 2350 1850
Wire Wire Line
	2350 1950 2350 2050
Wire Wire Line
	2350 2150 2350 2250
Wire Wire Line
	2350 2350 2350 2450
Wire Wire Line
	2350 2550 2350 2650
Wire Wire Line
	2350 2750 2350 2850
Wire Wire Line
	2350 2950 2350 3050
Wire Wire Line
	2350 3150 2350 3250
Wire Wire Line
	2350 3350 2350 3450
Wire Wire Line
	2850 1550 2850 1650
Wire Wire Line
	2850 1750 2850 1850
Wire Wire Line
	2850 1950 2850 2050
Wire Wire Line
	2850 2150 2850 2250
Wire Wire Line
	2850 2350 2850 2450
Wire Wire Line
	2850 2550 2850 2650
Wire Wire Line
	2850 2750 2850 2850
Wire Wire Line
	2850 2950 2850 3050
Wire Wire Line
	2850 3150 2850 3250
Wire Wire Line
	2850 3350 2850 3450
Wire Wire Line
	3350 1550 3350 1650
Wire Wire Line
	3350 1750 3350 1850
Wire Wire Line
	3350 1950 3350 2050
Wire Wire Line
	3350 2150 3350 2250
Wire Wire Line
	3350 2350 3350 2450
Wire Wire Line
	3350 2550 3350 2650
Wire Wire Line
	3350 2750 3350 2850
Wire Wire Line
	3350 2950 3350 3050
Wire Wire Line
	3350 3150 3350 3250
Wire Wire Line
	3350 3350 3350 3450
Wire Wire Line
	3850 3450 3850 3350
Wire Wire Line
	3850 3250 3850 3150
Wire Wire Line
	3850 3050 3850 2950
Wire Wire Line
	3850 2750 3850 2850
Wire Wire Line
	3850 2650 3850 2550
Wire Wire Line
	3850 2450 3850 2350
Wire Wire Line
	3850 2250 3850 2150
Wire Wire Line
	3850 1950 3850 2050
Wire Wire Line
	3850 1850 3850 1750
Wire Wire Line
	3850 1650 3850 1550
Wire Wire Line
	4350 1550 4350 1650
Wire Wire Line
	4350 1750 4350 1850
Wire Wire Line
	4850 1550 4850 1650
Wire Wire Line
	4850 1750 4850 1850
Wire Wire Line
	5350 1550 5350 1650
Wire Wire Line
	5350 1750 5350 1850
Wire Wire Line
	5850 1550 5850 1650
Wire Wire Line
	5850 1750 5850 1850
Wire Wire Line
	6350 1550 6350 1650
Wire Wire Line
	6350 1750 6350 1850
Wire Wire Line
	6850 1550 6850 1650
Wire Wire Line
	6850 1750 6850 1850
Wire Wire Line
	7350 1550 7350 1650
Wire Wire Line
	7350 1750 7350 1850
Wire Wire Line
	7850 1550 7850 1650
Wire Wire Line
	7850 1750 7850 1850
Wire Wire Line
	8350 1550 8350 1650
Wire Wire Line
	8350 1750 8350 1800
Wire Wire Line
	8850 1550 8850 1600
Wire Wire Line
	8850 1750 8850 1850
Wire Wire Line
	9200 1600 8850 1600
Connection ~ 8850 1600
Wire Wire Line
	8850 1600 8850 1650
Wire Wire Line
	9300 2000 8250 2000
Wire Wire Line
	8250 2000 8250 1800
Wire Wire Line
	8250 1800 8350 1800
Wire Wire Line
	9300 1600 9300 2000
Connection ~ 8350 1800
Wire Wire Line
	8350 1800 8350 1850
Wire Wire Line
	5350 2550 5350 2650
Wire Wire Line
	5350 2750 5350 2850
Wire Wire Line
	5850 2550 5850 2650
Wire Wire Line
	5850 2750 5850 2850
Wire Wire Line
	6350 2550 6350 2650
Wire Wire Line
	6350 2750 6350 2850
Wire Wire Line
	6350 2950 6350 3050
Wire Wire Line
	6350 3150 6350 3250
Wire Wire Line
	6850 2550 6850 2650
Wire Wire Line
	6850 2750 6850 2850
Wire Wire Line
	6850 2950 6850 3050
Wire Wire Line
	6850 3150 6850 3250
Wire Wire Line
	7350 2550 7350 2650
Wire Wire Line
	7350 2750 7350 2850
Wire Wire Line
	7350 2950 7350 3050
Wire Wire Line
	7350 3150 7350 3250
Wire Wire Line
	7850 2550 7850 2650
Wire Wire Line
	7850 2750 7850 2850
Wire Wire Line
	7850 2950 7850 3050
Wire Wire Line
	7850 3150 7850 3250
Wire Wire Line
	8350 2550 8350 2650
Wire Wire Line
	8350 2750 8350 2850
Wire Wire Line
	8350 2950 8350 3050
Wire Wire Line
	8350 3150 8350 3250
Wire Wire Line
	8350 3350 8350 3450
Wire Wire Line
	8350 3550 8350 3650
Wire Wire Line
	8350 3750 8350 3850
Wire Wire Line
	8350 3950 8350 4050
Wire Wire Line
	8350 4150 8350 4250
Wire Wire Line
	8350 4350 8350 4450
Wire Wire Line
	8850 4450 8850 4350
Wire Wire Line
	8850 4250 8850 4150
Wire Wire Line
	8850 4050 8850 3950
Wire Wire Line
	8850 3850 8850 3750
Wire Wire Line
	8850 3650 8850 3550
Wire Wire Line
	8850 3450 8850 3350
Wire Wire Line
	8850 3250 8850 3150
Wire Wire Line
	8850 3050 8850 2950
Wire Wire Line
	8850 2850 8850 2750
Wire Wire Line
	8850 2650 8850 2550
Wire Wire Line
	4350 2550 4350 2650
Wire Wire Line
	4350 2750 4350 2850
Wire Wire Line
	4350 2950 4350 3050
Wire Wire Line
	4850 2550 4850 2650
Wire Wire Line
	4850 2750 4850 2850
Wire Wire Line
	4850 2950 4850 3050
Wire Wire Line
	4350 1650 4350 1750
Connection ~ 4350 1650
Connection ~ 4350 1750
Wire Wire Line
	4850 1650 4850 1750
Connection ~ 4850 1650
Connection ~ 4850 1750
Wire Wire Line
	5350 1650 5350 1750
Connection ~ 5350 1650
Connection ~ 5350 1750
Wire Wire Line
	5850 1650 5850 1750
Connection ~ 5850 1650
Connection ~ 5850 1750
Wire Wire Line
	6350 1650 6350 1750
Connection ~ 6350 1650
Connection ~ 6350 1750
Wire Wire Line
	6850 1650 6850 1750
Connection ~ 6850 1650
Connection ~ 6850 1750
Wire Wire Line
	7350 1650 7350 1750
Connection ~ 7350 1650
Connection ~ 7350 1750
Wire Wire Line
	7850 1650 7850 1750
Connection ~ 7850 1650
Connection ~ 7850 1750
Wire Wire Line
	4350 1850 4350 2000
Wire Wire Line
	4350 2000 4850 2000
Wire Wire Line
	4850 2000 4850 1850
Connection ~ 4350 1850
Connection ~ 4850 1850
Wire Wire Line
	5350 1850 5350 2000
Wire Wire Line
	5350 2000 5850 2000
Wire Wire Line
	5850 2000 5850 1850
Connection ~ 5350 1850
Connection ~ 5850 1850
Wire Wire Line
	6350 1850 6350 2000
Wire Wire Line
	6350 2000 6850 2000
Wire Wire Line
	6850 2000 6850 1850
Connection ~ 6350 1850
Connection ~ 6850 1850
Wire Wire Line
	7350 1850 7350 2000
Wire Wire Line
	7350 2000 7850 2000
Wire Wire Line
	7850 2000 7850 1850
Connection ~ 7350 1850
Connection ~ 7850 1850
$EndSCHEMATC
