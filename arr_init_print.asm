
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
arr: resd 5 ; שמור מקום ל-5 מילים כפולות (4 בייטים כל אחת)

section .text
global main
main:
    mov ebp, esp           ; עבור דיבוג נכון

    mov ecx, 5             ; הגדר מונה ל-5
    mov edi, arr           ; הצבעה לתחילת המערך

loop_1:
    GET_DEC 4, [edi]       ; קלט מספר מהמשתמש ושמור אותו במערך
    PRINT_DEC 4, [edi]     ; הדפס את המספר מהמערך
    NEWLINE                ; הדפס שורה חדשה

    add edi, 4             ; מעבר לתא הבא במערך (הגדלת הכתובת ב-4 בייטים)
    dec ecx                ; הפחתת המונה ב-1
    jnz loop_1             ; אם המונה לא אפס, חזור לתחילת הלולאה

    xor eax, eax           ; איפוס eax
    ret                    ; חזרה מהפונקציה
