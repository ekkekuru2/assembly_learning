	.file	"add.c"
# GNU C23 (GCC) version 15.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.3.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtls-dialect=gnu2 -mtune=generic -march=x86-64 -O2 -O0 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -fno-asynchronous-unwind-tables -fno-ident -frandom-seed=7zcpj11faz --param=ssp-buffer-size=4
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
# add.c:2:   int a=1;
	movl	$1, -20(%rbp)	#, a
# add.c:3:   int b=2;
	movl	$2, -16(%rbp)	#, b
# add.c:4:   int c=3;
	movl	$3, -12(%rbp)	#, c
# add.c:5:   int d=4;
	movl	$4, -8(%rbp)	#, d
# add.c:7:   int e = a+b+c+d;
	movl	-20(%rbp), %edx	# a, tmp102
	movl	-16(%rbp), %eax	# b, tmp103
	addl	%eax, %edx	# tmp103, _1
# add.c:7:   int e = a+b+c+d;
	movl	-12(%rbp), %eax	# c, tmp104
	addl	%eax, %edx	# tmp104, _2
# add.c:7:   int e = a+b+c+d;
	movl	-8(%rbp), %eax	# d, tmp108
	addl	%edx, %eax	# _2, e_7
	movl	%eax, -4(%rbp)	# e_7, e
# add.c:8:   return e;
	movl	-4(%rbp), %eax	# e, _8
# add.c:9: }
	popq	%rbp	#
	ret	
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
