	.file	"avx512.cpp"
# GNU C++17 (GCC) version 15.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.3.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtls-dialect=gnu2 -mtune=generic -march=x86-64 -O2 -O0 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -fno-asynchronous-unwind-tables -fno-ident -frandom-seed=7zcpj11faz --param=ssp-buffer-size=4
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
.LC0:
	.string	" "
#NO_APP
	.text
	.globl	main
	.type	main, @function
main:
.LFB1976:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
# ./avx512.cpp:4: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	movq	%rax, -8(%rbp)	# tmp107, D.53417
	xorl	%eax, %eax	# tmp107
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	movl	$0, -220(%rbp)	#, i
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	jmp	.L2	#
.L3:
# ./avx512.cpp:9:     std::cin>>a[i];
	leaq	-208(%rbp), %rax	#, tmp108
	movl	-220(%rbp), %edx	# i, tmp110
	movslq	%edx, %rdx	# tmp110, tmp109
	salq	$3, %rdx	#, tmp111
	addq	%rdx, %rax	# tmp111, _1
	movq	_ZSt3cin@GOTPCREL(%rip), %rdx	#, tmp113
	movq	%rax, %rsi	# _1,
	movq	%rdx, %rdi	# tmp112,
	call	_ZNSirsERl@PLT	#
# ./avx512.cpp:10:     std::cin>>b[i];
	leaq	-144(%rbp), %rax	#, tmp114
	movl	-220(%rbp), %edx	# i, tmp116
	movslq	%edx, %rdx	# tmp116, tmp115
	salq	$3, %rdx	#, tmp117
	addq	%rdx, %rax	# tmp117, _2
	movq	_ZSt3cin@GOTPCREL(%rip), %rdx	#, tmp119
	movq	%rax, %rsi	# _2,
	movq	%rdx, %rdi	# tmp118,
	call	_ZNSirsERl@PLT	#


#######
## ここ!
#######
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	addl	$1, -220(%rbp)	#, i
.L2:
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	cmpl	$7, -220(%rbp)	#, i
	jle	.L3	#,
# ./avx512.cpp:12:   for(int i=0;i<8;i++){
	movl	$0, -216(%rbp)	#, i
# ./avx512.cpp:12:   for(int i=0;i<8;i++){
	jmp	.L4	#
.L5:
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	movl	-216(%rbp), %eax	# i, tmp121
	cltq
	movq	-208(%rbp,%rax,8), %rdx	# a[i_9], _3
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	movl	-216(%rbp), %eax	# i, tmp123
	cltq
	movq	-144(%rbp,%rax,8), %rax	# b[i_9], _4
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	addq	%rax, %rdx	# _4, _5
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	movl	-216(%rbp), %eax	# i, tmp125
	cltq
	movq	%rdx, -80(%rbp,%rax,8)	# _5, c[i_9]
# ./avx512.cpp:12:   for(int i=0;i<8;i++){
	addl	$1, -216(%rbp)	#, i

######
######



.L4:
# ./avx512.cpp:12:   for(int i=0;i<8;i++){
	cmpl	$7, -216(%rbp)	#, i
	jle	.L5	#,
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	movl	$0, -212(%rbp)	#, i
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	jmp	.L6	#
.L7:
# ./avx512.cpp:16:     std::cout<<c[i]<<" ";
	movl	-212(%rbp), %eax	# i, tmp127
	cltq
	movq	-80(%rbp,%rax,8), %rax	# c[i_10], _6
	movq	_ZSt4cout@GOTPCREL(%rip), %rdx	#, tmp129
	movq	%rax, %rsi	# _6,
	movq	%rdx, %rdi	# tmp128,
	call	_ZNSolsEl@PLT	#
	movq	%rax, %rdx	#, _7
# ./avx512.cpp:16:     std::cout<<c[i]<<" ";
	leaq	.LC0(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	movq	%rdx, %rdi	# _7,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	addl	$1, -212(%rbp)	#, i
.L6:
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	cmpl	$7, -212(%rbp)	#, i
	jle	.L7	#,
# ./avx512.cpp:20:   return 0;
	movl	$0, %eax	#, _19
# ./avx512.cpp:21: }
	movq	-8(%rbp), %rdx	# D.53417, tmp132
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1976:
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
