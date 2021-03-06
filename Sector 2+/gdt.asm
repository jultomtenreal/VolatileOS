gdt_nulldesc:
    dd 0x0
    dd 0x0
gdt_codedesc:
    dw 0xFFFF       ; limit
    dw 0x0          ; base (low)
    db 0x0          ; base (medium)
    db 10011010b    ; flags
    db 11001111b    ; falgs + upper limit
    db 0x0          ; base (high)
gdt_datadesc:
    dw 0xFFFF
    dw 0x0
    db 0x0
    db 10010010b
    db 11001111b
    db 0x0

gdt_end:

gdt_descriptor:
    gdt_size:
        dw gdt_end - gdt_nulldesc - 1
        dd gdt_nulldesc

codeseg equ gdt_codedesc - gdt_nulldesc
dataseg equ gdt_datadesc - gdt_nulldesc