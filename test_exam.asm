%include "io .inc"

section .data
arr: dd -100, -5,-2,-1,10,77,88,998
arr_size: dd 4

section .bss
abs_arr: resd 8
sqr_arr: resd 8

section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    
    mov ebx,arr
    mov esi,abs_arr
    mov edi,sqr_arr
    mov ecx,[arr_size]
    
    loop_copy:
    mov eax,[ebx] ;Write to "eax" the [value] found in "ebx"
    cmp eax,0 ; Comparison with 0 : do ==> eax-0
    jge positive ; jge => jump grater equal
    neg eax ; neg => X*-1
    positive:
    mov [esi],eax ; copy [arr] to [abs_arr]
    imul eax
    mov [edi],eax ; copy [arr] to [sqr_arr]
    
    add ebx,4
    add esi,4
    add edi,4
    
    dec ecx
    jnz loop_copy
    
    end_loop_copy:
    xor eax, eax
    ret