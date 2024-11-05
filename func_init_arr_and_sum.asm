; int sum_init_arr(int arr[])
;{
; int sum=0
; for (int i=5;i>0;i--)
; sum+= arr[i] 
;return sum
;}
;/-------------------------
; void func_init_arr(int arr[])
;{
; for (int i=5;i>0;i--)
; cin >> arr[i] 
:}
;/------------------------
; int main()
;{
; int arr[5]
; func_init_arr(arr) 
;cout <<  sum_arr(arr)
;}

;/===================================
%include "io.inc"

section .data
size_arr: dd 5

section .bss
arr: resd 5

section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here
    
   push arr
   push dword[size_arr]
    call init_arr
    
   push arr
   push dword[size_arr]
    call sum_arr
    PRINT_DEC 4, eax  ; הדפס את התוצאה ב-eax; print result

    
    xor eax, eax
    ret
    
    ;*************************************************************************
    init_arr:
    enter 0,0 ; 0 local var. 
    pusha
    
    mov ecx,[ebp+8]; [size_arr]
    mov esi,[ebp+12] ; arr
    
    
    loop1:
    GET_DEC 4,[esi]
    add esi,4
    dec ecx
    jnz loop1
    
    end_loop1
    
    popa
    leave
    ret 8 ; free of ,[ebp+8],[ebp+12]
    ;*************************************************************************
    sum_arr:
    enter 4,0 ; 1 local var. 
    pusha
    
    xor eax,eax
    mov ecx,[ebp+8]; [size_arr]
    mov esi,[ebp+12] ; arr
    
    
    loop_sum:
    add eax,[esi]
    add esi,4
    dec ecx
    jnz loop_sum
    
    end_loop_sum:
    
    mov [ebp-4], eax
    popa
    mov eax,[ebp-4]
    leave
    ret 8 ; free of ,[ebp+8],[ebp+12]
    