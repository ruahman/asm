
```asm

; start at address 100h
; organize program at 100h
org 100h 

; jump to main lable that way we skip message
jmp main

; label message
message: 
    db 'Hello World', 0

print:
    mov ah, 0eh ; 0eh is our command to the bios
._loop:
    lodsb ; load byte to al 
    cmp al, 0  ; compare if latest byte is 0
    je .done ; if yes then jump to done
    int 10h ; invoke interupt, output to screen, bios routine
    je ._loop ; else keep looping
.done:
    ret

; label main
main:
    mov si, message ; move data bytes to si
    call print

ret
```
