10. Write an Assembly Language Program to find the GCD of two 16 bit unsigned 
numbers 
.MODEL SMALL 
.DATA 
NO1 DW 0120 
NO2 DW 0090 
GCD DW 0H 
.CODE 
MOV AX,@DATA 
MOV DS, AX 
MOV AX,NO1 
MOV BX,NO2 
 AGAIN: CMP AX,BX 
 JE FINISH 
 JB EXCHG 
 UP: MOV DX,0 
 DIV BX 
 CMP DX,0 
 JE FINISH 
 MOV AX,DX 
 JMP AGAIN 
 EXCHG: XCHG AX,BX 
 JMP UP 
 FINISH: MOV GCD,BX
mov ch,04h ;count of digits to be displayed 
 mov cl,04h ;count to roll by 4 bits 
 L1: rol bx,cl ;roll bl so that msb comes to lsb 
 mov dl,bl ;load dl with data to be displayed 
 and dl,0fh ;get only lsb 
 cmp dl,09 ;check if digit is 0-9 or letter A-F 
 jbe L2 
 add dl,07 ;if letter add 37H else add 30H 
 L2: add dl,30h 
 mov ah,02h ;display character 
 int 21h 
 dec ch ;decrement count 
 jnz L1 
 mov ah,4ch 
 int 21h 
 END