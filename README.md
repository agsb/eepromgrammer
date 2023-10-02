# eepromgrammer

A generic eeprom programmer using Arduinos.  

Expected to be used with at28c16, at28c64, at28c256, sst39sf040, m27c512 and others. 

Is just a project exercise, too complex and sensible to errors in select eeprom type by dip-switches.

## hardware

Use two 74HC595 in cascate for address A0-A15, pull more one for A15-A23.

Use an arduino mini for data D0-D7 and control lines.

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
| 14 | 33 | 27 | /WE | A0 on arduino |
| 15 | 28 | 22 | /OE | A1 on arduino |
| 16 | 26 | 20 | /CE | A2 on arduino |

| arduino | 74hc595 | use |
| -- | -- | -- |
| 10 |  11 | SRCLK |
| 11 |  11 | RCLK |
| 12 |  11 | /OE |
| 13 |  11 | SERDATA |

| 74hc595 | 40pins | AT28C64 | use | 
| -- | -- | -- | -- | 
| 15 | 17  | 25 | A8  first |
| 01 | 18  | 24 | A9  first |
| 02 | 18  | 21 | A10 first |
| 03 | 19  | 23 | A11 first |
| 04 | 21  | 02 | A12 first |
| 05 | 22  | x | A13 first * NC|
| 06 | 23  | x | A14 first * NC|
| 07 | 24  | x | A15 first * NC|

| 74hc595 | 40pins | AT28C64 | use |
| -- | -- | -- | -- |  
| 15 | 16 | 10 | A0 second |
| 01 | 15 | 9 | A1 second |
| 02 | 14 | 8 | A2 second |
| 03 | 13 | 7 | A3 second |
| 04 | 12 | 6 | A4 second |
| 05 | 11 | 5 | A5 second |
| 06 | 10 | 4 | A6 second |
| 07 |  9 | 3 | A7 second |


