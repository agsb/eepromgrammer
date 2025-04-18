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

The first design of eeprogrammer was too sensible to errors in 
dip-switches, overrated usability and complex circuit and software, 
then I simply put more headers for other eeprom families;

The reference [Pinout](https://github.com/agsb/eepromgrammer/blob/148cf59fdfdf9b6ff1b859eb0863042efeae660a/PinsOuts.md)

OBS.

I try K.I.S.S.

For all pull-ups using 4k7 resistors.

For all chips VCC - 100nF - GND

