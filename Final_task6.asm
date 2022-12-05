.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "Welcome User!! $"
MSG2 DB 0DH,0AH,"Please User Enter small Letter:", 0DH,0AH, "$"
MSG3 DB 0DH,0AH,"Capital Letter :", 0DH,0AH, "$" 

CRTR1 DB ?
CRTR2 DB ?
CRTR3 DB ?  

.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H 
     MOV BL,AL
     
     CALL TASK 
                    
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    

TASK PROC
     LEA DX, MSG3
     MOV AH, 09H
     INT 21H
     
     SUB BL,20H
        
     MOV AH,2
     MOV DL,BL
     INT 21H     
     
     
     TASK ENDP
     

END MAIN