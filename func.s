	.file	"func.c"
# GNU C23 (GCC) version 15.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.3.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtls-dialect=gnu2 -mtune=generic -march=x86-64 -O2 -O0 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -fno-asynchronous-unwind-tables -fno-ident -frandom-seed=7zcpj11faz --param=ssp-buffer-size=4
	.text
	.globl	func
	.type	func, @function
func:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	movl	%edi, -4(%rbp)	# i, i
# func.c:2:   return i+10;
	movl	-4(%rbp), %eax	# i, tmp100
	addl	$10, %eax	#, _2
# func.c:3: }
	popq	%rbp	#
	xorl	%edi, %edi	#
	ret	
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
# func.c:6:   return func(2);
	movl	$2, %edi	#,
	call	func@PLT	#
# func.c:7: }
	popq	%rbp	#
	ret	
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
