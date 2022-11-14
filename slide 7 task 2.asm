.MODEL SMALL
.STACK 100H 
.DATA
A DB 0AH,0DH, 'EVEN$'
B DB 0AH,0DH,'ODD$'

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1 
    INT 21H
    MOV BL,AL     
    
    CMP BL,30H
    JGE NMBR
    JMP EXIT
    
    NMBR:
    CMP BL,39H 
    JLE NMBR2
    JMP EXIT
    
    NMBR2:
    TEST BL,1
    JZ EVEN
    JMP ODD
    
    EVEN:    
    LEA DX,A 
    MOV AH,9
    INT 21H
    JMP EXIT
    
    ODD:
    LEA DX,B 
    MOV AH,9
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN