# EEprogammer

I need a eeprom programmer for use in my projects and want make one
to learn how to wire-wrap.

## Ideas

Based on projects by 
Ben Eater (https://github.com/beneater/eeprom-programmer),
Dave Hovemayer (https://github.com/daveho/eeprog) and 
Tom Nisbet (https://github.com/TomNisbet/TommyPROM)
but with with hardware support for I2C and SPI eeproms.

From above, the following are ok:
        
        - use a Arduino (nano) as main board, with RST, TX and RX reserved;
        - use two 74HC595 for 16-bit address, one for lower byte address, 
                other for uppper byte addres, not chainned
        - use 5 pins for control the both 74HC595
        - use 8 pins for 8-bit data
        - use 2 pins (SDA, SCL) for I2C, WP, S0, S1, S2 to GND, for I2C
        - use 5 pins (/CS, /HOLD, MSCK, MISO, MOSI), WP to VCC, for SPI

From a arduino mini:
        
        - reserved RXD, TXD 
        - using D2 to D9 as data pins
        - using D9 as /HOLD and D10, D11, D12, D13, as SPI

## Pins map

| Arduino | circuit | OBS |
| --- | --- | --- |
| D0 | RX | NC, reserved for USART/USB |
| D1 | TX | NC, reserved for USART/USB |
| D2 | D0 | data pin d0 |
| D3 | D1 | data pin d1 |
| D4 | D2 | data pin d2 |
| D5 | D3 | data pin d3 |
| D6 | D4 | data pin d4 |
| D7 | D5 | data pin d5 |
| D8 | D6 | data pin d6 |
| D9 | D7 /HOLD| data pin d7 and SPI /HOLD|
| D10 | /SS RCLK | SPI chip select and serial clock in 74hc595 lower and upper address |
| D11 | MOSI D15 | SPI mosi and extra high address |
| D12 | MISO D16 | SPI miso and extra high address |
| D13 | SCK  D17 | SPI msck and extra high address |
| GND | VSS | board GND |

| Arduino | circuit | OBS |
| --- | --- | --- |
| A0 | /CE | Chip Enable  |
| A1 | /WE | Write Enable |
| A2 | /OE | Output Enable |
| A3 | SRCLR.L | serial clear in 74HC595 lower addres |
| A4 | SDA SRCLR.U | I2C data and serial clear in 74HC595 upper addres |
| A5 | SCL SER.L SER.U | I2C clock and serial in 74HC595 (lower and upper) |

The first design of eeprogrammer was too sensible to errors in 
dip-switches, overrated usability and complex circuit and software, 
then I simply put more headers for other eeprom families;

OBS.

I try K.I.S.S.

For all pull-ups using 4k7 resistors.

For all chips VCC - 100nF - GND

