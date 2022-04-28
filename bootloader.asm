[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

mov bx, TestString
call PrintString

jmp $

PrintString:
    mov ah, 0x0e
    mov al, [bx]
    int 0x10
    ret

TestString:
    db 'This is a test sussy string sussy imposter sus',0
; ඞ
times 510-($-$$) db 0  ;magic boot code defining the stuff to 0 cus it needs to be 512 bytes long
dw 0xaa55

; part 2

; just look at part 2