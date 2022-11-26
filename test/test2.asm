BITS 64
global _main
   extern _printf
section .text
_main: 
;    ; -- int a --
;    add rsp, 4
;    ; -- a = --
;    mov rbp,rsp
;    sub rsp,4
;    push 5
;    mov rsp, rbp
; ;   -- Must print a! --
;    mov rsp, rbp
;    sub rsp, 4
;    pop rbx
;    push rbx
;    mov rbp, rsp
;    push rbx
;    push intformt
;    call _printf
;    xor rbx,rbx
; ;    ret
;    push DWORD 5
;    pop DWORD rdx
;    push DWORD rdx
   ; push rsp
   ; push intformt
   ; call _printf
   ; pop rdx
   ; pop rdx

   ; push 5

   ; push 10
   ; push chrformt
   ; call _printf
   ; pop rdx
   ; pop rdx


   ; push rsp
   ; push intformt
   ; call _printf
   ; pop rdx
   ; pop rdx


    ; push 5
    ; push intformt
    ; call _printf
    ; pop rdx 
    ; pop rdx 
    ; push 4
    ; push intformt
    ; call _printf



   ; int a
   sub rsp, 4
   ; int b
   sub rsp, 4
   ; a = 5
   add rsp, 8
   push 5
   sub rsp, 4
   ; b = 4
   mov qword [rsp+4], 4
   ; add rsp, 4
   ; push 4
   ; sub rsp, 0
   ; print b
   add rdx, 0   
   pop rdx
   push rdx
   add rsp, 0
   push rdx
   push intformt
   call _printf
   pop rdx
   pop rdx
   ;print a
   ; add rdx, 4
   pop rdx
   push rdx

   ; sub rdx, 4
   push rdx
   push intformt
   call _printf
   pop rdx
   pop rdx

   ret
; -- Return --    ret
section .data
   intformt: db "%d",0
   chrformt: db "%c",0
