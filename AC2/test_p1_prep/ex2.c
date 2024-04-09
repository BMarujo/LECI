#include <detpic32.h>

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value, int displayFlag) {
    static const char disp7Scodes[] = {
        0x3F, 0x06, 0x5B, 0x4F,
        0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x6F, 0x77, 0x7C,
        0x39, 0x5E, 0x79, 0x71
    };

    if (displayFlag) {
        LATD = ( LATD & 0xFF9F ) | 0x0040; // Activate HI-D, disable LO-D
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value & 0x0F] << 8; // Write the values of RB8-RB14
    } else {
        LATD = ( LATD & 0xFFBF ) | 0x0020; // Disable HI-D, activate LO-D
        LATB = ( LATB & 0x80FF ) | disp7Scodes[value & 0x0F] << 8; // Write the values of RB8-RB14
    }
}

int main(void) {
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 3;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    TRISD = TRISD & 0xFF9F; 
    TRISB = TRISB & 0x80FF;
    TRISBbits.TRISB1 = 1;
    TRISEbits.TRISE4 = 0;
    LATEbits.LATE4 = 0;
    while (1) {
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);
        int *p = (int *)(&ADC1BUF0);
        int average = (p[0] + p[4] + p[8] + p[12]) / 4;
        printStr("BUFFER: ");
        printInt( p[0], 16 | 4 << 16);
        putChar(' ');
        printInt( p[4], 16 | 4 << 16);
        putChar(' ');
        printInt( p[8], 16 | 4 << 16);
        putChar(' ');
        printInt( p[12], 16 | 4 << 16);
        printStr(" | AVERAGE: ");
        printInt( average, 2 | 10 << 16);
        printStr(" | VOLTAGE: ");
        int voltage;
        voltage = ( (average * 9 + 511) / 1023)+3;
        printInt(voltage, 16);
        putChar('\n');
        send2displays((char) (voltage & 0x000000FF),PORTBbits.RB1);
        IFS1bits.AD1IF = 0;
        LATEbits.LATE4 = !LATEbits.LATE4;
        resetCoreTimer();
        while(readCoreTimer()<1666667);
        

    }
    return 0;
}

