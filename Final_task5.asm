.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB "Welcome To My Calculator!! $"
MSG2 DB 0DH,0AH,"Please User Enter A Hex Digit (A-F):", 0DH,0AH, "$"
MSG3 DB 0DH,0AH,"In Decimal it is: $" 
MSG4 DB 0DH,0AH,"Thank You for using my Calculator$"
MSG5 DB 0DH,0AH,"Have a good day$"  

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
     
     SUB  BL,11H
     
     MOV AH,2
     MOV DL,'1'
     INT 21H
     MOV DL,BL
     INT 21H  
        
     LEA DX, MSG4
     MOV AH, 09H
     INT 21H
     
     LEA DX, MSG5
     MOV AH, 09H
     INT 21H
     
     TASK ENDP
     

END MAIN