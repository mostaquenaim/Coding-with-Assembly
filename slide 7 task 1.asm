.MODEL SMALL
.STACK 100H 
.DATA
A DB 'NOT UPPER OR LOWER$'

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,41H
    JGE UPTOLOW 
    
    JMP NOTC
    
    UPTOLOW:
    CMP BL,5AH
    JLE UPTOLOW2
    
    CMP BL,61H
    JGE LOWTOUP
    
    JMP NOTC
    
    UPTOLOW2:
    ADD BL,20H
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    JMP EXIT
    
    LOWTOUP:
    CMP BL,7AH
    JLE LOWTOUP2
    
    JMP NOTC
    
    LOWTOUP2:
    SUB BL,20H
    MOV AH,2
    MOV DL,BL
    INT 21H 
    JMP EXIT
    
    NOTC:
    LEA DX,A
    MOV AH,9
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN