
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here   

mov ax,21
cmp ax,18
jl if1
jmp else1
if1:
cmp ax,10
jl if2
jmp else2
if2:
mov dx,0   
jmp end_if2
else2:
mov dx,1
end_if2:
jmp end_if1
else1:
mov dx,2
end_if1:

ret




