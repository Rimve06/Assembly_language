
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  


org 100h  
.data
a dw 4a3ch
b dw 92f1h

; add your code here 
.code
mov ax,4a3ch
mov bx,92f1h
add ax,bx
mov dx,ax

ret




