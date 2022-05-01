PrintString:
    push ax
    push bx

    mov ah, 0x0e
    .Loop:
    cmp [bx], byte 0
    je .Exit ; jump if at the end of the string
        mov al, [bx]
        int 0x10
        inc bx
        jmp .Loop
    .Exit:

    pop ax
    pop bx
    ret