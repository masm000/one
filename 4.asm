4. Write an Assembly Language Program to find Smallest/Largest number from an 
array of N numbers 
.MODEL SMALL 
.DATA 
 ARRAY DB 98H,23H,34H,0AH,10H 
 SMALLEST DB ? 
.CODE 
 MOV AX,@DATA 
 MOV DS,AX 
 MOV CX,04H 
 MOV SI,OFFSET ARRAY 
 MOV AL,[SI]
UP: INC SI 
 CMP AL,[SI] 
 JNC NEXT 
 MOV AL,[SI] 
NEXT: DEC CX 
 JNZ UP 
 MOV SMALLEST,AL 
 MOV AH,4CH 
 INT 21H 
 END