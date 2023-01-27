	.file	"mm.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1633:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1633:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt13random_deviceC2Ev
	.type	_ZNSt13random_deviceC2Ev, @function
_ZNSt13random_deviceC2Ev:
.LFB3159:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3159
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	movl	$27765, %eax
	movq	%rsp, %rsi
	movq	%rbx, (%rsp)
	movl	$1634100580, 16(%rsp)
	movw	%ax, 20(%rsp)
	movb	$116, 22(%rsp)
	movq	$7, 8(%rsp)
	movb	$0, 23(%rsp)
.LEHB0:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE0:
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L3
	call	_ZdlPv@PLT
.L3:
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L10
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L8:
	endbr64
	movq	%rax, %rbp
.L5:
	movq	(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L6
	call	_ZdlPv@PLT
.L6:
	movq	%rbp, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3159:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceC2Ev,"aG",@progbits,_ZNSt13random_deviceC5Ev,comdat
.LLSDA3159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3159-.LLSDACSB3159
.LLSDACSB3159:
	.uleb128 .LEHB0-.LFB3159
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB3159
	.uleb128 0
	.uleb128 .LEHB1-.LFB3159
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3159:
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.size	_ZNSt13random_deviceC2Ev, .-_ZNSt13random_deviceC2Ev
	.weak	_ZNSt13random_deviceC1Ev
	.set	_ZNSt13random_deviceC1Ev,_ZNSt13random_deviceC2Ev
	.text
	.p2align 4
	.globl	_Z8multiplyPPdS0_S0_i
	.type	_Z8multiplyPPdS0_S0_i, @function
_Z8multiplyPPdS0_S0_i:
.LFB3748:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%ecx, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, -40(%rsp)
	movq	%rsi, -32(%rsp)
	movq	%rdx, -24(%rsp)
	movl	%ecx, -60(%rsp)
	testl	%eax, %eax
	jle	.L11
	movq	$0, -56(%rsp)
	leal	-1(%rax), %ebx
	salq	$3, %rax
	movl	%ecx, %r9d
	movq	%rax, -48(%rsp)
	movl	%ecx, %eax
	shrl	%r9d
	movq	-56(%rsp), %rdi
	andl	$-2, %eax
	movq	%rbx, %r13
	salq	$4, %r9
	movl	%eax, %r10d
	movl	%eax, -64(%rsp)
	leaq	8(,%rbx,8), %rax
	movq	%rax, -16(%rsp)
	salq	$3, %r10
	.p2align 4,,10
	.p2align 3
.L18:
	movq	-40(%rsp), %rsi
	movq	-24(%rsp), %rax
	movq	-32(%rsp), %r11
	movq	(%rax,%rdi,8), %rax
	movq	(%rsi,%rdi,8), %r8
	movq	-16(%rsp), %rdi
	leaq	(%rax,%r10), %rsi
	leaq	15(%rax), %r14
	leaq	(%rdi,%r8), %r12
	movq	-48(%rsp), %rdi
	leaq	(%rax,%rdi), %rbp
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%r8, %rdi
	addq	$8, %r8
	movq	(%r11), %rdx
	cmpq	%rbp, %rdi
	setnb	%r15b
	cmpq	%r8, %rax
	setnb	%cl
	orl	%r15d, %ecx
	cmpl	$1, %r13d
	seta	%r15b
	testb	%r15b, %cl
	je	.L19
	movq	%r14, %rcx
	subq	%rdx, %rcx
	cmpq	$30, %rcx
	jbe	.L19
	movsd	(%rdi), %xmm1
	xorl	%ecx, %ecx
	unpcklpd	%xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L14:
	movupd	(%rdx,%rcx), %xmm0
	movupd	(%rax,%rcx), %xmm2
	mulpd	%xmm1, %xmm0
	addpd	%xmm2, %xmm0
	movups	%xmm0, (%rax,%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %r9
	jne	.L14
	movl	-60(%rsp), %r15d
	cmpl	%r15d, -64(%rsp)
	je	.L16
	movsd	(%rdx,%r10), %xmm0
	mulsd	(%rdi), %xmm0
	addsd	(%rsi), %xmm0
	movsd	%xmm0, (%rsi)
.L16:
	addq	$8, %r11
	cmpq	%r12, %r8
	jne	.L17
	movq	-56(%rsp), %rsi
	leaq	1(%rsi), %rax
	cmpq	%rbx, %rsi
	je	.L11
	movq	%rax, -56(%rsp)
	movq	%rax, %rdi
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L13:
	movsd	(%rdx,%rcx,8), %xmm0
	mulsd	(%rdi), %xmm0
	movq	%rcx, %r15
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	addq	$1, %rcx
	cmpq	%rbx, %r15
	jne	.L13
	jmp	.L16
.L11:
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3748:
	.size	_Z8multiplyPPdS0_S0_i, .-_Z8multiplyPPdS0_S0_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"  "
	.text
	.p2align 4
	.globl	_Z11printMatrixPPdi
	.type	_Z11printMatrixPPdi, @function
_Z11printMatrixPPdi:
.LFB3749:
	.cfi_startproc
	endbr64
	testl	%esi, %esi
	jle	.L41
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rsi), %eax
	leaq	_ZSt4cout(%rip), %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	8(%rdi,%rax,8), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	8(,%rax,8), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r15, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L37:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L32:
	movq	(%r15), %rax
	movq	%r12, %rdi
	movq	-24(%rax), %rdx
	movq	$3, 8(%r15,%rdx)
	movq	-24(%rax), %rax
	movq	$8, 16(%r15,%rax)
	movq	0(%rbp), %rax
	movsd	(%rax,%rbx), %xmm0
	addq	$8, %rbx
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$2, %edx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	cmpq	%r13, %rbx
	jne	.L32
	movq	(%r15), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.L44
	cmpb	$0, 56(%rbx)
	je	.L34
	movsbl	67(%rbx), %esi
.L35:
	movq	%r12, %rdi
	addq	$8, %rbp
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	cmpq	%rbp, %r14
	jne	.L37
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%rbx), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L35
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L35
.L41:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret
.L44:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3749:
	.size	_Z11printMatrixPPdi, .-_Z11printMatrixPPdi
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.p2align 4
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB4271:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %r9d
	pxor	%xmm0, %xmm0
	movl	$2567483615, %ecx
	movsd	.LC1(%rip), %xmm2
	movq	4992(%rdi), %rdx
	leaq	1816(%rdi), %r8
	leaq	3168(%rdi), %rsi
	movsd	%xmm2, -8(%rsp)
	cmpq	$623, %rdx
	ja	.L46
.L73:
	movq	%rdx, %rax
	addq	$1, %rdx
.L47:
	movq	(%rdi,%rax,8), %rax
	movq	%rdx, 4992(%rdi)
	movq	%rax, %r10
	shrq	$11, %r10
	movl	%r10d, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$7, %r10
	andl	$2636928640, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$15, %r10
	andl	$4022730752, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	shrq	$18, %r10
	xorq	%r10, %rax
	js	.L53
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L54:
	mulsd	-8(%rsp), %xmm1
	flds	.LC4(%rip)
	fmull	-8(%rsp)
	addsd	%xmm1, %xmm0
	fstpl	-8(%rsp)
	cmpl	$1, %r9d
	jne	.L58
	divsd	-8(%rsp), %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L72
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	.cfi_restore_state
	movl	$1, %r9d
	cmpq	$623, %rdx
	jbe	.L73
.L46:
	movq	(%rdi), %rbx
	movq	%rdi, %rax
	movq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L49:
	andq	$-2147483648, %rbx
	movq	%rbx, %r10
	movq	8(%rdx), %rbx
	movq	%rbx, %r11
	andl	$2147483647, %r11d
	orq	%r10, %r11
	movq	%r11, %r10
	shrq	%r10
	xorq	3176(%rdx), %r10
	andl	$1, %r11d
	je	.L48
	xorq	%rcx, %r10
.L48:
	movq	%r10, (%rdx)
	addq	$8, %rdx
	cmpq	%r8, %rdx
	jne	.L49
	movq	1816(%rdi), %r11
	.p2align 4,,10
	.p2align 3
.L51:
	movq	%r11, %rdx
	movq	1824(%rax), %r11
	andq	$-2147483648, %rdx
	movq	%r11, %r10
	andl	$2147483647, %r10d
	orq	%rdx, %r10
	movq	%r10, %rdx
	shrq	%rdx
	xorq	(%rax), %rdx
	andl	$1, %r10d
	je	.L50
	xorq	%rcx, %rdx
.L50:
	movq	%rdx, 1816(%rax)
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.L51
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	testb	$1, %al
	je	.L52
	xorq	%rcx, %rdx
.L52:
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L53:
	movq	%rax, %r10
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%r10
	orq	%rax, %r10
	cvtsi2sdq	%r10, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L72:
	movsd	.LC3(%rip), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4271:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.rodata.str1.1
.LC6:
	.string	"Usage: mm size"
.LC7:
	.string	"Invalid size"
.LC8:
	.string	"Initializing the matrices..."
.LC9:
	.string	"Done."
.LC10:
	.string	"Beginning multiply..."
.LC11:
	.string	"Time "
.LC13:
	.string	" ms"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB14:
	.section	.text.startup,"ax",@progbits
.LHOTB14:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3750:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3750
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$1944, %rsp
	.cfi_def_cfa_offset 10192
	movq	%fs:40, %rax
	movq	%rax, 10120(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L75
	movl	$14, %edx
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$1, %eax
.L74:
	movq	10120(%rsp), %rsi
	xorq	%fs:40, %rsi
	jne	.L96
	addq	$10136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L75:
	.cfi_restore_state
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol@PLT
	movq	%rax, 48(%rsp)
	testl	%eax, %eax
	jle	.L97
.L77:
	leaq	112(%rsp), %rbx
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rbx, %rdi
	movq	%rbx, 104(%rsp)
	call	_ZNSt13random_deviceC1Ev
.LEHE2:
	movq	%rbx, %rdi
.LEHB3:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	leaq	5120(%rsp), %rbp
	movq	%rax, 5120(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L78:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, 0(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L78
	movq	48(%rsp), %rbx
	movq	$624, 10112(%rsp)
	movl	%ebx, %r12d
	imull	%ebx, %r12d
	movslq	%r12d, %r12
	salq	$3, %r12
	movq	%r12, %rdi
	call	_Znam@PLT
	movq	%r12, %rdi
	movq	%rax, 56(%rsp)
	call	_Znam@PLT
	movq	%r12, %rdi
	movq	%rax, 64(%rsp)
	call	_Znam@PLT
	movq	%rax, 72(%rsp)
	movslq	%ebx, %r15
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %r15
	ja	.L79
	leaq	0(,%r15,8), %rbx
	movq	%rbx, %rdi
	movq	%rbx, 32(%rsp)
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, 80(%rsp)
	call	_Znam@PLT
	movq	32(%rsp), %rdi
	movq	%rax, 88(%rsp)
	call	_Znam@PLT
	cmpl	$0, 48(%rsp)
	movq	%rax, 96(%rsp)
	jle	.L85
	movq	56(%rsp), %rax
	movq	88(%rsp), %rsi
	movq	80(%rsp), %r13
	movq	96(%rsp), %r15
	movq	%rax, 16(%rsp)
	movq	64(%rsp), %rax
	movq	%rsi, %r12
	movq	%rax, 8(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rax
	leal	-1(%rax), %r14d
	leaq	0(,%r14,8), %rax
	movq	%rax, (%rsp)
	leaq	8(%rsi,%rax), %rax
	movq	%rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L86:
	movq	16(%rsp), %rax
	xorl	%r14d, %r14d
	movq	%rax, 0(%r13)
	movq	%rax, %rbx
	movq	8(%rsp), %rax
	movq	%rax, (%r12)
	movq	24(%rsp), %rax
	movq	%rax, (%r15)
	movq	%r15, %rax
	movq	%r13, %r15
	movq	%rax, %r13
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L98:
	movq	(%r15), %rbx
	addq	$8, %r14
.L84:
	movq	%rbp, %rdi
	addq	%r14, %rbx
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	pxor	%xmm1, %xmm1
	movq	%rbp, %rdi
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	movq	(%r12), %rbx
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	pxor	%xmm2, %xmm2
	movq	0(%r13), %rax
	addsd	%xmm2, %xmm0
	addq	%r14, %rbx
	movsd	%xmm0, (%rbx)
	movq	$0x000000000, (%rax,%r14)
	cmpq	(%rsp), %r14
	jne	.L98
	movq	%r13, %rax
	movq	%r15, %r13
	addq	$8, %r12
	movq	%rax, %r15
	addq	$8, %r13
	movq	32(%rsp), %rax
	addq	%rax, 16(%rsp)
	addq	%rax, 8(%rsp)
	addq	$8, %r15
	addq	%rax, 24(%rsp)
	cmpq	40(%rsp), %r12
	jne	.L86
.L85:
	movl	$5, %edx
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$21, %edx
	leaq	.LC10(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	96(%rsp), %r13
	movq	88(%rsp), %r14
	movq	80(%rsp), %r15
	movl	48(%rsp), %ecx
	movq	%rax, %rbx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	_Z8multiplyPPdS0_S0_i
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$5, %edx
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$5, %edx
	leaq	.LC11(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	%rbx, %rbp
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbp, %xmm0
	divsd	.LC12(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$3, %edx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE3:
	movq	%r15, %rdi
	call	_ZdaPv@PLT
	movq	%r14, %rdi
	call	_ZdaPv@PLT
	movq	%r13, %rdi
	call	_ZdaPv@PLT
	movq	56(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	64(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	72(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	104(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	xorl	%eax, %eax
	jmp	.L74
.L97:
	movl	$12, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB4:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	movl	$14, %edx
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
.LEHE4:
	jmp	.L77
.L96:
	call	__stack_chk_fail@PLT
.L91:
	endbr64
	jmp	.L92
	.section	.gcc_except_table,"a",@progbits
.LLSDA3750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3750-.LLSDACSB3750
.LLSDACSB3750:
	.uleb128 .LEHB2-.LFB3750
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3750
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L91-.LFB3750
	.uleb128 0
	.uleb128 .LEHB4-.LFB3750
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3750:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3750
	.type	main.cold, @function
main.cold:
.LFSB3750:
.L79:
	.cfi_def_cfa_offset 10192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
.LEHB5:
	call	__cxa_throw_bad_array_new_length@PLT
.LEHE5:
.L89:
	endbr64
.L92:
	movq	104(%rsp), %rdi
	movq	%rax, %rbp
	call	_ZNSt13random_device7_M_finiEv@PLT
	movq	%rbp, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE3750:
	.section	.gcc_except_table
.LLSDAC3750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3750-.LLSDACSBC3750
.LLSDACSBC3750:
	.uleb128 .LEHB5-.LCOLDB14
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L89-.LCOLDB14
	.uleb128 0
	.uleb128 .LEHB6-.LCOLDB14
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC3750:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE14:
	.section	.text.startup
.LHOTE14:
	.p2align 4
	.type	_GLOBAL__sub_I__Z8multiplyPPdS0_S0_i, @function
_GLOBAL__sub_I__Z8multiplyPPdS0_S0_i:
.LFB4343:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4343:
	.size	_GLOBAL__sub_I__Z8multiplyPPdS0_S0_i, .-_GLOBAL__sub_I__Z8multiplyPPdS0_S0_i
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8multiplyPPdS0_S0_i
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	4294967295
	.long	1072693247
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1333788672
	.section	.rodata.cst8
	.align 8
.LC12:
	.long	0
	.long	1093567616
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
