
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.code
mov ax,5
mov bx,3
cmp ax,bx
jl if
jmp else
if:
add ax,bx
jmp end_if
else:
sub ax,bx
end_if:

ret




