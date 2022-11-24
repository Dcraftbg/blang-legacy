	.file	"hello.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$72, (%esp)
	call	_putchar
	movl	$101, (%esp)
	call	_putchar
	movl	$108, (%esp)
	call	_putchar
	movl	$108, (%esp)
	call	_putchar
	movl	$111, (%esp)
	call	_putchar
	movl	$32, (%esp)
	call	_putchar
	movl	$87, (%esp)
	call	_putchar
	movl	$111, (%esp)
	call	_putchar
	movl	$114, (%esp)
	call	_putchar
	movl	$108, (%esp)
	call	_putchar
	movl	$100, (%esp)
	call	_putchar
	movl	$33, (%esp)
	call	_putchar
	movl	$5, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
