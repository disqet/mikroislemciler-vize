.MODEL SMALL
.STACK 64

    .DATA
SAYI    DB 25H, 12H, 15H, 1FH, 2BH
      
    .CODE
MAIN    PROC FAR
        MOV AX,@DATA
        MOV DS,AX
        
        MOV BX,0
        MOV AL,0   
        
        MOV CX,5
                  
        TOPLAMA:
            MOV AL,[BX]
            INC BX
            DEC CX     
            JNZ TOPLAMA
        
        HLT
        
MAIN    ENDP
        END
