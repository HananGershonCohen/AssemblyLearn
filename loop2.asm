%include "io.inc"

section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    ; for (int j=4;j>0;j--)
 ; for (int i=10;i>0;i--)
 ; cout << "*"
 
 xor edx,edx; counter j
 xor ecx,ecx; counter i 
 mov edx,4
 
 loop_0:
 NEWLINE
  mov ecx,10
 dec edx

 loop_1:
   dec ecx
 PRINT_CHAR "*"
 cmp ecx,0
 jnz loop_1
 
 cmp edx,0
 jnz loop_0

 end_loop:
   
    xor eax, eax
    ret 