.MODEL SMALL
.STACK 100H 
.DATA

.CODE
MAIN PROC
    MOV AX,5
    MOV BX,6       
    
    PUSH AX
    PUSH BX
    XCHG AX,BX
    
    POP AX
    POP BX
    MAIN ENDP
END MAIN




