.MODEL SMALL
.STACK 100H 
.DATA

.CODE
MAIN PROC
    MOV AX,1
    MOV BX,2       
    MOV CX,3
   
    
    PUSH AX 
    PUSH BX 
    PUSH CX      
    POP  CX 
    POP BX
    POP AX 
    
    

    
    MAIN ENDP
END MAIN




