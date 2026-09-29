	.file	"return.c"
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
# return.c:2:   return 0;
	movl	$0, %eax	#, _1
# return.c:3: }
	popq	%rbp	#
	ret	
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
