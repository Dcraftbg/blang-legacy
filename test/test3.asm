BITS 64
global _main
   extern _printf
section .text
_main: 
   push 5
   push 4
   mov dword [rsp+4], 3 ; set 5 to 4 in stack
   xor rbx, rbx
   mov ebx, dword [rsp+4]
   ;shr rbx, 32
   push rbx
   push intformt
   call _printf
   pop rdx
   ret
; -- Return --    ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
