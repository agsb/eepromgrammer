## Header Pin Configuration

| Header Pin | Name | Description |
| --- | --- | --- |
| 7 | A14 | Address Pin 14 | 
| 8 | A12 | Address Pin 12 | 
| 9 | A7 | Address Pin 7 | 
| 10 | A6 | Address Pin 6 | 
| 11 | A5 | Address Pin 5 | 
| 12 | A4 | Address Pin 4 | 
| 13 | A3 | Address Pin 3 | 
| 14 | A2 | Address Pin 2 | 
| 15 | A1 | Address Pin 1 | 
| 16 | A0 | Address Pin 0 | 
| 17 | I/O 0 | Data Inputs/Outputs 0 | 
| 18 | I/O 1 | Data Inputs/Outputs 1 | 
| 19 | I/O 2 | Data Inputs/Outputs 2 | 
| 20 | GND | Ground Pin | 

| Header Pin | Name | Description |
| --- | --- | --- |
| 21 | I/O 3 | Data Inputs/Outputs 3 | 
| 22 | I/O 4 | Data Inputs/Outputs 4 | 
| 23 | I/O 5 | Data Inputs/Outputs 5 | 
| 24 | I/O 6 | Data Inputs/Outputs 6 | 
| 25 | I/O 7 | Data Inputs/Outputs 7 | 
| 26 | CE’ | Chip Enable Pin | 
| 27 | A10 | Address Pin 10 | 
| 28 | OE’ | Output Enable | 
| 29 | A11 | Address Pin 11 | 
| 30 | A9 | Address Pin 9 | 
| 31 | A8 | Address Pin 8 | 
| 32 | A13 | Address Pin 13 | 
| 33 | WE’ | Write Enable Pin | 
| 34 | VCC | Supply Voltage Pin | 
| | | |

## Arduino Pin Configuration

| Arduino Pin| circuit | OBS |
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

| Arduino Pin | circuit | OBS |
| --- | --- | --- |
| A0 | /CE | Chip Enable  |
| A1 | /WE | Write Enable |
| A2 | /OE | Output Enable |
| A3 | SRCLR.L | serial clear in 74HC595 lower addres |
| A4 | SDA SRCLR.U | I2C data and serial clear in 74HC595 upper addres |
| A5 | SCL SER.L SER.U | I2C clock and serial in 74HC595 (lower and upper) |

## Pinouts

[Arduino-Nano](https://github.com/agsb/eepromgrammer/blob/e9341a52fbe5ec78b4a520b02f17155613d26bcb/pinout-Arduino-Nano.png)

[SN74HC595](https://github.com/agsb/eepromgrammer/blob/b177c6ecdc0a47e471f062eab4fed304ac8fa284/pinout-74hc595.png)

[AT28C256](https://github.com/agsb/eepromgrammer/blob/e9341a52fbe5ec78b4a520b02f17155613d26bcb/pinout-AT28C256.jpg)

[AT28C64](https://github.com/agsb/eepromgrammer/blob/e9341a52fbe5ec78b4a520b02f17155613d26bcb/pinout-AT28C64.jpg)

[AT28C16](https://github.com/agsb/eepromgrammer/blob/e9341a52fbe5ec78b4a520b02f17155613d26bcb/pinout-AT28C16.png)

[SST39SF040](https://github.com/agsb/eepromgrammer/blob/e9341a52fbe5ec78b4a520b02f17155613d26bcb/pinout-SST39SF040.png)


