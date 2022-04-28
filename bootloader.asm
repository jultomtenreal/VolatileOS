[org 0x7c00]

mov bp, 0x7c00
mov sp, bp

jmp $

%include "print.asm"
; %include "diskread.asm" gotta try first
; calm
times 510-($-$$) db 0  ;magic boot code defining the stuff to 0 cus it needs to be 512 bytes long
dw 0xaa55