9. Write an Assembly Language Program to find the factorial of a number 
.MODEL SMALL 
 .DATA 
 NUM DW 0005H 
 FACTLSW DW ? 
 FACTMSW DW ? 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 MOV AX,01H 
 MOV BX,NUM 
 CALL FACT 
 MOV FACTLSW,AX 
 MOV FACTMSW,DX 
 MOV AH,4CH 
 INT 21H 
FACT PROC NEAR 
 CMP BX,01H 
 JZ LAST 
 UP: MUL BX 
 DEC BX 
 CMP BX,01H
JNZ UP 
 RET 
 LAST:MOV AX,01H 
 RET 
 FACT ENDP 
 END