# Design eeprogammer


    The first design of eepromgrammer was too sensible to errors in dip-switches, overrated usability and complex circuit and software.

    I will try simplify.

    Based on projects by Ben Eater (https://github.com/beneater/eeprom-programmer), Dave Hovemayer (https://github.com/daveho/eeprog) and Tom Nisbet (https://github.com/TomNisbet/TommyPROM) with hardware support for I2C and SPI eeproms.

    From Ben Eater project, as other programmers, the following are ok:
        
        - use a Arduino mini as main board
        - use two 74HC595 for 16-bit address
        - use 3 pins for control the 74HC595
        - use 8 pins for 8-bit data
        - use 6 pins (S0, S1, S2, SDA, SCL, WR) for I2C
        - use 6 pins (/CS, SO, /WP, /HLD, MSCK, MOSI) for SPI

    From a arduino mini:
        
        - reserved RXD, TXD, INT0, INT1
        - using analog pin A0-A7 as data pins
        - using A3, A4, A5 as WP, SDA, SCL, and S0, S1, S2 pull-down to GND
        - using D10, D11, D12, D13, as SS, MOSI, MISO, SCLK, and /HLD, /WP pull-up to VCC
        - using D6, D7, D8, D9 as Data, Latch, Clock, Output for 74HC595

### Top 8 pins

        The 8 pins connector for for I2C and SPI, : with follow setup.



    | SPI | PIN | PIN | SPI |
    | --- | --- | --- | --- |
    | /CS |  1  |  8  | VCC |
    | SO  |  2  |  7  | /HLD |
    | /WP |  3  |  6  | MSCK |
    | GND |  4  |  5  | MOSI |

    | I2C | PIN | PIN | I2C | 
    | --- | --- | --- | --- |
    | S0  | 1   |  8  | VCC |
    | S1  | 2   |  7  | WR  |
    | S2  | 3   |  6  | SCL |
    | GND | 4   |  5  | SDA |

    OBS.

    For 5V all pull-ups 4k7 resistors.

    I2C or SPI must be select for use, or go in tri-state.



