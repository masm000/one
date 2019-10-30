13 Write mixed language program to separate even and odd numbers from an array . 
Program to separate even and odd numbers from an array :. 
#include <conio.h> 
#include <stdio.h> 
#include <stdlib.h> 
Void main( ) 
 { 
 int arr[10],evn[10],odd[10]; 
 int no ; 
 char rem 
 int i, j=0, k=0, l1, l2 ; 
 clrscr( ) 
 printf (“/n Enter the Array Elements:’); 
 for (i=0; i<10; i++) 
 scanf (“%d”,& arr[i]) 
 asm lea si,arr 
 asm mov cx,0ah 
 back : asm mov ax,[si] 
 asm mov no,ax 
 asm mov bl,02h 
 asm div bl 
 asm mov rem,ah 
 if (rem=1) 
 { 
 odd{j]=no; 
 j++ ; 
 l1=j; 
 }
else 
 { 
 evn[k]=no; 
 K++; 
 l2=k; 
 } 
 asm add si,2 
 asm loop back 
 printf(“\n Even Array) ; 
 for (i=0; i< l2;i++) 
 printf (“%d”,evn[i]); 
 printf (”\n Odd Array:’); 
 for (i=0; i< l1;i++) 
 printf (“%d”,odd[i]); 
 getch( ); 
 