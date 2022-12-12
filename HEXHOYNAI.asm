.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "INPUT: $"
MSG2 DB 0AH,0DH, "OUTPUT $"
MSG3 DB 0AH,0DH, "ODD $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     MOV CX,0
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H     
     
     INPUTS:
     MOV AH,1
     INT 21H
     MOV BL,AL
      
     
     CMP AL,0DH
     JE OUTPUTS 
     
     PUSH BX
     INC CX 
     
     JMP INPUTS
     
     
     OUTPUTS:
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H
     
     MOV AH,2 
     MOV DX,0AH
     INT 21H  
     MOV DX,0DH
     INT 21H
     
     MOV DX,CX
     RVRS:
     POP AX
     LOOP  
     
     PRINT:
     POP DX
     INT 21H 
     
     LOOP PRINT
      
    
     EXIT:               
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    
     

END MAIN