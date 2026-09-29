	.file	"hello.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello, world!\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movl	$14, %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	movq	%rsp, %rbp
	call	write@PLT
	xorl	%eax, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
