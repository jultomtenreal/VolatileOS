; sussy
instructions
; yes
jmp $

times 510-($-$$) db 0  ; magic boot code defining the stuff to 0 cus it needs to be 512 bytes long
dw 0x55aa