2.Write an Assembly Language Program to add an array of five,16 bit numbers 
.MODEL SMALL 
.DATA 
 ARRAY DW 5555H,6666H,7777H,8888H,9999H 
 SUM DW 0 
 CARRY DB 0 
.CODE 
 MOV AX,@DATA ;Initialize DS register 
 MOV DS,AX 
 MOV SI, OFFSET ARRAY ;Place offset of ARRAY in SI register
 MOV CX ,0005H ;Initialize count for no. of elements 
 UP : MOV AX,[SI] ;Load no. from memory to AX register 
 ADD SUM,AX ;add no. with sum 
 JNC NEXT ;Jump if Sum > 16 bit 
 INC CARRY ;store carry 
NEXT: INC SI ;Increment memory pointer 
 INC SI 
 DEC CX ;Decrement count 
 JNZ UP ;Jump if count is not zero 
 MOV AH, 4CH ;Terminate program 
 INT 21H 
 END