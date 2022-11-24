BITS 64

global _main
extern _printf

section .text
_main:
    push 6
    push intformat
    call _printf
    ret
section .data
    intformat: db "%d",0