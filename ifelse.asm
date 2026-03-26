
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   
.data
a dw 1
b dw 2
.code
mov ax,a
mov bx,b
cmp ax,bx
;if
jge if
;else
mov cx,bx 
jmp end
;if 
if:
mov cx,ax
end:
ret




