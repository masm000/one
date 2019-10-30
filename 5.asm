5. Write an Assembly language program to exchange block of data bytes using 
string instructions 
.MODEL SMALL 
.DATA 
 BLK1 DB 11H,22H,33H,44H,55H 
 BLK2 DB 0AAH,0BBH,0CCH,0DDH,EEH 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 CLD 
 LEA SI,BLK1 
 LEA DI, BLK2 
 MOV CX,05H 
 UP : MOV BL,[DI] 
 MOVSB 
 MOV [SI-1],BL 
 LOOP UP 
 MOV AH,4CH 
 INT 21H 
 END