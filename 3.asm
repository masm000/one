3.Write an Assembly Language Program to implement multiplication and division 
 1] WAP for 8 bit by 8 bit unsigned multiplication 
 2] WAP for 16 bit by 8 bit signed multiplication 
 3] WAP for 16 bit by 8 bit unsigned division 
 4] WAP for 16 bit by 16 bit signed division 
1] WAP for 8 bit by 8 bit unsigned multiplication 
.MODEL SMALL 
.DATA 
 MULTIPLICAND DB 18H 
 MULTIPLIER DB 12H 
 PRODUCT DW ? 
.CODE 
 MOV AX,@DATA 
 MOV DS, AX 
 MOV AL, MULTIPLICAND
MOV BL, MULTIPLIER 
 MUL BL 
 MOV PRODUCT,AX 
 MOV AH,4CH 
 INT 21H 
 END 
2] WAP for 16 bit by 8 bit signed multiplication 
.MODEL SMALL 
.DATA 
 MULTIPLICAND DB -18H 
 MULTIPLIER DW 1312H 
 PRODL DW ? 
 PRODH DW ? 
.CODE 
 MOV AX,@DATA 
 MOV DS, AX 
 MOV AL, MULTIPLICAND 
 CBW 
 MOV BX, MULTIPLIER 
 MUL BX 
 MOV PRODL,AX 
 MOV PRODH,DX 
 MOV AH,4CH 
 INT 21H 
 END 
 
3] WAP for 16 bit by 8 bit unsigned division 
.MODEL SMALL 
.DATA 
 DIVIDEND DW 4567H 
 DIVISOR DB 88H 
 QUOTIENT DB ? 
 REMENDER DB ? 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 MOV AX,DIVIDEND 
 MOV BL,DIVISO
DIV BL 
 MOV QUOTIENT,AL 
 MOV REMENDER,AH 
 MOV AH,4CH 
 INT 21H 
 END 
4] WAP for 16 bit by 16 bit signed division 
.MODEL SMALL 
.DATA 
 DIVIDEND DW FDCAH 
 DIVISOR DW -1234H 
 QUOTIENT DW ? 
 REMENDER DW ? 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 MOV AX,DIVIDEND 
 CWD 
 MOV BX,DIVISOR 
 DIV BX 
 MOV QUOTIENT,AX 
 MOV REMENDER,DX 
 MOV AH,4CH 
 INT 21H 
 END