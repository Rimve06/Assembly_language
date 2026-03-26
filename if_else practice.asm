


org 100h 
;if ((AX > BX && CX < DX) || EX == FX)
   ; DX = 100;
;else
    ;DX = 200;

; add your code here    
mov ax,5
mov bx,7
mov cx,10
mov dx,11
mov si,12
mov di,12

cmp ax,bx
jle check_ef
cmp cx,dx
jge check_ef
jmp if

check_ef:
cmp si,di
je if
jmp else

if:
mov dx,100
jmp end_if
else:
mov dx,200
end_if:

ret




