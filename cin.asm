section .text
global main
main:
    mov ebp, esp; for correct debugging
    ;write your code here

;if (al==bl)
; al=10
;else
; bl=5
xor eax,eax
xor ebx,ebx

GET_UDEC 4,al ; cin >> al
GET_UDEC 4,bl ; cin >> bl 

cmp al,bl 
jne else  
mov al,10 
jmp end

else:
mov al,5

end:


    xor eax, eax
    ret