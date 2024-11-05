; int func_sum(int x , int y)
; return x+y 
;/------------------------
; int x = 5
;int y = 10
; int sum = func_sum(x,y) 
;/===================================
%include "io.inc"

section .data
x: dd 5
y: dd 10
 
section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    mov ebp, esp
    
    mov eax,[x]
    mov ebx,[y]
    push eax
    push ebx
    call func_sum
    PRINT_DEC 4, eax  ; הדפס את התוצאה ב-eax; print result
    xor eax, eax
    ret
    
    
    func_sum:
    enter 4,0 ; 1 local var. address=[ebp-4]
    pusha
    
    mov eax,[ebp+8] ; [ebp+8]=  x 
    add eax,[ebp+12] ; [ebp+12]= x 
    mov [ebp-4],eax
    
    popa
    mov eax,[ebp-4]
    leave
    ret 8 ; free of ,[ebp+8],[ebp+12]