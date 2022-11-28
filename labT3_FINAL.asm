.MODEL SMALL
.STACK 100H 

.DATA
BEFORE DB "BEFORE REVERSE",0AH,0DH,"$"
AFTER DB 0AH,0DH,"AFTER REVERSE",0AH,0DH,"$"

.CODE
MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    
    BEFORE_:
    LEA DX,  BEFORE
    MOV AH,9   
    INT 21H
    
    MOV AH,1
    INT 21H
    PUSH AX
    
    MOV AH,1
    INT 21H 
    MOV BX,AX
    PUSH BX  
    
    MOV AH,1
    INT 21H 
    MOV CX,AX
    PUSH CX   
    
    AFTER_:
    LEA DX,  AFTER
    MOV AH,9   
    INT 21H

    POP AX
    POP BX
    POP CX 
    
    MOV AH,2
    MOV DX,AX
    INT 21H
    
    
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    MOV AH,2
    MOV DX,CX
    INT 21H
    

    
    MAIN ENDP
END MAIN




