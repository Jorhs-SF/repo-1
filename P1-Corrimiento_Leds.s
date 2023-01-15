;Nombre: P1-Corrimiento_Leds
;Fecha: 13/01/2023
;Descripción: 
;    Corrimientos de leds pares con un retardo de 500ms e impares de 250ms
;Autor: Jorhs Giampier Silva Flores
    
PROCESSOR 18F57Q84
#include "Bit_Config.inc" /config statements should precede project file includes./
#include <xc.inc>
#include "Retardos.inc"

    
PSECT resetVect,class=CODE,reloc=2
resetVect:
    goto Main
    
PSECT CODE
 
Main:
    CALL Config_OSC,1
    CALL Button
    CALL Corrimiento
    CALL Loop
    NOP
Loop:
    BTFSS PORTA,3,1
    goto Par_Impar
Off:
    BCF TRISE,1,0	;TRISC<1> = 0 - RE1 como salida
    BCF LATE,1,0	;LATE<1> = 0 -  RE1 GND
    
    BCF TRISE,1,0	;TRISC<1> = 0 - RE1 como salida
    BCF LATE,1,0	;LATE<1> = 0 -  RE1 GND
    
    BCF TRISC,0,0	;TRISC<0> = 0 - RC0 como salida
    BCF LATC,0,0	;LATE<0> = 0 -  RC0 GND
    
    BCF TRISC,1,0	;TRISC<1> = 0 - RC1 como salida
    BCF LATC,1,0	;LATE<1> = 0 -  RC1 GND
    
    BCF TRISC,2,0	;TRISC<2> = 0 - RC2 como salida
    BCF LATC,2,0	;LATE<2> = 0 -  RC2 GND
    
    BCF TRISC,3,0	;TRISC<3> = 0 - RC3 como salida
    BCF LATC,3,0	;LATE<3> = 0 -  RC3 GND
    
    BCF TRISC,4,0	;TRISC<4> = 0 - RC4 como salida
    BCF LATC,4,0	;LATE<4> = 0 -  RC4 GND
    
    BCF TRISC,5,0	;TRISC<5> = 0 - RC5 como salida
    BCF LATC,5,0	;LATE<5> = 0 -  RC5 GND
    
    BCF TRISC,6,0	;TRISC<6> = 0 - RC6 como salida
    BCF LATC,6,0	;LATE<6> = 0 -  RC6 GND
    
    BCF TRISC,7,0	;TRISC<7> = 0 - RC7 como salida
    BCF LATC,7,0	;LATE<7> = 0 -  RC7 GND
    GOTO Loop
    
Par_Impar:
    BCF TRISE,1,0
    BSF LATE,1,0
    
    BCF TRISE,1,0
    BCF LATE,0,0

    BCF TRISC,0,0
    BCF LATC,0,0

    BCF TRISC,1,0
    BSF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
       
    BCF TRISC,7,0
    BCF LATC,7,0
        
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
       
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BSF LATC,3,0
        
    BCF TRISC,4,0
    BCF LATC,4,0    
    
    BCF TRISC,5,0
    BCF LATC,5,0
        
    BCF TRISC,6,0
    BCF LATC,6,0
        
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1   
    
    BCF TRISC,0,0
    BCF LATC,0,0    
    
    BCF TRISC,1,0
    BCF LATC,1,0
       
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BSF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
        
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    BCF TRISC,6,0
    BCF LATC,6,0
       
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
      
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BSF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1    
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
   
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
        
    BCF TRISC,7,0
    BSF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    CALL Delay_250ms,1    
    
    BCF TRISE,0,0
    BSF LATE,0,0
    BCF TRISE,1,0
    BCF LATE,1,0
    
    BCF TRISC,0,0
    BSF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
     
    BCF TRISC,6,0
    BCF LATC,6,0
        
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BSF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
        
    BCF TRISC,4,0
    BCF LATC,4,0    
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
        
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
        
    BCF TRISC,4,0
    BSF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BCF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
    
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    
    BCF TRISC,0,0
    BCF LATC,0,0
    
    BCF TRISC,1,0
    BCF LATC,1,0
    
    BCF TRISC,2,0
    BCF LATC,2,0
    
    BCF TRISC,3,0
    BCF LATC,3,0
    
    BCF TRISC,4,0
    BCF LATC,4,0
    
    BCF TRISC,5,0
    BCF LATC,5,0
    
    BCF TRISC,6,0
    BSF LATC,6,0
    
    BCF TRISC,7,0
    BCF LATC,7,0
        
    BTFSS PORTA,3,1
    GOTO Loop
    CALL Delay_250ms,1
    GOTO Par_Impar
    
Button:
    BANKSEL PORTA
    CLRF PORTA,1
    CLRF ANSELA,1
    BSF TRISA,3,1
    BSF LATA,3,1
    BSF WPUA,3,1
    RETURN
     
Config_OSC:
    BANKSEL OSCCON1
    MOVLW 0x60
    MOVWF OSCCON1,1
    MOVLW 0x02
    MOVWF OSCFRQ,1
    RETURN
    
Corrimiento:
    BANKSEL PORTC  
    CLRF PORTC,0
    CLRF ANSELC,0
    RETURN

END resetVect