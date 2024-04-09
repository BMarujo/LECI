#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() <  20000 * ms);
    } 


int main(){

    TRISE= TRISE & 0xFF03; //output fica com 0
    TRISB= TRISB | 0x0005; //input fica com 1
    int count = 0x00C0; // count 0000 0000 1100 0000
    LATE = (LATE & 0XFF03) | count; // colocar valor default 0000 0000 1100 0000
    int p = 137;
    int switches = 0;
    //Padrão


    while(1){
        switches = PORTB & 0x5; //variavel em que leio oq os switches têm
        if(switches == 0) // 0000
        {
            p = 217;
        }
        else // 0101
        { //o valor assumido pelos switches para a condição
            p= 137;
        }
        delay(p);
        if (count== 0x000C){
            count = 0x00C0;
        } else {
            count = count >> 1;
        }
        //printf(count);        
        LATE = (LATE & 0XFF03) | count; // colocar tudo a zeros e colocar o count que so tem dois '1's
    }
    return 0;
}
