7. Write an Assembly Language Program to check whether string is palindrome or not. Display 
the appropriate message. 
.MODEL SMALL 
.DATA 
 MS1 DB 10,13,’ENTER THE STRING:$’ 
 MS2 DB 10,13,’STRING IS PALINDROME:$’ 
 MS3 DB 10,13,’STRING IS NOT PALINDROME:$ 
 BUFF DB 80 
 DB 0
DB 80 DUP(0) 
.CODE 
 MOV AX,@DATA 
MOV DS, AX 
MOV AH, 09H ;display MS1 
LEA DX, MS1 
INT 21H 
MOV AH, 0AH ;accept string from keyboard 
LEA DX, BUFF 
INT 21H 
LEA BX, BUFF+2 ;offset of string in BX reg. 
MOV CH, 00H 
MOV CL, BUFF+1 ;length of string in CL reg. 
MOV DI, CX ;DI points last character 
DEC DI 
SAR CL, 1 ;divide count by 2 
MOV SI, 0000H 
BACK: MOV AL, [BX+SI] 
MOV AH, [BX+DI] 
CMP AL, AH 
JNZ LAST 
INC SI 
DEC DI 
DEC CL 
JNZ BACK 
MOV AH, 09H ;display MS2 
LEA DX, MS2 
INT 21H 
JMP TER 
LAST: MOV AH, 09H ;display MS3 
LEA DX, MS3 
INT 21H 
 TER:END