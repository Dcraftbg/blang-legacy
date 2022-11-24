global _main
    extern _printf
section .text
_main:
    movzx eax, byte [DAT0]
    push eax
    push DAT1
    call _printf
    add  esp, 8
    ret 0
section .data
    DAT0:
        db 21
    DAT1:
        db "%d"