%include "io.inc"

section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
 ; for (int i=10;i<0;i--)
 ; cout << "*"
 
 xor ecx,ecx; counter
 mov ecx,10
 loop_1:
 PRINT_CHAR "*"
 dec ecx
 cmp ecx,0
 jnz loop_1
   
    xor eax, eax
    ret 