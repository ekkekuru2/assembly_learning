	.file	"avx512.cpp"
# GNU C++17 (GCC) version 15.3.0 (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 15.3.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.4.1, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -U _FORTIFY_SOURCE -U _FORTIFY_SOURCE -D _FORTIFY_SOURCE=3 -mno-omit-leaf-frame-pointer -mtls-dialect=gnu2 -mavx512f -mtune=generic -march=x86-64 -O2 -O3 -fPIC -fstack-clash-protection -fzero-call-used-regs=used-gpr -fstrict-flex-arrays=1 -fstack-protector-strong -fno-strict-overflow -fno-omit-frame-pointer -fno-asynchronous-unwind-tables -fno-ident -frandom-seed=7zcpj11faz --param=ssp-buffer-size=4
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	" "
#NO_APP
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2047:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	andq	$-64, %rsp	#,
	subq	$256, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	_ZSt3cin@GOTPCREL(%rip), %r13	#, tmp127
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], ivtmp.38
	movq	%rbx, 248(%rsp)	# ivtmp.38, D.55235
	movq	%rsp, %rbx	#, ivtmp.38
	leaq	64(%rsp), %r12	#, ivtmp.39
	movq	%r12, %r14	# ivtmp.39, _4
	.p2align 4
	.p2align 3
.L2:
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/istream:191:       { return _M_extract(__n); }
	movq	%rbx, %rsi	# ivtmp.38,
	movq	%r13, %rdi	# tmp127,
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	addq	$8, %rbx	#, ivtmp.38
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/istream:191:       { return _M_extract(__n); }
	call	_ZNSi10_M_extractIlEERSiRT_@PLT	#
	movq	%r12, %rsi	# ivtmp.39,
	movq	%r13, %rdi	# tmp127,
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	addq	$8, %r12	#, ivtmp.39
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/istream:191:       { return _M_extract(__n); }
	call	_ZNSi10_M_extractIlEERSiRT_@PLT	#


#######
## ここ!
#######
# ./avx512.cpp:8:   for(int i=0;i<8;i++){
	cmpq	%rbx, %r14	# ivtmp.38, _4
	jne	.L2	#,
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	vmovdqa64	(%rsp), %zmm0	# MEM <vector(8) long int> [(long int *)&a], MEM <vector(8) long int> [(long int *)&a]
	vpaddq	64(%rsp), %zmm0, %zmm0	# MEM <vector(8) long int> [(long int *)&b], MEM <vector(8) long int> [(long int *)&a], vect__5.19_43
	leaq	128(%rsp), %rbx	#, ivtmp.30
	movq	_ZSt4cout@GOTPCREL(%rip), %r12	#, tmp128
	leaq	192(%rsp), %r13	#, _47
# ./avx512.cpp:13:     c[i]=a[i]+b[i];
	vmovdqa64	%zmm0, 128(%rsp)	# vect__5.19_43, MEM <vector(8) long int> [(long int *)&c]
	vzeroupper
	.p2align 4
	.p2align 3

######
######

.L3:
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/bits/ostream.h:175:       { return _M_insert(__n); }
	movq	(%rbx), %rsi	# MEM[(long int *)_48], MEM[(long int *)_48]
	movq	%r12, %rdi	# tmp128,
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	addq	$8, %rbx	#, ivtmp.30
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/bits/ostream.h:175:       { return _M_insert(__n); }
	call	_ZNSo9_M_insertIlEERSoT_@PLT	#
# /nix/store/7sh9061yj9yl20ndc00rqw4d0bd80m1j-gcc-15.3.0/include/c++/15.3.0/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	movl	$1, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	movq	%rax, %rdi	# _22,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# ./avx512.cpp:15:   for(int i=0;i<8;i++){
	cmpq	%r13, %rbx	# _47, ivtmp.30
	jne	.L3	#,
# ./avx512.cpp:21: }
	movq	248(%rsp), %rax	# D.55235, tmp130
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	jne	.L9	#,
	leaq	-32(%rbp), %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE2047:
	.size	main, .-main
	.section	.note.GNU-stack,"",@progbits
