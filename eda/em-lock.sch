EESchema Schematic File Version 2
LIBS:em-lock-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:switches
LIBS:powerint
LIBS:Oscillators
LIBS:ab2_usb
LIBS:video
LIBS:ttl_ieee
LIBS:transf
LIBS:supertex
LIBS:stm8
LIBS:silabs
LIBS:sensors
LIBS:rfcom
LIBS:relays
LIBS:references
LIBS:pspice
LIBS:onsemi
LIBS:nxp_armmcu
LIBS:nordicsemi
LIBS:msp430
LIBS:motor_drivers
LIBS:microchip_pic32mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic10mcu
LIBS:microchip_dspic33dsc
LIBS:maxim
LIBS:logo
LIBS:ir
LIBS:hc11
LIBS:graphic
LIBS:gennum
LIBS:ftdi
LIBS:elec-unifil
LIBS:diode
LIBS:dc-dc
LIBS:cmos_ieee
LIBS:brooktre
LIBS:analog_devices
LIBS:actel
LIBS:ac-dc
LIBS:Zilog
LIBS:Xicor
LIBS:Power_Management
LIBS:Lattice
LIBS:ESD_Protection
LIBS:Altera
LIBS:74xgxx
LIBS:ab2_7segment
LIBS:ab2_audio
LIBS:ab2_buffer
LIBS:ab2_capacitor
LIBS:ab2_connectivity
LIBS:ab2_dac
LIBS:ab2_diode
LIBS:ab2_gpio_expansion
LIBS:ab2_header
LIBS:ab2_idc
LIBS:ab2_inductor
LIBS:ab2_input_devices
LIBS:ab2_jumper
LIBS:ab2_lcd
LIBS:ab2_led
LIBS:ab2_memory
LIBS:ab2_opamp
LIBS:ab2_pot
LIBS:ab2_power
LIBS:ab2_regulator
LIBS:ab2_relay
LIBS:ab2_resistor
LIBS:ab2_sensor
LIBS:ab2_stepper
LIBS:ab2_supply
LIBS:ab2_terminal_block
LIBS:ab2_test
LIBS:ab2_transistor
LIBS:ab2_uC
LIBS:ab2_xtal
LIBS:SparkFun
LIBS:I20
LIBS:em-lock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L MMBT3906 Q2
U 1 1 57BF0F6F
P 1800 2200
F 0 "Q2" V 1750 2000 50  0000 L CNN
F 1 "MMBT3906" V 2050 2000 50  0000 L CNN
F 2 "I20:SOT-23" V 2150 2000 50  0000 L CIN
F 3 "" H 1800 2200 50  0000 L CNN
	1    1800 2200
	-1   0    0    -1  
$EndComp
$Comp
L MMBT3906 Q1
U 1 1 57BF0FDE
P 1600 1750
F 0 "Q1" V 1550 1550 50  0000 L CNN
F 1 "MMBT3906" V 1850 1550 50  0000 L CNN
F 2 "I20:SOT-23" V 1950 1550 50  0000 L CIN
F 3 "" H 1600 1750 50  0000 L CNN
	1    1600 1750
	-1   0    0    -1  
$EndComp
$Comp
L VDD #PWR2
U 1 1 57BF1F35
P 1700 3000
F 0 "#PWR2" H 1700 2850 50  0001 C CNN
F 1 "VDD" H 1717 3173 50  0000 C CNN
F 2 "" H 1700 3000 50  0000 C CNN
F 3 "" H 1700 3000 50  0000 C CNN
	1    1700 3000
	-1   0    0    1   
$EndComp
$Comp
L R R12
U 1 1 57BF244F
P 2350 2200
F 0 "R12" V 2143 2200 50  0000 C CNN
F 1 "2k" V 2234 2200 50  0000 C CNN
F 2 "I20:R_0805" V 2280 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0000 C CNN
	1    2350 2200
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 57BF251B
P 2350 1750
F 0 "R11" V 2143 1750 50  0000 C CNN
F 1 "2k" V 2234 1750 50  0000 C CNN
F 2 "I20:R_0805" V 2280 1750 50  0001 C CNN
F 3 "" H 2350 1750 50  0000 C CNN
	1    2350 1750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X04 P6
U 1 1 57BFAC84
P 8750 5950
F 0 "P6" H 8750 6350 50  0000 C CNN
F 1 "ESP8266_CONN" H 8700 6250 50  0000 C CNN
F 2 "I20:ESP8266" H 8750 4750 50  0001 C CNN
F 3 "" H 8750 4750 50  0000 C CNN
	1    8750 5950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR33
U 1 1 57BFC190
P 9450 5800
F 0 "#PWR33" H 9450 5650 50  0001 C CNN
F 1 "VDD" V 9450 6000 50  0000 C CNN
F 2 "" H 9450 5800 50  0000 C CNN
F 3 "" H 9450 5800 50  0000 C CNN
	1    9450 5800
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 57BFC498
P 9350 5600
F 0 "C8" H 9450 5700 50  0000 L CNN
F 1 "10uF" H 9400 5500 50  0000 L CNN
F 2 "I20:C_0805" H 9388 5450 50  0001 C CNN
F 3 "" H 9350 5600 50  0000 C CNN
	1    9350 5600
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 57BFCAA7
P 9100 5600
F 0 "C7" H 9150 5700 50  0000 L CNN
F 1 "100nF" H 9100 5500 50  0000 L CNN
F 2 "I20:C_0805" H 9138 5450 50  0001 C CNN
F 3 "" H 9100 5600 50  0000 C CNN
	1    9100 5600
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_DGS Q4
U 1 1 57BF2360
P 8950 3800
F 0 "Q4" H 8800 3950 50  0000 L CNN
F 1 "Q_NMOS_DGS" V 9200 3500 50  0000 L CNN
F 2 "I20:SOT-23" H 9150 3900 50  0001 C CNN
F 3 "" H 8950 3800 50  0000 C CNN
	1    8950 3800
	-1   0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 57BF2660
P 9700 3800
F 0 "R24" V 9493 3800 50  0000 C CNN
F 1 "240" V 9584 3800 50  0000 C CNN
F 2 "I20:R_0805" V 9630 3800 50  0001 C CNN
F 3 "" H 9700 3800 50  0000 C CNN
	1    9700 3800
	0    1    1    0   
$EndComp
$Comp
L ZENER D3
U 1 1 57BF338B
P 9150 4050
F 0 "D3" V 9104 4129 50  0000 L CNN
F 1 "ZENER-MOSFET-GATE" V 9500 4050 50  0000 L CNN
F 2 "I20:MiniMELF_Standard" H 9150 4050 50  0001 C CNN
F 3 "" H 9150 4050 50  0000 C CNN
	1    9150 4050
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 57BF37C0
P 9500 4100
F 0 "R23" H 9570 4146 50  0000 L CNN
F 1 "10k" H 9570 4055 50  0000 L CNN
F 2 "I20:R_0805" V 9430 4100 50  0001 C CNN
F 3 "" H 9500 4100 50  0000 C CNN
	1    9500 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P7
U 1 1 57BF438E
P 9150 3100
F 0 "P7" H 9227 3141 50  0000 L CNN
F 1 "LOCK_CONN" H 9227 3050 50  0000 L CNN
F 2 "I20:PhoenixContact_MSTBA-G_04x5.08mm_Angled" H 9150 3100 50  0001 C CNN
F 3 "" H 9150 3100 50  0000 C CNN
	1    9150 3100
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 57BF47C2
P 8650 3350
F 0 "D2" H 8500 3250 50  0000 L CNN
F 1 "M7" H 8700 3250 50  0000 L CNN
F 2 "I20:SMA_Standard" H 8650 3350 50  0001 C CNN
F 3 "" H 8650 3350 50  0000 C CNN
	1    8650 3350
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR15
U 1 1 57BFAAAC
P 4800 3250
F 0 "#PWR15" H 4800 3100 50  0001 C CNN
F 1 "VDD" H 4800 3400 50  0000 C CNN
F 2 "" H 4800 3250 50  0000 C CNN
F 3 "" H 4800 3250 50  0000 C CNN
	1    4800 3250
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 57BFAAB2
P 4800 3500
F 0 "R15" H 4870 3546 50  0000 L CNN
F 1 "10k" H 4870 3455 50  0000 L CNN
F 2 "I20:R_0805" V 4730 3500 50  0001 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
	1    4800 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 57BFAABE
P 5000 3950
F 0 "P5" H 5078 3991 50  0000 L CNN
F 1 "BTN_CALL" H 4900 3800 50  0000 L CNN
F 2 "I20:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 5000 3950 50  0001 C CNN
F 3 "" H 5000 3950 50  0000 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
$Comp
L 74LVC2G14 U1
U 2 1 57C00A6E
P 5750 3700
F 0 "U1" H 5725 3967 50  0000 C CNN
F 1 "74LVC2G14" H 5725 3876 50  0000 C CNN
F 2 "I20:SOT-23-6" H 5900 3500 50  0001 C CNN
F 3 "" H 5750 3700 50  0000 C CNN
	2    5750 3700
	1    0    0    -1  
$EndComp
$Sheet
S 8100 800  2100 1400
U 5818E6EE
F0 "stm32f103c8" 60
F1 "stm32.sch" 60
F2 "PIN_RED" O L 8100 1650 60 
F3 "PIN_GREEN" O L 8100 1750 60 
F4 "PIN_BLUE" O L 8100 1850 60 
F5 "ESP_RESET" O L 8100 1950 60 
F6 "UART_INT_TX" O L 8100 2050 60 
F7 "UART_INT_RX" I L 8100 2150 60 
F8 "BTN_OPEN" I R 10200 850 60 
F9 "BTN_CALL" I R 10200 950 60 
F10 "LOCK_OPEN" O R 10200 1050 60 
F11 "UART_EXT_TX" O R 10200 1150 60 
F12 "UART_EXT_RX" I R 10200 1250 60 
F13 "PB13_SPI2_SCK" O R 10200 1550 60 
F14 "PB14_SPI2_MISO" I R 10200 1650 60 
F15 "PB15_SPI2_MOSI" O R 10200 1850 60 
F16 "PB8_RC522A_IRQ" I R 10200 1750 60 
F17 "PB9_RC522B_IRQ" I R 10200 1950 60 
F18 "PB7_RC522_RST" O R 10200 2050 60 
F19 "PB5_RC522A_CS" O L 8100 850 60 
F20 "PB6_RC522B_CS" O L 8100 950 60 
$EndSheet
Text GLabel 2500 2650 2    60   Input ~ 0
PIN_RED
Text GLabel 2500 2200 2    60   Input ~ 0
PIN_GREEN
Text GLabel 2500 1750 2    60   Input ~ 0
PIN_BLUE
Text GLabel 9850 5900 2    60   Input ~ 0
ESP_RESET
Text GLabel 8075 5800 0    60   Input ~ 0
UART_INT_TX
Text GLabel 10000 3800 2    60   Input ~ 0
LOCK_OPEN
Text GLabel 8550 2950 0    60   Input ~ 0
UART_EXT_TX
Text GLabel 8550 3050 0    60   Input ~ 0
UART_EXT_RX
Text GLabel 6000 3700 2    60   Input ~ 0
BTN_CALL
Text Notes 3600 650  2    60   ~ 0
RGB LED connector/placement
Text Notes 10250 5100 0    60   ~ 0
ESP8266 connector
Text Notes 10250 2650 0    60   ~ 0
Em-lock connector
Text Notes 10500 650  0    60   ~ 0
CPU + periph
Text Notes 6350 2650 0    60   ~ 0
Call button
Text Notes 6350 650  0    60   ~ 0
Open button
$Comp
L R R13
U 1 1 57BF21A1
P 2350 2650
F 0 "R13" V 2143 2650 50  0000 C CNN
F 1 "2k" V 2234 2650 50  0000 C CNN
F 2 "I20:R_0805" V 2280 2650 50  0001 C CNN
F 3 "" H 2350 2650 50  0000 C CNN
	1    2350 2650
	0    -1   -1   0   
$EndComp
$Comp
L MMBT3906 Q3
U 1 1 57BF0EF1
P 2000 2650
F 0 "Q3" V 1950 2450 50  0000 L CNN
F 1 "MMBT3906" V 2250 2450 50  0000 L CNN
F 2 "I20:SOT-23" V 2350 2450 50  0000 L CIN
F 3 "" H 2000 2650 50  0000 L CNN
	1    2000 2650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 57BF398B
P 2650 1500
F 0 "P1" H 2700 1250 50  0000 R CNN
F 1 "EXT_LED_CONN" H 2700 1800 50  0000 R CNN
F 2 "I20:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0000 C CNN
	1    2650 1500
	0    -1   1    0   
$EndComp
$Comp
L GNDD #PWR10
U 1 1 582803A4
P 2800 950
F 0 "#PWR10" H 2800 700 50  0001 C CNN
F 1 "GNDD" H 2800 800 50  0000 C CNN
F 2 "" H 2800 950 50  0000 C CNN
F 3 "" H 2800 950 50  0000 C CNN
	1    2800 950 
	-1   0    0    1   
$EndComp
$Comp
L R R22
U 1 1 5828371B
P 9250 6000
F 0 "R22" V 9250 6000 50  0000 C CNN
F 1 "4.7k" V 9200 5800 50  0000 C CNN
F 2 "I20:R_0805" V 9180 6000 50  0001 C CNN
F 3 "" H 9250 6000 50  0000 C CNN
	1    9250 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_01X08 P2
U 1 1 5829A13D
P 1450 6350
F 0 "P2" H 1527 6391 50  0000 L CNN
F 1 "RC522A" H 1527 6300 50  0000 L CNN
F 2 "I20:JST_XH_B08B-XH-A_08x2.50mm_Straight" H 1450 6350 50  0001 C CNN
F 3 "" H 1450 6350 50  0000 C CNN
	1    1450 6350
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR9
U 1 1 5829C375
P 2250 6000
F 0 "#PWR9" H 2250 5850 50  0001 C CNN
F 1 "VDD" V 2250 6200 50  0000 C CNN
F 2 "" H 2250 6000 50  0000 C CNN
F 3 "" H 2250 6000 50  0000 C CNN
	1    2250 6000
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5829DC43
P 2200 5800
F 0 "C2" H 2250 5700 50  0000 C CNN
F 1 "10uF" H 2050 5700 50  0000 C CNN
F 2 "I20:C_0805" H 2238 5650 50  0001 C CNN
F 3 "" H 2200 5800 50  0000 C CNN
	1    2200 5800
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5829DD7E
P 1950 5800
F 0 "C1" H 2000 5700 50  0000 C CNN
F 1 "100nF" H 2200 5700 50  0000 C CNN
F 2 "I20:C_0805" H 1988 5650 50  0001 C CNN
F 3 "" H 1950 5800 50  0000 C CNN
	1    1950 5800
	-1   0    0    1   
$EndComp
Text GLabel 2250 6700 2    60   Input ~ 0
PB5_RC522A_CS
Text GLabel 2250 6600 2    60   Input ~ 0
PB13_SPI2_SCK
Text GLabel 2250 6400 2    60   Input ~ 0
PB14_SPI2_MISO
Text GLabel 2250 6500 2    60   Input ~ 0
PB15_SPI2_MOSI
Text GLabel 2250 6300 2    60   Input ~ 0
PB8_RC522A_IRQ
Text GLabel 2250 6100 2    60   Input ~ 0
PB7_RC522_RST
$Comp
L R R7
U 1 1 582D04E5
P 2100 6900
F 0 "R7" V 2100 6850 50  0000 L CNN
F 1 "4.7k" V 2050 7050 50  0000 L CNN
F 2 "I20:R_0805" V 2030 6900 50  0001 C CNN
F 3 "" H 2100 6900 50  0000 C CNN
	1    2100 6900
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 582D5886
P 2000 6900
F 0 "R5" V 2000 6850 50  0000 L CNN
F 1 "4.7k" V 1950 7050 50  0000 L CNN
F 2 "I20:R_0805" V 1930 6900 50  0001 C CNN
F 3 "" H 2000 6900 50  0000 C CNN
	1    2000 6900
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 582D5FEB
P 1900 6900
F 0 "R4" V 1900 6850 50  0000 L CNN
F 1 "4.7k" V 1850 7050 50  0000 L CNN
F 2 "I20:R_0805" V 1830 6900 50  0001 C CNN
F 3 "" H 1900 6900 50  0000 C CNN
	1    1900 6900
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR1
U 1 1 582EA563
P 1650 6200
F 0 "#PWR1" H 1650 5950 50  0001 C CNN
F 1 "GNDD" V 1655 6072 50  0000 R CNN
F 2 "" H 1650 6200 50  0000 C CNN
F 3 "" H 1650 6200 50  0000 C CNN
	1    1650 6200
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 582F5135
P 2200 6900
F 0 "R8" V 2200 6850 50  0000 L CNN
F 1 "4.7k" V 2150 7050 50  0000 L CNN
F 2 "I20:R_0805" V 2130 6900 50  0001 C CNN
F 3 "" H 2200 6900 50  0000 C CNN
	1    2200 6900
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR6
U 1 1 582F6F93
P 2100 7300
F 0 "#PWR6" H 2100 7050 50  0001 C CNN
F 1 "GNDD" V 2100 7050 50  0000 C CNN
F 2 "" H 2100 7300 50  0000 C CNN
F 3 "" H 2100 7300 50  0000 C CNN
	1    2100 7300
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR8
U 1 1 582F7FA8
P 2200 7300
F 0 "#PWR8" H 2200 7150 50  0001 C CNN
F 1 "VDD" V 2200 7500 50  0000 C CNN
F 2 "" H 2200 7300 50  0000 C CNN
F 3 "" H 2200 7300 50  0000 C CNN
	1    2200 7300
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR5
U 1 1 582F87A4
P 2000 7300
F 0 "#PWR5" H 2000 7150 50  0001 C CNN
F 1 "VDD" V 2000 7500 50  0000 C CNN
F 2 "" H 2000 7300 50  0000 C CNN
F 3 "" H 2000 7300 50  0000 C CNN
	1    2000 7300
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR3
U 1 1 582F88B7
P 1900 7300
F 0 "#PWR3" H 1900 7150 50  0001 C CNN
F 1 "VDD" V 1900 7500 50  0000 C CNN
F 2 "" H 1900 7300 50  0000 C CNN
F 3 "" H 1900 7300 50  0000 C CNN
	1    1900 7300
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR7
U 1 1 582FC419
P 2200 5650
F 0 "#PWR7" H 2200 5400 50  0001 C CNN
F 1 "GNDD" V 2200 5400 50  0000 C CNN
F 2 "" H 2200 5650 50  0000 C CNN
F 3 "" H 2200 5650 50  0000 C CNN
	1    2200 5650
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR4
U 1 1 582FC718
P 1950 5650
F 0 "#PWR4" H 1950 5400 50  0001 C CNN
F 1 "GNDD" V 1950 5400 50  0000 C CNN
F 2 "" H 1950 5650 50  0000 C CNN
F 3 "" H 1950 5650 50  0000 C CNN
	1    1950 5650
	-1   0    0    1   
$EndComp
$Comp
L R R17
U 1 1 5830E800
P 5100 3700
F 0 "R17" V 5200 3650 50  0000 L CNN
F 1 "0" V 5000 3700 50  0000 L CNN
F 2 "I20:R_0805" V 5030 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0000 C CNN
	1    5100 3700
	0    1    -1   0   
$EndComp
$Comp
L GNDD #PWR23
U 1 1 58310A6A
P 5400 3250
F 0 "#PWR23" H 5400 3000 50  0001 C CNN
F 1 "GNDD" H 5400 3100 50  0000 C CNN
F 2 "" H 5400 3250 50  0000 C CNN
F 3 "" H 5400 3250 50  0000 C CNN
	1    5400 3250
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR16
U 1 1 58311616
P 4800 4150
F 0 "#PWR16" H 4800 3900 50  0001 C CNN
F 1 "GNDD" H 4800 4000 50  0000 C CNN
F 2 "" H 4800 4150 50  0000 C CNN
F 3 "" H 4800 4150 50  0000 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 58313AF8
P 5400 3450
F 0 "C5" H 5250 3550 50  0000 L CNN
F 1 "0" H 5450 3550 50  0000 L CNN
F 2 "I20:C_0805" H 5400 3450 50  0001 C CNN
F 3 "" H 5400 3450 50  0000 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR13
U 1 1 5831B08E
P 4800 1050
F 0 "#PWR13" H 4800 900 50  0001 C CNN
F 1 "VDD" H 4800 1200 50  0000 C CNN
F 2 "" H 4800 1050 50  0000 C CNN
F 3 "" H 4800 1050 50  0000 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5831B094
P 4800 1300
F 0 "R14" H 4870 1346 50  0000 L CNN
F 1 "10k" H 4870 1255 50  0000 L CNN
F 2 "I20:R_0805" V 4730 1300 50  0001 C CNN
F 3 "" H 4800 1300 50  0000 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 5831B09A
P 5000 1750
F 0 "P4" H 5078 1791 50  0000 L CNN
F 1 "BTN_OPEN" H 4900 1600 50  0000 L CNN
F 2 "I20:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 5000 1750 50  0001 C CNN
F 3 "" H 5000 1750 50  0000 C CNN
	1    5000 1750
	1    0    0    -1  
$EndComp
$Comp
L 74LVC2G14 U1
U 1 1 5831B0A0
P 5750 1500
F 0 "U1" H 5725 1767 50  0000 C CNN
F 1 "74LVC2G14" H 5725 1676 50  0000 C CNN
F 2 "I20:SOT-23-6" H 5900 1300 50  0001 C CNN
F 3 "" H 5750 1500 50  0000 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5831B0AC
P 5100 1500
F 0 "R16" V 5200 1450 50  0000 L CNN
F 1 "0" V 5200 1650 50  0000 L CNN
F 2 "I20:R_0805" V 5030 1500 50  0001 C CNN
F 3 "" H 5100 1500 50  0000 C CNN
	1    5100 1500
	0    1    -1   0   
$EndComp
$Comp
L GNDD #PWR22
U 1 1 5831B0B3
P 5400 1050
F 0 "#PWR22" H 5400 800 50  0001 C CNN
F 1 "GNDD" H 5400 900 50  0000 C CNN
F 2 "" H 5400 1050 50  0000 C CNN
F 3 "" H 5400 1050 50  0000 C CNN
	1    5400 1050
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR14
U 1 1 5831B0B9
P 4800 1950
F 0 "#PWR14" H 4800 1700 50  0001 C CNN
F 1 "GNDD" H 4800 1800 50  0000 C CNN
F 2 "" H 4800 1950 50  0000 C CNN
F 3 "" H 4800 1950 50  0000 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5831B0BF
P 5400 1250
F 0 "C4" H 5250 1350 50  0000 L CNN
F 1 "0" H 5450 1350 50  0000 L CNN
F 2 "I20:C_0805" H 5400 1250 50  0001 C CNN
F 3 "" H 5400 1250 50  0000 C CNN
	1    5400 1250
	1    0    0    -1  
$EndComp
Text GLabel 6000 1500 2    60   Input ~ 0
BTN_OPEN
$Comp
L VDD #PWR26
U 1 1 5835543A
P 5500 5950
F 0 "#PWR26" H 5500 5800 50  0001 C CNN
F 1 "VDD" V 5500 6150 50  0000 C CNN
F 2 "" H 5500 5950 50  0000 C CNN
F 3 "" H 5500 5950 50  0000 C CNN
	1    5500 5950
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 58355440
P 5450 5750
F 0 "C6" H 5500 5650 50  0000 C CNN
F 1 "10uF" H 5300 5650 50  0000 C CNN
F 2 "I20:C_0805" H 5488 5600 50  0001 C CNN
F 3 "" H 5450 5750 50  0000 C CNN
	1    5450 5750
	-1   0    0    1   
$EndComp
$Comp
L C C3
U 1 1 58355446
P 5200 5750
F 0 "C3" H 5250 5650 50  0000 C CNN
F 1 "100nF" V 5350 5450 50  0000 C CNN
F 2 "I20:C_0805" H 5238 5600 50  0001 C CNN
F 3 "" H 5200 5750 50  0000 C CNN
	1    5200 5750
	-1   0    0    1   
$EndComp
Text GLabel 5500 6550 2    60   Input ~ 0
PB13_SPI2_SCK
Text GLabel 5500 6350 2    60   Input ~ 0
PB14_SPI2_MISO
Text GLabel 5500 6450 2    60   Input ~ 0
PB15_SPI2_MOSI
Text GLabel 5500 6250 2    60   Input ~ 0
PB9_RC522B_IRQ
Text GLabel 5500 6050 2    60   Input ~ 0
PB7_RC522_RST
$Comp
L R R20
U 1 1 58355452
P 5350 6850
F 0 "R20" V 5350 6800 50  0000 L CNN
F 1 "4.7k" V 5300 7000 50  0000 L CNN
F 2 "I20:R_0805" V 5280 6850 50  0001 C CNN
F 3 "" H 5350 6850 50  0000 C CNN
	1    5350 6850
	-1   0    0    1   
$EndComp
$Comp
L R R19
U 1 1 58355458
P 5250 6850
F 0 "R19" V 5250 6800 50  0000 L CNN
F 1 "4.7k" V 5200 7000 50  0000 L CNN
F 2 "I20:R_0805" V 5180 6850 50  0001 C CNN
F 3 "" H 5250 6850 50  0000 C CNN
	1    5250 6850
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 5835545E
P 5150 6850
F 0 "R18" V 5150 6800 50  0000 L CNN
F 1 "4.7k" V 5100 7000 50  0000 L CNN
F 2 "I20:R_0805" V 5080 6850 50  0001 C CNN
F 3 "" H 5150 6850 50  0000 C CNN
	1    5150 6850
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR17
U 1 1 58355464
P 4900 6150
F 0 "#PWR17" H 4900 5900 50  0001 C CNN
F 1 "GNDD" V 4905 6022 50  0000 R CNN
F 2 "" H 4900 6150 50  0000 C CNN
F 3 "" H 4900 6150 50  0000 C CNN
	1    4900 6150
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 5835546A
P 5450 6850
F 0 "R21" V 5450 6800 50  0000 L CNN
F 1 "4.7k" V 5400 7000 50  0000 L CNN
F 2 "I20:R_0805" V 5380 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0000 C CNN
	1    5450 6850
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR21
U 1 1 58355470
P 5350 7250
F 0 "#PWR21" H 5350 7000 50  0001 C CNN
F 1 "GNDD" V 5350 7000 50  0000 C CNN
F 2 "" H 5350 7250 50  0000 C CNN
F 3 "" H 5350 7250 50  0000 C CNN
	1    5350 7250
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR25
U 1 1 58355476
P 5450 7250
F 0 "#PWR25" H 5450 7100 50  0001 C CNN
F 1 "VDD" V 5450 7450 50  0000 C CNN
F 2 "" H 5450 7250 50  0000 C CNN
F 3 "" H 5450 7250 50  0000 C CNN
	1    5450 7250
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR20
U 1 1 5835547C
P 5250 7250
F 0 "#PWR20" H 5250 7100 50  0001 C CNN
F 1 "VDD" V 5250 7450 50  0000 C CNN
F 2 "" H 5250 7250 50  0000 C CNN
F 3 "" H 5250 7250 50  0000 C CNN
	1    5250 7250
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR18
U 1 1 58355482
P 5150 7250
F 0 "#PWR18" H 5150 7100 50  0001 C CNN
F 1 "VDD" V 5150 7450 50  0000 C CNN
F 2 "" H 5150 7250 50  0000 C CNN
F 3 "" H 5150 7250 50  0000 C CNN
	1    5150 7250
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR24
U 1 1 58355488
P 5450 5600
F 0 "#PWR24" H 5450 5350 50  0001 C CNN
F 1 "GNDD" V 5450 5350 50  0000 C CNN
F 2 "" H 5450 5600 50  0000 C CNN
F 3 "" H 5450 5600 50  0000 C CNN
	1    5450 5600
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR19
U 1 1 5835548E
P 5200 5600
F 0 "#PWR19" H 5200 5350 50  0001 C CNN
F 1 "GNDD" V 5200 5350 50  0000 C CNN
F 2 "" H 5200 5600 50  0000 C CNN
F 3 "" H 5200 5600 50  0000 C CNN
	1    5200 5600
	-1   0    0    1   
$EndComp
Text Notes 6600 5100 0    60   ~ 0
RCCB
Text Notes 3400 5100 0    60   ~ 0
RCCA
$Comp
L GNDD #PWR32
U 1 1 583814D2
P 9350 5450
F 0 "#PWR32" H 9350 5200 50  0001 C CNN
F 1 "GNDD" H 9350 5300 50  0000 C CNN
F 2 "" H 9350 5450 50  0000 C CNN
F 3 "" H 9350 5450 50  0000 C CNN
	1    9350 5450
	-1   0    0    1   
$EndComp
$Comp
L GNDD #PWR29
U 1 1 58381774
P 8125 6100
F 0 "#PWR29" H 8125 5850 50  0001 C CNN
F 1 "GNDD" V 8125 5850 50  0000 C CNN
F 2 "" H 8125 6100 50  0000 C CNN
F 3 "" H 8125 6100 50  0000 C CNN
	1    8125 6100
	0    1    1    0   
$EndComp
$Comp
L GNDD #PWR31
U 1 1 583AE5EE
P 9100 5450
F 0 "#PWR31" H 9100 5200 50  0001 C CNN
F 1 "GNDD" H 9100 5300 50  0000 C CNN
F 2 "" H 9100 5450 50  0000 C CNN
F 3 "" H 9100 5450 50  0000 C CNN
	1    9100 5450
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR34
U 1 1 583B6020
P 9450 6000
F 0 "#PWR34" H 9450 5850 50  0001 C CNN
F 1 "VDD" V 9450 6200 50  0000 C CNN
F 2 "" H 9450 6000 50  0000 C CNN
F 3 "" H 9450 6000 50  0000 C CNN
	1    9450 6000
	0    1    1    0   
$EndComp
Text GLabel 5500 6650 2    60   Input ~ 0
PB6_RC522B_CS
Text GLabel 9000 3500 2    60   Input ~ 0
LOCK_GND
$Comp
L CONN_01X10 P3
U 1 1 583D3498
P 4700 6200
F 0 "P3" H 4700 5500 50  0000 C CNN
F 1 "RC522B" H 4700 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 4700 6200 50  0001 C CNN
F 3 "" H 4700 6200 50  0000 C CNN
	1    4700 6200
	-1   0    0    1   
$EndComp
NoConn ~ 4900 5850
NoConn ~ 4900 5750
Text GLabel 9450 6100 2    60   Input ~ 0
UART_INT_RX
Text GLabel 8100 850  0    60   Input ~ 0
PB5_RC522A_CS
Text GLabel 10200 1550 2    60   Input ~ 0
PB13_SPI2_SCK
Text GLabel 10200 1650 2    60   Input ~ 0
PB14_SPI2_MISO
Text GLabel 10200 1850 2    60   Input ~ 0
PB15_SPI2_MOSI
Text GLabel 10200 1750 2    60   Input ~ 0
PB8_RC522A_IRQ
Text GLabel 10200 2050 2    60   Input ~ 0
PB7_RC522_RST
Text GLabel 10200 1150 2    60   Input ~ 0
UART_EXT_TX
Text GLabel 10200 1250 2    60   Input ~ 0
UART_EXT_RX
Text GLabel 10200 1050 2    60   Input ~ 0
LOCK_OPEN
Text GLabel 8100 1950 0    60   Input ~ 0
ESP_RESET
Text GLabel 8100 2150 0    60   Input ~ 0
UART_INT_RX
Text GLabel 8100 2050 0    60   Input ~ 0
UART_INT_TX
Text GLabel 10200 1950 2    60   Input ~ 0
PB9_RC522B_IRQ
Text GLabel 8100 950  0    60   Input ~ 0
PB6_RC522B_CS
Text GLabel 10200 850  2    60   Input ~ 0
BTN_OPEN
Text GLabel 10200 950  2    60   Input ~ 0
BTN_CALL
Text GLabel 8100 1850 0    60   Input ~ 0
PIN_BLUE
Text GLabel 8100 1750 0    60   Input ~ 0
PIN_GREEN
Text GLabel 8100 1650 0    60   Input ~ 0
PIN_RED
Text GLabel 1900 1550 1    60   Input ~ 0
OUT_RED
Text GLabel 1700 1550 1    60   Input ~ 0
OUT_GREEN
Text GLabel 1500 1550 1    60   Input ~ 0
OUT_BLUE
Text GLabel 2500 1300 1    60   Input ~ 0
OUT_BLUE
Text GLabel 2700 1300 1    60   Input ~ 0
OUT_RED
Text GLabel 2600 1300 1    60   Input ~ 0
OUT_GREEN
$Comp
L CONN_01X04 P13
U 1 1 5820FBEB
P 1950 4700
F 0 "P13" H 2000 4450 50  0000 R CNN
F 1 "IN_LED_CONN" V 2050 4950 50  0000 R CNN
F 2 "I20:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 1950 4700 50  0001 C CNN
F 3 "" H 1950 4700 50  0000 C CNN
	1    1950 4700
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X04 P8
U 1 1 58211873
P 850 3700
F 0 "P8" H 900 3450 50  0000 R CNN
F 1 "LEDB_CONN" V 950 3950 50  0000 R CNN
F 2 "I20:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 850 3700 50  0001 C CNN
F 3 "" H 850 3700 50  0000 C CNN
	1    850  3700
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58211DA2
P 1200 3550
F 0 "R1" V 1200 3550 50  0000 C CNN
F 1 "82R" V 1250 3350 50  0000 C CNN
F 2 "I20:R_0805" V 1130 3550 50  0001 C CNN
F 3 "" H 1200 3550 50  0000 C CNN
	1    1200 3550
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 582135CC
P 1350 3650
F 0 "R3" V 1350 3650 50  0000 C CNN
F 1 "15R" V 1400 3450 50  0000 C CNN
F 2 "I20:R_0805" V 1280 3650 50  0001 C CNN
F 3 "" H 1350 3650 50  0000 C CNN
	1    1350 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 582149F4
P 1500 3750
F 0 "R9" V 1500 3750 50  0000 C CNN
F 1 "10R" V 1550 3550 50  0000 C CNN
F 2 "I20:R_0805" V 1430 3750 50  0001 C CNN
F 3 "" H 1500 3750 50  0000 C CNN
	1    1500 3750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X04 P11
U 1 1 58216B80
P 850 4300
F 0 "P11" H 900 4050 50  0000 R CNN
F 1 "LEDA_CONN" V 950 4550 50  0000 R CNN
F 2 "I20:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 850 4300 50  0001 C CNN
F 3 "" H 850 4300 50  0000 C CNN
	1    850  4300
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58216B86
P 1200 4150
F 0 "R2" V 1200 4150 50  0000 C CNN
F 1 "82R" V 1250 3950 50  0000 C CNN
F 2 "I20:R_0805" V 1130 4150 50  0001 C CNN
F 3 "" H 1200 4150 50  0000 C CNN
	1    1200 4150
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 58216B8E
P 1350 4250
F 0 "R6" V 1350 4250 50  0000 C CNN
F 1 "15R" V 1400 4050 50  0000 C CNN
F 2 "I20:R_0805" V 1280 4250 50  0001 C CNN
F 3 "" H 1350 4250 50  0000 C CNN
	1    1350 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 58216B97
P 1500 4350
F 0 "R10" V 1500 4350 50  0000 C CNN
F 1 "10R" V 1550 4150 50  0000 C CNN
F 2 "I20:R_0805" V 1430 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0000 C CNN
	1    1500 4350
	0    -1   -1   0   
$EndComp
$Comp
L LED_RCBG D6
U 1 1 58218803
P 2750 4350
F 0 "D6" H 2750 4815 50  0000 C CNN
F 1 "LED_RCBG" H 2750 4724 50  0000 C CNN
F 2 "I20:LED-RGB-5MM_Common_Cathode" H 2750 4300 50  0001 C CNN
F 3 "" H 2750 4300 50  0000 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P15
U 1 1 58219573
P 3500 4400
F 0 "P15" H 3550 4150 50  0000 R CNN
F 1 "LEDB_CONN" V 3600 4650 50  0000 R CNN
F 2 "I20:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 3500 4400 50  0001 C CNN
F 3 "" H 3500 4400 50  0000 C CNN
	1    3500 4400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 58220EC5
P 3050 1050
F 0 "C21" V 2821 1050 50  0000 C CNN
F 1 "10uF" V 2912 1050 50  0000 C CNN
F 2 "I20:C_0805" H 3050 1050 50  0001 C CNN
F 3 "" H 3050 1050 50  0000 C CNN
	1    3050 1050
	0    1    1    0   
$EndComp
$Comp
L C_Small C22
U 1 1 582218F1
P 3050 1250
F 0 "C22" V 3250 1250 50  0000 C CNN
F 1 "100nF" V 3150 1250 50  0000 C CNN
F 2 "I20:C_0805" H 3050 1250 50  0001 C CNN
F 3 "" H 3050 1250 50  0000 C CNN
	1    3050 1250
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR11
U 1 1 58223ACA
P 3150 1050
F 0 "#PWR11" H 3150 900 50  0001 C CNN
F 1 "VDD" V 3150 1250 50  0000 C CNN
F 2 "" H 3150 1050 50  0000 C CNN
F 3 "" H 3150 1050 50  0000 C CNN
	1    3150 1050
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR12
U 1 1 582264A1
P 3150 1250
F 0 "#PWR12" H 3150 1100 50  0001 C CNN
F 1 "VDD" V 3150 1450 50  0000 C CNN
F 2 "" H 3150 1250 50  0000 C CNN
F 3 "" H 3150 1250 50  0000 C CNN
	1    3150 1250
	0    1    1    0   
$EndComp
$Comp
L LED_RCBG D1
U 1 1 58227278
P 2750 3400
F 0 "D1" H 2750 3865 50  0000 C CNN
F 1 "LED_RCBG" H 2750 3774 50  0000 C CNN
F 2 "I20:LED-RGB-5MM_Common_Cathode" H 2750 3350 50  0001 C CNN
F 3 "" H 2750 3350 50  0000 C CNN
	1    2750 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P14
U 1 1 5822727E
P 3500 3450
F 0 "P14" H 3550 3200 50  0000 R CNN
F 1 "LEDB_CONN" V 3600 3700 50  0000 R CNN
F 2 "I20:JST_XH_S04B-XH-A_04x2.50mm_Angled" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0000 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
Text GLabel 8550 3150 0    60   Input ~ 0
EM_LOCK
$Comp
L GNDPWR #PWR30
U 1 1 58586DF6
P 8850 4450
F 0 "#PWR30" H 8850 4250 50  0001 C CNN
F 1 "GNDPWR" H 8850 4275 50  0000 C CNN
F 2 "" H 8850 4400 50  0000 C CNN
F 3 "" H 8850 4400 50  0000 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 587163EB
P 8275 6000
F 0 "R30" V 8275 5975 50  0000 C CNN
F 1 "4.7k" V 8225 6200 50  0000 C CNN
F 2 "I20:R_0805" V 8205 6000 50  0001 C CNN
F 3 "" H 8275 6000 50  0000 C CNN
	1    8275 6000
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR28
U 1 1 58718815
P 8125 6000
F 0 "#PWR28" H 8125 5850 50  0001 C CNN
F 1 "VDD" V 8125 6200 50  0000 C CNN
F 2 "" H 8125 6000 50  0000 C CNN
F 3 "" H 8125 6000 50  0000 C CNN
	1    8125 6000
	0    -1   -1   0   
$EndComp
$Comp
L R R29
U 1 1 5871B268
P 8275 5900
F 0 "R29" V 8275 5875 50  0000 C CNN
F 1 "4.7k" V 8225 6100 50  0000 C CNN
F 2 "I20:R_0805" V 8205 5900 50  0001 C CNN
F 3 "" H 8275 5900 50  0000 C CNN
	1    8275 5900
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR27
U 1 1 5871B4C1
P 8125 5900
F 0 "#PWR27" H 8125 5750 50  0001 C CNN
F 1 "VDD" V 8125 6100 50  0000 C CNN
F 2 "" H 8125 5900 50  0000 C CNN
F 3 "" H 8125 5900 50  0000 C CNN
	1    8125 5900
	0    -1   -1   0   
$EndComp
$Comp
L R R31
U 1 1 58727ED9
P 9750 5625
F 0 "R31" H 9825 5775 50  0000 C CNN
F 1 "4.7k" V 9850 5650 50  0000 C CNN
F 2 "I20:R_0805" V 9680 5625 50  0001 C CNN
F 3 "" H 9750 5625 50  0000 C CNN
	1    9750 5625
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR35
U 1 1 58729F36
P 9750 5450
F 0 "#PWR35" H 9750 5300 50  0001 C CNN
F 1 "VDD" H 9750 5600 50  0000 C CNN
F 2 "" H 9750 5450 50  0000 C CNN
F 3 "" H 9750 5450 50  0000 C CNN
	1    9750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3250 4800 3350
Wire Wire Line
	4800 4000 4800 4150
Connection ~ 4800 3700
Wire Wire Line
	4800 3650 4800 3900
Connection ~ 9150 4300
Wire Wire Line
	9150 4250 9150 4300
Wire Wire Line
	9500 4300 9500 4250
Connection ~ 8850 4300
Wire Wire Line
	8850 4300 9500 4300
Connection ~ 9150 3800
Wire Wire Line
	9150 3850 9150 3800
Wire Wire Line
	8850 4000 8850 4450
Wire Wire Line
	9150 3800 9550 3800
Wire Wire Line
	2200 1750 1800 1750
Wire Wire Line
	2200 2200 2000 2200
Wire Wire Line
	2200 2650 2200 2650
Wire Wire Line
	1500 2900 1500 1950
Connection ~ 1700 2900
Wire Wire Line
	1700 2400 1700 3000
Wire Wire Line
	1500 2900 1900 2900
Wire Wire Line
	1900 2900 1900 2850
Wire Wire Line
	9500 3950 9500 3800
Connection ~ 9500 3800
Wire Wire Line
	8500 5800 8075 5800
Wire Wire Line
	9850 3800 10000 3800
Wire Notes Line
	475  4925 6970 4925
Wire Wire Line
	1650 6600 2250 6600
Wire Wire Line
	2250 6500 1650 6500
Wire Wire Line
	1650 6400 2250 6400
Wire Wire Line
	1650 6300 2250 6300
Wire Wire Line
	1650 6100 2250 6100
Wire Wire Line
	1650 6700 2250 6700
Wire Wire Line
	2000 6750 2000 6400
Connection ~ 2000 6400
Wire Wire Line
	2200 6750 2200 6100
Connection ~ 2200 6100
Wire Wire Line
	2100 6750 2100 6300
Connection ~ 2100 6300
Wire Wire Line
	1900 6750 1900 6700
Connection ~ 1900 6700
Wire Wire Line
	1900 7300 1900 7050
Wire Wire Line
	2000 7300 2000 7050
Wire Wire Line
	2100 7300 2100 7050
Wire Wire Line
	2200 7300 2200 7050
Wire Wire Line
	1650 6000 2250 6000
Wire Wire Line
	2200 6000 2200 5950
Connection ~ 2200 6000
Wire Wire Line
	1950 5950 1950 6000
Connection ~ 1950 6000
Wire Wire Line
	8650 3200 8650 3150
Connection ~ 8650 3150
Wire Wire Line
	8850 3250 8850 3600
Wire Wire Line
	8650 3500 9000 3500
Connection ~ 8850 3500
Wire Wire Line
	8550 3050 8950 3050
Wire Wire Line
	8550 2950 8950 2950
Wire Wire Line
	4800 3700 4950 3700
Wire Wire Line
	5250 3700 5450 3700
Wire Wire Line
	5400 3550 5400 3700
Connection ~ 5400 3700
Wire Wire Line
	5400 3250 5400 3350
Wire Wire Line
	4800 1050 4800 1150
Wire Wire Line
	4800 1800 4800 1950
Connection ~ 4800 1500
Wire Wire Line
	4800 1450 4800 1700
Wire Wire Line
	4800 1500 4950 1500
Wire Wire Line
	5250 1500 5450 1500
Wire Wire Line
	5400 1350 5400 1500
Connection ~ 5400 1500
Wire Wire Line
	5400 1050 5400 1150
Wire Notes Line
	3150 7755 3150 7795
Wire Notes Line
	3150 5390 3150 5375
Wire Notes Line
	6970 6530 6970 475 
Wire Notes Line
	6970 2500 11220 2500
Wire Wire Line
	4900 6550 5500 6550
Wire Wire Line
	5500 6450 4900 6450
Wire Wire Line
	4900 6350 5500 6350
Wire Wire Line
	4900 6250 5500 6250
Wire Wire Line
	4900 6050 5500 6050
Wire Wire Line
	4900 6650 5500 6650
Wire Wire Line
	5250 6700 5250 6350
Connection ~ 5250 6350
Wire Wire Line
	5450 6700 5450 6050
Connection ~ 5450 6050
Wire Wire Line
	5350 6700 5350 6250
Connection ~ 5350 6250
Wire Wire Line
	5150 6700 5150 6650
Connection ~ 5150 6650
Wire Wire Line
	5150 7250 5150 7000
Wire Wire Line
	5250 7250 5250 7000
Wire Wire Line
	5350 7250 5350 7000
Wire Wire Line
	5450 7250 5450 7000
Wire Wire Line
	4900 5950 5500 5950
Wire Wire Line
	5450 5950 5450 5900
Connection ~ 5450 5950
Wire Wire Line
	5200 5900 5200 5950
Connection ~ 5200 5950
Wire Notes Line
	6978 4925 11219 4925
Wire Notes Line
	3750 494  3750 7794
Wire Notes Line
	3750 484  3750 473 
Wire Notes Line
	6969 2500 3751 2500
Wire Wire Line
	9000 6100 9450 6100
Wire Wire Line
	8125 6100 8500 6100
Wire Wire Line
	9000 5800 9450 5800
Connection ~ 9100 5800
Wire Wire Line
	9100 5800 9100 5750
Connection ~ 9350 5800
Wire Wire Line
	9350 5750 9350 5800
Wire Wire Line
	9000 6000 9100 6000
Wire Wire Line
	9400 6000 9450 6000
Wire Wire Line
	1900 2450 1900 1550
Wire Wire Line
	1700 2000 1700 1550
Wire Wire Line
	1800 3550 1800 4500
Wire Wire Line
	1350 3550 1800 3550
Wire Wire Line
	1050 3650 1200 3650
Wire Wire Line
	1500 3650 1900 3650
Connection ~ 1900 3650
Wire Wire Line
	1650 3750 2000 3750
Connection ~ 2000 3750
Wire Wire Line
	1050 3750 1350 3750
Wire Wire Line
	1050 3850 2100 3850
Connection ~ 2100 3850
Wire Wire Line
	1900 3650 1900 4500
Wire Wire Line
	2000 3750 2000 4500
Wire Wire Line
	2100 3850 2100 4500
Wire Wire Line
	1050 4250 1200 4250
Wire Wire Line
	1050 4350 1350 4350
Connection ~ 2100 4450
Wire Wire Line
	1050 4450 2100 4450
Connection ~ 2000 4350
Wire Wire Line
	1650 4350 2000 4350
Connection ~ 1900 4250
Wire Wire Line
	1500 4250 1900 4250
Wire Wire Line
	1350 4150 1800 4150
Connection ~ 1800 4150
Wire Wire Line
	3050 4350 3300 4350
Wire Wire Line
	3300 4450 3200 4450
Wire Wire Line
	3200 4450 3200 4550
Wire Wire Line
	3200 4550 3050 4550
Wire Wire Line
	3050 4150 3200 4150
Wire Wire Line
	3200 4150 3200 4250
Wire Wire Line
	3200 4250 3300 4250
Wire Wire Line
	3300 4550 3300 4700
Wire Wire Line
	2800 950  2800 1300
Wire Wire Line
	2950 1250 2800 1250
Connection ~ 2800 1250
Wire Wire Line
	2950 1050 2800 1050
Connection ~ 2800 1050
Wire Wire Line
	3300 4700 2450 4700
Wire Wire Line
	2450 4700 2450 4350
Wire Wire Line
	3050 3400 3300 3400
Wire Wire Line
	3300 3500 3200 3500
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	3200 3600 3050 3600
Wire Wire Line
	3050 3200 3200 3200
Wire Wire Line
	3200 3200 3200 3300
Wire Wire Line
	3200 3300 3300 3300
Wire Wire Line
	3300 3600 3300 3750
Wire Wire Line
	3300 3750 2450 3750
Wire Wire Line
	2450 3750 2450 3400
Wire Wire Line
	8550 3150 8950 3150
Wire Wire Line
	8850 3250 8950 3250
Wire Wire Line
	8425 6000 8500 6000
Wire Wire Line
	8425 5900 8500 5900
Wire Wire Line
	9750 5450 9750 5475
Wire Wire Line
	9750 5775 9750 5900
Connection ~ 9750 5900
Wire Wire Line
	9000 5900 9850 5900
$EndSCHEMATC
