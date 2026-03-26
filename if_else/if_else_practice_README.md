mov ax,5
mov bx,7
mov cx,10
mov dx,11
mov si,12
mov di,12
Step 1 — Check AX > BX && CX < DX
cmp ax,bx      ; compare 5-7
jle check_ef   ; 5 <= 7 → jump to check EX==FX

 Why jump: AX > BX? → 5 > 7 ❌ → jump to check_ef

Inner AND short-circuits → no need to check CX<DX
Step 2 — Check EX == FX (here SI==DI)
check_ef:
cmp si,di      ; compare 12-12
je if          ; 12 == 12 → jump to IF
jmp else       ; else → not taken

 Why jump: SI == DI → true → jump to if

Step 3 — IF Block
if:
mov dx,100     ; DX = 100
jmp end_if

 DX is set to 100

Step 4 — ELSE Block
else:
mov dx,200     ; NOT executed

 Skipped because IF executed

Final Result
DX = 100 ✅
Matches the high-level condition: (AX>BX && CX<DX) || EX==FX
