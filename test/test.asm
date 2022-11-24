BITS 64
global _main
   extern _printf
section .text
_main: 
   push 5
   push 4
   mov dword [rsp+4], 3 ; set 5 to 4 in stack
   push intformt
   call _printf
   pop rdx
   pop rdx
   push intformt
   call _printf
   pop rdx
   pop rdx


   
   ret
; -- Return --    ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
