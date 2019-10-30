6. Write an Assembly Language Program to arrange numbers in the given array in 
ascending/descending order 
.MODEL SMALL 
.DATA 
 ARRAY DB 33H,88H,99H,22H,55H 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 MOV BL,05H 
 TOP:MOV SI,OFFSET ARRAY 
 MOV CL,04H 
 UP:MOV AL,[SI] 
 INC SI 
 CMP AL,[SI] 
 JC DOWN 
 XCHG AL,[SI] 
 XCHG AL,[SI-1] 
DOWN: LOOP UP 
 DEC BL 
 JNZ TOP 
 MOV AH,4CH 
 INT 21H 
 END