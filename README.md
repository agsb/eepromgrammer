# eepromgrammer

A generic eeprom programmer using Arduinos.  

Expected to be used with at28c16, at28c64, at28c256, sst39sf040, m27c512 and others. 

Is just a project exercise, too complex and sensible to errors in select eeprom type by dip-switches.

## hardware

For AT28C16 (2kb, 24 pins), AT28C64 (8kb, 28 pins), AT28C256 (64kb, 28 pins)

Use a 40 pins zip-socket.
Use two 74HC595 in cascate for address A0-A15.
Use an arduino mini for data D0-D7 and control lines.

Place arduino mini and 74hc595 top-down at left side of 40 pins zip-socket

| arduino | 40pins | at28c64 | use |
| -- | -- | -- | -- | 
| 02 | 17 | 11 | D0 | 
| 03 | 18 | 12 | D1 | 
| 04 | 19 | 13 | D2 |
| 05 | 21 | 15 | D3 | 
| 06 | 22 | 16 | D4 | 
| 07 | 23 | 17 | D5 | 
| 08 | 24 | 18 | D6 | 
| 09 | 25 | 19 | D7 | 
| 14 | 26 | 20 | /CE | A0 on arduino |
| 15 | 28 | 22 | /OE | A1 on arduino |
| 16 | 33 | 27 | /WE | A2 on arduino |

| arduino | 74hc595 (1) (2) | use |
| -- | -- | -- |
| 13 |  11 | SRCLK |
| 12 |  12 | RCLK |
| 11 |  13 | /OE |
| 10 |  14 | SER |

| 74hc595 (1) | 40pins | AT28C64 | use | 
| -- | -- | -- | -- | 
| 15 | 17  | 25 | A08 |
| 01 | 18  | 24 | A09 |
| 02 | 18  | 21 | A10 |
| 03 | 19  | 23 | A11 |
| 04 | 21  | 02 | A12 |
| 05 | 22  | 26 | A13 |
| 06 | 23  | 01 | A14 |
| 07 | 24  | xx | A15 NC|

| 74hc595 (2) | 40pins | AT28C64 | use |
| -- | -- | -- | -- |  
| 15 | 16 | 10 | A00 |
| 01 | 15 | 09 | A01 |
| 02 | 14 | 08 | A02 |
| 03 | 13 | 07 | A03 |
| 04 | 12 | 06 | A04 |
| 05 | 11 | 05 | A05 |
| 06 | 10 | 04 | A06 |
| 07 |  9 | 03 | A07 |


