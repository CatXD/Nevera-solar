#include <16F88.h>
#device ADC=10

#FUSES NOWDT                    //No Watch Dog Timer
#FUSES NOBROWNOUT               //No brownout reset
#FUSES NOLVP                    //No low voltage prgming, B3(PIC16) or B5(PIC18) used for I/O

#use delay(internal=4MHz)

#bit    Pulsador = 0x005.3 //RA3
#bit    Mosfet = 0x005.5 //RA5


//PUERTOS
#byte    PORTA = 0x005
#byte    TRISA = 0x085
#byte    PORTB = 0x006
#byte    TRISB = 0x086

//PORTA
#bit    RA0 = 0x005.0
#bit    RA1 = 0x005.1
#bit    RA2 = 0x005.2
#bit    RA3 = 0x005.3
#bit    RA4 = 0x005.4
#bit    RA5 = 0x005.5
#bit    RA6 = 0x005.6
#bit    RA7 = 0x005.7

//TRISA
#bit    TRISA0 = 0x085.0
#bit    TRISA1 = 0x085.1
#bit    TRISA2 = 0x085.2
#bit    TRISA3 = 0x085.3
#bit    TRISA4 = 0x085.4
#bit    TRISA5 = 0x085.5
#bit    TRISA6 = 0x085.6
#bit    TRISA7 = 0x085.7

//PORTB
#bit    RB0 = 0x006.0
#bit    RB1 = 0x006.1
#bit    RB2 = 0x006.2
#bit    RB3 = 0x006.3
#bit    RB4 = 0x006.4
#bit    RB5 = 0x006.5
#bit    RB6 = 0x006.6
#bit    RB7 = 0x006.7
