
;/------------------------
; int arr[5]
; for (int i=5;i>0;i--)
; cin >> arr[i] 
; for (int i=5;i>0;i--)
; cout << arr[i] 
; print_arr(arr)
;//-------------------------------------
%include "io.inc"

section .bss
arr: resd 5 ; ���� ���� �-5 ����� ������ (4 ������ �� ���)

section .text
global main
main:
    mov ebp, esp           ; ���� ����� ����

    mov ecx, 5             ; ���� ���� �-5
    mov edi, arr           ; ����� ������ �����

loop_1:
    GET_DEC 4, [edi]       ; ��� ���� ������� ����� ���� �����
    PRINT_DEC 4, [edi]     ; ���� �� ����� ������
    NEWLINE                ; ���� ���� ����

    add edi, 4             ; ���� ��� ��� ����� (����� ������ �-4 ������)
    dec ecx                ; ����� ����� �-1
    jnz loop_1             ; �� ����� �� ���, ���� ������ ������

    xor eax, eax           ; ����� eax
    ret                    ; ���� ���������
