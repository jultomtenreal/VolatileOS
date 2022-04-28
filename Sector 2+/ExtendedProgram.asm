[org 0x7e00]

jmp EnterProtectedMode
%include "sector 2+/gdt.asm"
%include "Sector 1/print.asm"

EnterProtectedMode:
    call EnableA20
    cli ; disable interrupts
    lgdt [gdt_descriptor] ; load the GDT
    mov eax, cr0 ; get the current CR0 value
    or eax, 1 ; set the PE bit
    mov eax, cr0 ; set the CR0 value
    jmp codeseg:StartProtectedMode

EnableA20:
    in al, 0x02
    or al, 2
    out 0x92, al
    ret

[bits 32]

StartProtectedMode:
    mov ax, dataseg
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov [0xb80000], byte 'H'
    mov [0xb80002], byte 'e'
    mov [0xb80004], byte 'l'
    mov [0xb80006], byte 'l'
    mov [0xb80008], byte 'o'

    jmp $

times 2048-($-$$) db 0