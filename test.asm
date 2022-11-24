BITS 64
global _main
   extern _printf
   extern _putchar
section .text
_main: 
   ; sub rsp, 8
   push rbp
   mov rsp, rbp
   ; push intformt
   ; call _printf
   ; pop rdx
   ; pop rdx

   ; push 10
   ; push chrformt
   ; call _printf
   ; pop rdx
   ; pop rdx

   ; push intformt
   ; call _printf
   ; pop rdx
   ; pop rdx
   push 72
   call _putchar
   pop rdx
   
   ; mov rdx, [rsp+4]
   ; push rdx
   ; push intformt
   ; call _printf
   ; push 0
   leave
   ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
