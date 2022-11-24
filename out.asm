BITS 64
global _main
   extern _printf
   extern _putchar
section .text
_main: 
   ; -- BEFORE STACK BUFFER INITIALISATION -- 
   sub rsp, 4




   ; -- Cleanup --
; -- Return -- 
   ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
