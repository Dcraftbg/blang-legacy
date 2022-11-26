BITS 64
global _main
   extern _printf
   extern _putchar
section .text
_main: 
   sub rsp, 5
   
   ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
