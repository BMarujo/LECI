#include <detpic32.h>

int main(void){
    TRISE = (TRISE & 0xFFC3);             //XXXX XXXX XX00 00XX
    TRISB = (TRISB | 0x0004);             //XXXX XXXX XXXX X1XX
    int delay;
    int count = 0;
    while(1){
        LATE = (LATE & 0xFFC3)|(count<<2);

        if (count == 0){
            count = 11;
        }
        else{
            count = count - 1;
            }

        if(PORTBbits.RB2 == 1){
            delay = 3636363;
        }
        else if(PORTBbits.RB2 == 0){
            delay = 8695652;
        }
        printInt(count, 10 | 2 << 16);
        putChar('\n');
        resetCoreTimer();
        while(readCoreTimer() < delay);
    }
}