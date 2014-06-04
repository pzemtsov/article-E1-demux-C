	.file	"e1-new.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"e1-new.cpp"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"src_length == NUM_TIMESLOTS * DST_SIZE"
	.section	.text._ZNK6Write45demuxEPKhmPPh,"axG",@progbits,_ZNK6Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write45demuxEPKhmPPh
	.type	_ZNK6Write45demuxEPKhmPPh, @function
_ZNK6Write45demuxEPKhmPPh:
.LFB1023:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L6
	xorl	%edi, %edi
	.p2align 5
.L3:
	movzbl	32(%rsi), %edx
	movzbl	64(%rsi), %r11d
	movzbl	(%rsi), %r10d
	movzbl	96(%rsi), %r9d
	movq	(%rcx,%rdi,8), %rax
	sall	$16, %r11d
	sall	$8, %edx
	orl	%r11d, %edx
	sall	$24, %r9d
	orl	%r10d, %edx
	orl	%r9d, %edx
	movl	%edx, (%rax)
	movzbl	160(%rsi), %r9d
	movzbl	192(%rsi), %r8d
	movzbl	128(%rsi), %r11d
	movzbl	224(%rsi), %r10d
	sall	$8, %r9d
	sall	$16, %r8d
	orl	%r8d, %r9d
	sall	$24, %r10d
	orl	%r11d, %r9d
	orl	%r10d, %r9d
	movl	%r9d, 4(%rax)
	movzbl	288(%rsi), %r10d
	movzbl	320(%rsi), %edx
	movzbl	256(%rsi), %r8d
	movzbl	352(%rsi), %r11d
	sall	$8, %r10d
	sall	$16, %edx
	orl	%edx, %r10d
	sall	$24, %r11d
	orl	%r8d, %r10d
	orl	%r11d, %r10d
	movl	%r10d, 8(%rax)
	movzbl	416(%rsi), %r11d
	movzbl	448(%rsi), %r9d
	movzbl	384(%rsi), %edx
	movzbl	480(%rsi), %r8d
	sall	$8, %r11d
	sall	$16, %r9d
	orl	%r9d, %r11d
	sall	$24, %r8d
	orl	%edx, %r11d
	orl	%r8d, %r11d
	movl	%r11d, 12(%rax)
	movzbl	544(%rsi), %r11d
	movzbl	576(%rsi), %r10d
	movzbl	512(%rsi), %r9d
	movzbl	608(%rsi), %edx
	sall	$8, %r11d
	sall	$16, %r10d
	orl	%r10d, %r11d
	sall	$24, %edx
	orl	%r9d, %r11d
	orl	%edx, %r11d
	movl	%r11d, 16(%rax)
	movzbl	672(%rsi), %edx
	movzbl	704(%rsi), %r8d
	movzbl	640(%rsi), %r10d
	movzbl	736(%rsi), %r9d
	sall	$8, %edx
	sall	$16, %r8d
	orl	%r8d, %edx
	orl	%r10d, %edx
	sall	$24, %r9d
	orl	%r9d, %edx
	movl	%edx, 20(%rax)
	movzbl	800(%rsi), %r9d
	movzbl	832(%rsi), %r11d
	movzbl	768(%rsi), %r8d
	movzbl	864(%rsi), %r10d
	sall	$8, %r9d
	sall	$16, %r11d
	orl	%r11d, %r9d
	sall	$24, %r10d
	orl	%r8d, %r9d
	orl	%r10d, %r9d
	movl	%r9d, 24(%rax)
	movzbl	928(%rsi), %r10d
	movzbl	960(%rsi), %edx
	movzbl	896(%rsi), %r11d
	movzbl	992(%rsi), %r8d
	sall	$8, %r10d
	sall	$16, %edx
	orl	%edx, %r10d
	sall	$24, %r8d
	orl	%r11d, %r10d
	orl	%r8d, %r10d
	movl	%r10d, 28(%rax)
	movzbl	1056(%rsi), %r10d
	movzbl	1088(%rsi), %r9d
	movzbl	1024(%rsi), %edx
	movzbl	1120(%rsi), %r11d
	sall	$8, %r10d
	sall	$16, %r9d
	orl	%r9d, %r10d
	sall	$24, %r11d
	orl	%edx, %r10d
	orl	%r11d, %r10d
	movl	%r10d, 32(%rax)
	movzbl	1184(%rsi), %r11d
	movzbl	1216(%rsi), %r8d
	movzbl	1152(%rsi), %r9d
	movzbl	1248(%rsi), %edx
	sall	$8, %r11d
	sall	$16, %r8d
	orl	%r8d, %r11d
	sall	$24, %edx
	orl	%r9d, %r11d
	orl	%edx, %r11d
	movl	%r11d, 36(%rax)
	movzbl	1312(%rsi), %edx
	movzbl	1344(%rsi), %r10d
	movzbl	1280(%rsi), %r8d
	movzbl	1376(%rsi), %r9d
	sall	$8, %edx
	sall	$16, %r10d
	orl	%r10d, %edx
	sall	$24, %r9d
	orl	%r8d, %edx
	orl	%r9d, %edx
	movl	%edx, 40(%rax)
	movzbl	1440(%rsi), %r9d
	movzbl	1472(%rsi), %r11d
	movzbl	1408(%rsi), %r10d
	movzbl	1504(%rsi), %r8d
	sall	$8, %r9d
	addq	$1, %rdi
	sall	$16, %r11d
	orl	%r11d, %r9d
	sall	$24, %r8d
	orl	%r10d, %r9d
	orl	%r8d, %r9d
	movl	%r9d, 44(%rax)
	movzbl	1568(%rsi), %r9d
	movzbl	1600(%rsi), %edx
	movzbl	1536(%rsi), %r11d
	movzbl	1632(%rsi), %r10d
	sall	$8, %r9d
	sall	$16, %edx
	orl	%edx, %r9d
	sall	$24, %r10d
	orl	%r11d, %r9d
	orl	%r10d, %r9d
	movl	%r9d, 48(%rax)
	movzbl	1696(%rsi), %r10d
	movzbl	1728(%rsi), %r8d
	movzbl	1664(%rsi), %edx
	movzbl	1760(%rsi), %r11d
	sall	$8, %r10d
	sall	$16, %r8d
	orl	%r8d, %r10d
	sall	$24, %r11d
	orl	%edx, %r10d
	orl	%r11d, %r10d
	movl	%r10d, 52(%rax)
	movzbl	1824(%rsi), %r11d
	movzbl	1856(%rsi), %r9d
	movzbl	1792(%rsi), %r8d
	movzbl	1888(%rsi), %edx
	sall	$8, %r11d
	sall	$16, %r9d
	orl	%r9d, %r11d
	sall	$24, %edx
	orl	%r8d, %r11d
	orl	%edx, %r11d
	movl	%r11d, 56(%rax)
	movzbl	1952(%rsi), %edx
	movzbl	1984(%rsi), %r10d
	movzbl	1920(%rsi), %r9d
	movzbl	2016(%rsi), %r8d
	addq	$1, %rsi
	sall	$8, %edx
	sall	$16, %r10d
	orl	%r10d, %edx
	sall	$24, %r8d
	orl	%r9d, %edx
	orl	%r8d, %edx
	cmpq	$32, %rdi
	movl	%edx, 60(%rax)
	jne	.L3
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movl	$_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$63, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1023:
	.size	_ZNK6Write45demuxEPKhmPPh, .-_ZNK6Write45demuxEPKhmPPh
	.section	.text._ZNK6Write85demuxEPKhmPPh,"axG",@progbits,_ZNK6Write85demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write85demuxEPKhmPPh
	.type	_ZNK6Write85demuxEPKhmPPh, @function
_ZNK6Write85demuxEPKhmPPh:
.LFB1025:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L11
	xorl	%r8d, %r8d
	.p2align 5
.L9:
	movzbl	160(%rsi), %eax
	movzbl	128(%rsi), %r9d
	movzbl	192(%rsi), %r11d
	movzbl	224(%rsi), %r10d
	movzbl	64(%rsi), %edi
	movq	(%rcx,%r8,8), %rdx
	salq	$32, %r9
	salq	$40, %rax
	orq	%r9, %rax
	salq	$48, %r11
	salq	$56, %r10
	orq	%r11, %rax
	movzbl	(%rsi), %r9d
	movzbl	96(%rsi), %r11d
	orq	%r10, %rax
	movzbl	32(%rsi), %r10d
	sall	$16, %edi
	sall	$24, %r11d
	sall	$8, %r10d
	orl	%edi, %r10d
	orl	%r9d, %r10d
	orl	%r11d, %r10d
	orq	%r10, %rax
	movq	%rax, (%rdx)
	movzbl	416(%rsi), %eax
	movzbl	384(%rsi), %edi
	movzbl	448(%rsi), %r9d
	movzbl	480(%rsi), %r11d
	movzbl	320(%rsi), %r10d
	salq	$40, %rax
	salq	$32, %rdi
	salq	$48, %r9
	orq	%rdi, %rax
	salq	$56, %r11
	movzbl	256(%rsi), %edi
	orq	%r9, %rax
	movzbl	352(%rsi), %r9d
	sall	$16, %r10d
	orq	%r11, %rax
	movzbl	288(%rsi), %r11d
	sall	$24, %r9d
	sall	$8, %r11d
	orl	%r10d, %r11d
	orl	%edi, %r11d
	orl	%r9d, %r11d
	orq	%r11, %rax
	movq	%rax, 8(%rdx)
	movzbl	672(%rsi), %eax
	movzbl	640(%rsi), %r10d
	movzbl	704(%rsi), %edi
	movzbl	736(%rsi), %r11d
	movzbl	576(%rsi), %r9d
	salq	$40, %rax
	salq	$32, %r10
	salq	$48, %rdi
	orq	%r10, %rax
	movzbl	512(%rsi), %r10d
	orq	%rdi, %rax
	salq	$56, %r11
	movzbl	608(%rsi), %edi
	orq	%r11, %rax
	movzbl	544(%rsi), %r11d
	sall	$16, %r9d
	sall	$24, %edi
	sall	$8, %r11d
	orl	%r9d, %r11d
	orl	%r10d, %r11d
	orl	%edi, %r11d
	orq	%r11, %rax
	movq	%rax, 16(%rdx)
	movzbl	928(%rsi), %eax
	movzbl	896(%rsi), %r9d
	movzbl	960(%rsi), %r10d
	movzbl	992(%rsi), %edi
	movzbl	832(%rsi), %r11d
	salq	$40, %rax
	salq	$32, %r9
	salq	$48, %r10
	orq	%r9, %rax
	salq	$56, %rdi
	movzbl	768(%rsi), %r9d
	orq	%r10, %rax
	movzbl	864(%rsi), %r10d
	sall	$16, %r11d
	orq	%rdi, %rax
	movzbl	800(%rsi), %edi
	sall	$24, %r10d
	sall	$8, %edi
	orl	%r11d, %edi
	orl	%r9d, %edi
	orl	%r10d, %edi
	orq	%rdi, %rax
	movq	%rax, 24(%rdx)
	movzbl	1184(%rsi), %eax
	movzbl	1152(%rsi), %r11d
	movzbl	1216(%rsi), %r9d
	movzbl	1248(%rsi), %r10d
	movzbl	1088(%rsi), %edi
	salq	$40, %rax
	salq	$32, %r11
	salq	$48, %r9
	orq	%r11, %rax
	salq	$56, %r10
	movzbl	1024(%rsi), %r11d
	orq	%r9, %rax
	movzbl	1120(%rsi), %r9d
	sall	$16, %edi
	orq	%r10, %rax
	movzbl	1056(%rsi), %r10d
	sall	$8, %r10d
	orl	%edi, %r10d
	orl	%r11d, %r10d
	sall	$24, %r9d
	orl	%r9d, %r10d
	orq	%r10, %rax
	movq	%rax, 32(%rdx)
	movzbl	1440(%rsi), %eax
	movzbl	1408(%rsi), %edi
	movzbl	1472(%rsi), %r11d
	movzbl	1504(%rsi), %r10d
	movzbl	1344(%rsi), %r9d
	salq	$40, %rax
	salq	$32, %rdi
	salq	$48, %r11
	orq	%rdi, %rax
	salq	$56, %r10
	movzbl	1280(%rsi), %edi
	orq	%r11, %rax
	movzbl	1376(%rsi), %r11d
	sall	$16, %r9d
	orq	%r10, %rax
	movzbl	1312(%rsi), %r10d
	sall	$24, %r11d
	sall	$8, %r10d
	orl	%r9d, %r10d
	orl	%edi, %r10d
	orl	%r11d, %r10d
	orq	%r10, %rax
	movq	%rax, 40(%rdx)
	movzbl	1696(%rsi), %eax
	movzbl	1664(%rsi), %r9d
	movzbl	1728(%rsi), %edi
	movzbl	1760(%rsi), %r11d
	movzbl	1600(%rsi), %r10d
	salq	$40, %rax
	salq	$32, %r9
	salq	$48, %rdi
	orq	%r9, %rax
	salq	$56, %r11
	movzbl	1536(%rsi), %r9d
	orq	%rdi, %rax
	movzbl	1632(%rsi), %edi
	sall	$16, %r10d
	orq	%r11, %rax
	movzbl	1568(%rsi), %r11d
	sall	$24, %edi
	sall	$8, %r11d
	orl	%r10d, %r11d
	orl	%r9d, %r11d
	orl	%edi, %r11d
	orq	%r11, %rax
	movq	%rax, 48(%rdx)
	movzbl	1952(%rsi), %eax
	movzbl	1920(%rsi), %r10d
	movzbl	1984(%rsi), %r9d
	movzbl	2016(%rsi), %edi
	movzbl	1856(%rsi), %r11d
	salq	$40, %rax
	salq	$32, %r10
	salq	$48, %r9
	addq	$1, %r8
	orq	%r10, %rax
	salq	$56, %rdi
	movzbl	1792(%rsi), %r10d
	orq	%r9, %rax
	movzbl	1888(%rsi), %r9d
	sall	$16, %r11d
	orq	%rdi, %rax
	movzbl	1824(%rsi), %edi
	addq	$1, %rsi
	sall	$24, %r9d
	sall	$8, %edi
	orl	%r11d, %edi
	orl	%r10d, %edi
	orl	%r9d, %edi
	orq	%rdi, %rax
	cmpq	$32, %r8
	movq	%rax, 56(%rdx)
	jne	.L9
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	movl	$_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$93, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1025:
	.size	_ZNK6Write85demuxEPKhmPPh, .-_ZNK6Write85demuxEPKhmPPh
	.section	.text._ZNK12Read4_Write45demuxEPKhmPPh,"axG",@progbits,_ZNK12Read4_Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK12Read4_Write45demuxEPKhmPPh
	.type	_ZNK12Read4_Write45demuxEPKhmPPh, @function
_ZNK12Read4_Write45demuxEPKhmPPh:
.LFB1030:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	$2048, %rdx
	jne	.L18
	xorl	%r14d, %r14d
	.p2align 5
.L13:
	movq	0(%r13,%r14,8), %r12
	movq	8(%r13,%r14,8), %rbp
	leaq	(%rsi,%r14), %r8
	movq	16(%r13,%r14,8), %r11
	movq	24(%r13,%r14,8), %r10
	xorl	%edi, %edi
	.p2align 5
.L14:
	movl	32(%r8), %eax
	movl	64(%r8), %r9d
	movl	(%r8), %ecx
	movl	96(%r8), %ebx
	subq	$-128, %r8
	movzbl	%al, %edx
	movzbl	%r9b, %r15d
	movl	%eax, 12(%rsp)
	sall	$16, %r15d
	sall	$8, %edx
	orl	%r15d, %edx
	movzbl	%cl, %r15d
	orl	%r15d, %edx
	movl	%ebx, %r15d
	sall	$24, %r15d
	orl	%r15d, %edx
	movl	%edx, (%r12,%rdi)
	movl	%eax, %edx
	movq	%r9, %rax
	movzbl	%ah, %eax
	andl	$65280, %edx
	movl	%eax, %r15d
	movzbl	%ch, %eax
	sall	$16, %r15d
	orl	%r15d, %edx
	orl	%eax, %edx
	movzbl	%bh, %eax
	movl	%eax, %r15d
	movl	%r9d, %eax
	shrl	$24, %r9d
	sall	$24, %r15d
	andl	$16711680, %eax
	sall	$16, %r9d
	orl	%r15d, %edx
	movl	%ecx, %r15d
	shrl	$24, %ecx
	movl	%edx, 0(%rbp,%rdi)
	movl	12(%rsp), %edx
	shrl	$16, %r15d
	shrl	$8, %edx
	andl	$65280, %edx
	orl	%eax, %edx
	movzbl	%r15b, %eax
	movl	%ebx, %r15d
	orl	%eax, %edx
	movl	12(%rsp), %eax
	shrl	$16, %r15d
	sall	$24, %r15d
	andl	$-16777216, %ebx
	orl	%r15d, %edx
	shrl	$24, %eax
	movl	%edx, (%r11,%rdi)
	sall	$8, %eax
	orl	%r9d, %eax
	orl	%ecx, %eax
	orl	%ebx, %eax
	movl	%eax, (%r10,%rdi)
	addq	$4, %rdi
	cmpq	$64, %rdi
	jne	.L14
	addq	$4, %r14
	cmpq	$32, %r14
	jne	.L13
	addq	$24, %rsp
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
.L18:
	.cfi_restore_state
	movl	$_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$138, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1030:
	.size	_ZNK12Read4_Write45demuxEPKhmPPh, .-_ZNK12Read4_Write45demuxEPKhmPPh
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"src_length % NUM_TIMESLOTS == 0"
	.section	.text._ZNK9Reference5demuxEPKhmPPh,"axG",@progbits,_ZNK9Reference5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK9Reference5demuxEPKhmPPh
	.type	_ZNK9Reference5demuxEPKhmPPh, @function
_ZNK9Reference5demuxEPKhmPPh:
.LFB1021:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testb	$31, %dl
	jne	.L20
	testq	%rdx, %rdx
	je	.L19
	movzbl	(%rsi), %edi
	movq	(%rcx), %rax
	leaq	-1(%rdx), %r9
	xorl	%r8d, %r8d
	movb	%dil, (%rax)
	xorl	%edi, %edi
	andl	$7, %r9d
	movl	$1, %eax
	je	.L76
	movzbl	(%rsi,%rax), %r10d
	movq	8(%rcx), %r11
	cmpq	$1, %r9
	movl	$1, %r8d
	movl	$2, %eax
	movb	%r10b, (%r11)
	je	.L76
	cmpq	$2, %r9
	je	.L65
	cmpq	$3, %r9
	je	.L66
	cmpq	$4, %r9
	je	.L67
	cmpq	$5, %r9
	je	.L68
	cmpq	$6, %r9
	je	.L69
	movzbl	1(%rsi,%r8), %r11d
	movq	(%rcx,%rax,8), %r9
	addq	$1, %r8
	addq	$1, %rax
	movb	%r11b, (%r9,%rdi)
.L69:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L81
.L68:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r9d
	cmpq	$32, %rax
	movb	%r9b, (%r11,%rdi)
	je	.L82
.L67:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L83
.L66:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r11d
	cmpq	$32, %rax
	movb	%r11b, (%r9,%rdi)
	je	.L84
.L65:
	addq	$1, %r8
	movzbl	(%rsi,%r8), %r10d
.L80:
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L85
.L76:
	leaq	1(%r8), %r9
	cmpq	%rdx, %r9
	je	.L19
	movzbl	1(%rsi,%r8), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L86
.L62:
	movzbl	1(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L87
.L70:
	movzbl	2(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L88
.L71:
	movzbl	3(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L89
.L72:
	movzbl	4(%rsi,%r9), %r11d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r11b, (%r8,%rdi)
	je	.L90
.L73:
	movzbl	5(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L91
.L74:
	movzbl	6(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L92
.L75:
	leaq	7(%r9), %r8
	movzbl	7(%rsi,%r9), %r10d
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L19:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L86:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L92:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L91:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L90:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L73
	.p2align 4,,10
	.p2align 3
.L89:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L88:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L87:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L84:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L83:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L82:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L81:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L68
.L20:
	movl	$_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$36, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1021:
	.size	_ZNK9Reference5demuxEPKhmPPh, .-_ZNK9Reference5demuxEPKhmPPh
	.text
	.p2align 5,,31
	.globl	_Z8generatev
	.type	_Z8generatev, @function
_Z8generatev:
.LFB1031:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2048, %edi
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_Znam
	xorl	%edi, %edi
	movq	%rax, %rbx
	call	srand
	.p2align 5
.L94:
	call	rand
	movl	%eax, %r11d
	sarl	$31, %r11d
	shrl	$24, %r11d
	addl	%r11d, %eax
	andl	$255, %eax
	subl	%r11d, %eax
	movb	%al, (%rbx,%rbp)
	call	rand
	movl	%eax, %r10d
	sarl	$31, %r10d
	shrl	$24, %r10d
	addl	%r10d, %eax
	andl	$255, %eax
	subl	%r10d, %eax
	movb	%al, 1(%rbx,%rbp)
	call	rand
	movl	%eax, %r9d
	sarl	$31, %r9d
	shrl	$24, %r9d
	addl	%r9d, %eax
	andl	$255, %eax
	subl	%r9d, %eax
	movb	%al, 2(%rbx,%rbp)
	call	rand
	movl	%eax, %r8d
	sarl	$31, %r8d
	shrl	$24, %r8d
	addl	%r8d, %eax
	andl	$255, %eax
	subl	%r8d, %eax
	movb	%al, 3(%rbx,%rbp)
	call	rand
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$24, %edi
	addl	%edi, %eax
	andl	$255, %eax
	subl	%edi, %eax
	movb	%al, 4(%rbx,%rbp)
	call	rand
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %eax
	andl	$255, %eax
	subl	%esi, %eax
	movb	%al, 5(%rbx,%rbp)
	call	rand
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	addl	%ecx, %eax
	andl	$255, %eax
	subl	%ecx, %eax
	movb	%al, 6(%rbx,%rbp)
	call	rand
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%edx, %eax
	andl	$255, %eax
	subl	%edx, %eax
	movb	%al, 7(%rbx,%rbp)
	addq	$8, %rbp
	cmpq	$2048, %rbp
	jne	.L94
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1031:
	.size	_Z8generatev, .-_Z8generatev
	.p2align 5,,31
	.globl	_Z12allocate_dstv
	.type	_Z12allocate_dstv, @function
_Z12allocate_dstv:
.LFB1032:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$256, %edi
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	call	_Znam
	movq	%rax, %rbp
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L104:
	testb	$2, %dl
	jne	.L121
.L105:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L122
.L106:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L107
	movl	$0, (%rdi)
	addq	$4, %rdi
.L107:
	testb	$2, %sil
	je	.L108
	movw	$0, (%rdi)
	addq	$2, %rdi
.L108:
	andl	$1, %esi
	je	.L109
	movb	$0, (%rdi)
.L109:
	movl	$64, %edi
	addq	$1, %rbx
	call	_Znam
	testb	$1, %al
	movq	%rax, 0(%rbp,%rbx,8)
	movq	%rax, %rdx
	movl	$64, %esi
	jne	.L123
.L112:
	testb	$2, %dl
	jne	.L124
.L113:
	testb	$4, %dl
	jne	.L125
.L114:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L115
	movl	$0, (%rdi)
	addq	$4, %rdi
.L115:
	testb	$2, %sil
	je	.L116
	movw	$0, (%rdi)
	addq	$2, %rdi
.L116:
	andl	$1, %esi
	je	.L117
	movb	$0, (%rdi)
.L117:
	addq	$1, %rbx
	cmpq	$32, %rbx
	je	.L126
.L110:
	movl	$64, %edi
	call	_Znam
	testb	$1, %al
	movq	%rax, 0(%rbp,%rbx,8)
	movq	%rax, %rdx
	movl	$64, %esi
	je	.L104
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L105
	.p2align 5
.L121:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L106
	.p2align 5
.L122:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L125:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L124:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L123:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L126:
	popq	%rbx
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1032:
	.size	_Z12allocate_dstv, .-_Z12allocate_dstv
	.p2align 5,,31
	.globl	_Z10delete_dstPPh
	.type	_Z10delete_dstPPh, @function
_Z10delete_dstPPh:
.LFB1033:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L128:
	movq	0(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	8(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	16(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	24(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	32(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	40(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	48(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	56(%rbp,%rbx,8), %rdi
	addq	$8, %rbx
	call	_ZdlPv
	cmpq	$32, %rbx
	jne	.L128
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.cfi_endproc
.LFE1033:
	.size	_Z10delete_dstPPh, .-_Z10delete_dstPPh
	.section	.rodata.str1.1
.LC3:
	.string	"Results not equal: line "
.LC4:
	.string	"\n"
	.text
	.p2align 5,,31
	.globl	_Z5checkRK5Demux
	.type	_Z5checkRK5Demux, @function
_Z5checkRK5Demux:
.LFB1034:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	movl	$2048, %edi
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	_Znam
	xorl	%edi, %edi
	movq	%rax, %rbx
	call	srand
	.p2align 5
.L138:
	call	rand
	movl	%eax, %r11d
	sarl	$31, %r11d
	shrl	$24, %r11d
	addl	%r11d, %eax
	andl	$255, %eax
	subl	%r11d, %eax
	movb	%al, (%rbx,%rbp)
	call	rand
	movl	%eax, %r10d
	sarl	$31, %r10d
	shrl	$24, %r10d
	addl	%r10d, %eax
	andl	$255, %eax
	subl	%r10d, %eax
	movb	%al, 1(%rbx,%rbp)
	call	rand
	movl	%eax, %r9d
	sarl	$31, %r9d
	shrl	$24, %r9d
	addl	%r9d, %eax
	andl	$255, %eax
	subl	%r9d, %eax
	movb	%al, 2(%rbx,%rbp)
	call	rand
	movl	%eax, %r8d
	sarl	$31, %r8d
	shrl	$24, %r8d
	addl	%r8d, %eax
	andl	$255, %eax
	subl	%r8d, %eax
	movb	%al, 3(%rbx,%rbp)
	call	rand
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$24, %edi
	addl	%edi, %eax
	andl	$255, %eax
	subl	%edi, %eax
	movb	%al, 4(%rbx,%rbp)
	call	rand
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$24, %esi
	addl	%esi, %eax
	andl	$255, %eax
	subl	%esi, %eax
	movb	%al, 5(%rbx,%rbp)
	call	rand
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	addl	%ecx, %eax
	andl	$255, %eax
	subl	%ecx, %eax
	movb	%al, 6(%rbx,%rbp)
	call	rand
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%edx, %eax
	andl	$255, %eax
	subl	%edx, %eax
	movb	%al, 7(%rbx,%rbp)
	addq	$8, %rbp
	cmpq	$2048, %rbp
	jne	.L138
	movl	$256, %edi
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	call	_Znam
	movq	%rax, %rbp
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L139:
	testb	$2, %dl
	jne	.L257
.L140:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L258
.L141:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r14, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L142
	movl	$0, (%rdi)
	addq	$4, %rdi
.L142:
	testb	$2, %sil
	je	.L143
	movw	$0, (%rdi)
	addq	$2, %rdi
.L143:
	andl	$1, %esi
	je	.L144
	movb	$0, (%rdi)
.L144:
	movl	$64, %edi
	addq	$1, %r12
	call	_Znam
	testb	$1, %al
	movq	%rax, 0(%rbp,%r12,8)
	movq	%rax, %rdx
	movl	$64, %esi
	jne	.L259
.L225:
	testb	$2, %dl
	jne	.L260
.L226:
	testb	$4, %dl
	jne	.L261
.L227:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r14, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L228
	movl	$0, (%rdi)
	addq	$4, %rdi
.L228:
	testb	$2, %sil
	je	.L229
	movw	$0, (%rdi)
	addq	$2, %rdi
.L229:
	andl	$1, %esi
	je	.L230
	movb	$0, (%rdi)
.L230:
	addq	$1, %r12
	cmpq	$32, %r12
	je	.L262
.L145:
	movl	$64, %edi
	call	_Znam
	testb	$1, %al
	movq	%rax, 0(%rbp,%r12,8)
	movq	%rax, %rdx
	movl	$64, %esi
	je	.L139
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L140
	.p2align 5
.L257:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L141
	.p2align 5
.L258:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L261:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L260:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L259:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L262:
	movl	$256, %edi
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	call	_Znam
	movq	%rax, %r12
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L146:
	testb	$2, %dl
	jne	.L263
.L147:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L264
.L148:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r14, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L149
	movl	$0, (%rdi)
	addq	$4, %rdi
.L149:
	testb	$2, %sil
	je	.L150
	movw	$0, (%rdi)
	addq	$2, %rdi
.L150:
	andl	$1, %esi
	je	.L151
	movb	$0, (%rdi)
.L151:
	movl	$64, %edi
	addq	$1, %r15
	call	_Znam
	testb	$1, %al
	movq	%rax, (%r12,%r15,8)
	movq	%rax, %rdx
	movl	$64, %esi
	jne	.L265
.L218:
	testb	$2, %dl
	jne	.L266
.L219:
	testb	$4, %dl
	jne	.L267
.L220:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r14, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L221
	movl	$0, (%rdi)
	addq	$4, %rdi
.L221:
	testb	$2, %sil
	je	.L222
	movw	$0, (%rdi)
	addq	$2, %rdi
.L222:
	andl	$1, %esi
	je	.L223
	movb	$0, (%rdi)
.L223:
	addq	$1, %r15
	cmpq	$32, %r15
	je	.L268
.L152:
	movl	$64, %edi
	call	_Znam
	testb	$1, %al
	movq	%rax, (%r12,%r15,8)
	movq	%rax, %rdx
	movl	$64, %esi
	je	.L146
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L147
	.p2align 5
.L263:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L148
	.p2align 5
.L264:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L267:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L220
	.p2align 4,,10
	.p2align 3
.L266:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L219
	.p2align 4,,10
	.p2align 3
.L265:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L218
	.p2align 4,,10
	.p2align 3
.L268:
	movzbl	(%rbx), %edx
	movq	0(%rbp), %rsi
	xorl	%eax, %eax
	movl	$2, %ecx
	movb	%dl, (%rsi)
	movzbl	1(%rbx), %r15d
	movl	$1, %esi
	movq	8(%rbp), %r14
	movb	%r15b, (%r14)
.L250:
	leaq	1(%rsi), %rdx
	cmpq	$2048, %rdx
	je	.L269
.L155:
	movzbl	1(%rbx,%rsi), %edi
	movq	0(%rbp,%rcx,8), %r8
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r8,%rax)
	je	.L270
.L240:
	movzbl	1(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L271
.L241:
	movzbl	2(%rbx,%rdx), %r15d
	movq	0(%rbp,%rcx,8), %r14
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r15b, (%r14,%rax)
	je	.L272
.L242:
	movzbl	3(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L273
.L243:
	movzbl	4(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L274
.L244:
	movzbl	5(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L275
.L245:
	movzbl	6(%rbx,%rdx), %r15d
	movq	0(%rbp,%rcx,8), %r14
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r15b, (%r14,%rax)
	je	.L276
.L246:
	movzbl	7(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L277
.L247:
	movzbl	8(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L278
.L248:
	movzbl	9(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L279
.L249:
	movzbl	10(%rbx,%rdx), %r14d
	leaq	10(%rdx), %rsi
	movq	0(%rbp,%rcx,8), %rdx
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r14b, (%rdx,%rax)
	jne	.L250
	leaq	1(%rsi), %rdx
	addq	$1, %rax
	xorb	%cl, %cl
	cmpq	$2048, %rdx
	jne	.L155
.L269:
	movq	0(%r13), %r9
	movq	%r13, %rdi
	xorl	%r13d, %r13d
	movq	%r12, %rcx
	movq	%rbx, %rsi
	call	*(%r9)
.L157:
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	movl	$64, %edx
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	1(%r13), %r14
	movl	$64, %edx
	movq	(%r12,%r14,8), %rsi
	movq	0(%rbp,%r14,8), %rdi
	movq	%r14, %r13
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	addq	$1, %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	2(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	3(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	4(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	5(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	6(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L253
	leaq	7(%r14), %r13
	cmpq	$32, %r13
	jne	.L157
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	_ZdlPv
.L158:
	movq	0(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	8(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	16(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	24(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	32(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	40(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	48(%rbp,%rbx,8), %rdi
	call	_ZdlPv
	movq	56(%rbp,%rbx,8), %rdi
	addq	$8, %rbx
	call	_ZdlPv
	cmpq	$32, %rbx
	jne	.L158
	movq	%rbp, %rdi
	xorb	%bl, %bl
	call	_ZdlPv
.L159:
	movq	(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	8(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	16(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	24(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	32(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	40(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	48(%r12,%rbx,8), %rdi
	call	_ZdlPv
	movq	56(%r12,%rbx,8), %rdi
	addq	$8, %rbx
	call	_ZdlPv
	cmpq	$32, %rbx
	jne	.L159
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rdi
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
	jmp	_ZdlPv
	.p2align 4,,10
	.p2align 3
.L279:
	.cfi_restore_state
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L278:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L277:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L276:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L275:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L274:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L273:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L243
	.p2align 4,,10
	.p2align 3
.L272:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L271:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L270:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L240
.L253:
	movl	$24, %edx
	movl	$.LC3, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$1, %edx
	movq	%rax, %rdi
	movl	$.LC4, %esi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE1034:
	.size	_Z5checkRK5Demux, .-_Z5checkRK5Demux
	.section	.rodata.str1.1
.LC7:
	.string	": "
	.text
	.p2align 5,,31
	.globl	_Z7measureRK5Demux
	.type	_Z7measureRK5Demux, @function
_Z7measureRK5Demux:
.LFB1041:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	call	_Z5checkRK5Demux
	xorl	%edi, %edi
	movq	%rsp, %rsi
	call	clock_gettime
	cvtsi2sdq	8(%rsp), %xmm1
	movq	(%rsp), %rdx
	mulsd	.LC5(%rip), %xmm1
	imulq	$1000, %rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	.LC6(%rip), %xmm0
	jae	.L281
	cvttsd2siq	%xmm0, %rbp
.L282:
	movl	$1000000, %r12d
	.p2align 5
.L283:
	movq	(%rbx), %r10
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r10)
	movq	(%rbx), %r9
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r9)
	movq	(%rbx), %r8
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r8)
	movq	(%rbx), %rax
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%rax)
	movq	(%rbx), %r11
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r11)
	movq	(%rbx), %r10
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r10)
	movq	(%rbx), %r9
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r9)
	movq	(%rbx), %r8
	movq	dst(%rip), %rcx
	movl	$2048, %edx
	movq	src(%rip), %rsi
	movq	%rbx, %rdi
	call	*(%r8)
	subl	$8, %r12d
	jne	.L283
	xorl	%edi, %edi
	movq	%rsp, %rsi
	call	clock_gettime
	cvtsi2sdq	8(%rsp), %xmm2
	movq	(%rsp), %rdi
	mulsd	.LC5(%rip), %xmm2
	imulq	$1000, %rdi, %rsi
	cvtsi2sdq	%rsi, %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	.LC6(%rip), %xmm0
	jae	.L284
	cvttsd2siq	%xmm0, %rax
.L285:
	movq	(%rbx), %rcx
	subq	%rbp, %rax
	movq	%rax, %rbp
	movq	-8(%rcx), %rbx
	movq	8(%rbx), %rdx
	xorl	%ebx, %ebx
	cmpb	$42, (%rdx)
	sete	%bl
	addq	%rdx, %rbx
	je	.L300
	movq	%rbx, %rdi
	call	strlen
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L288:
	movl	$2, %edx
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rbp
	movq	240(%rbx,%rbp), %rbp
	testq	%rbp, %rbp
	je	.L301
	cmpb	$0, 56(%rbp)
	je	.L290
	movzbl	67(%rbp), %eax
.L291:
	movq	%rbx, %rdi
	movsbl	%al, %esi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L281:
	.cfi_restore_state
	subsd	.LC6(%rip), %xmm0
	movabsq	$-9223372036854775808, %rcx
	cvttsd2siq	%xmm0, %rbp
	xorq	%rcx, %rbp
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L284:
	subsd	.LC6(%rip), %xmm0
	movabsq	$-9223372036854775808, %r12
	cvttsd2siq	%xmm0, %rax
	xorq	%r12, %rax
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L290:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %r12
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%r12)
	jmp	.L291
.L300:
	movq	_ZSt4cout(%rip), %r11
	movq	-24(%r11), %rdi
	addq	$_ZSt4cout, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L288
.L301:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE1041:
	.size	_Z7measureRK5Demux, .-_Z7measureRK5Demux
	.section	.text.startup,"ax",@progbits
	.p2align 5,,31
	.globl	main
	.type	main, @function
main:
.LFB1042:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	call	_Z8generatev
	movq	%rax, src(%rip)
	call	_Z12allocate_dstv
	movq	%rsp, %rdi
	movq	%rax, dst(%rip)
	movq	$_ZTV9Reference+16, (%rsp)
	call	_Z7measureRK5Demux
	leaq	16(%rsp), %rdi
	movq	$_ZTV6Write4+16, 16(%rsp)
	call	_Z7measureRK5Demux
	leaq	32(%rsp), %rdi
	movq	$_ZTV6Write8+16, 32(%rsp)
	call	_Z7measureRK5Demux
	leaq	48(%rsp), %rdi
	movq	$_ZTV12Read4_Write4+16, 48(%rsp)
	call	_Z7measureRK5Demux
	xorl	%eax, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1042:
	.size	main, .-main
	.p2align 5,,31
	.type	_GLOBAL__sub_I__Z8generatev, @function
_GLOBAL__sub_I__Z8generatev:
.LFB1062:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE1062:
	.size	_GLOBAL__sub_I__Z8generatev, .-_GLOBAL__sub_I__Z8generatev
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I__Z8generatev
	.globl	dst
	.bss
	.align 8
	.type	dst, @object
	.size	dst, 8
dst:
	.zero	8
	.globl	src
	.align 8
	.type	src, @object
	.size	src, 8
src:
	.zero	8
	.weak	_ZTV9Reference
	.section	.rodata._ZTV9Reference,"aG",@progbits,_ZTV9Reference,comdat
	.align 16
	.type	_ZTV9Reference, @object
	.size	_ZTV9Reference, 24
_ZTV9Reference:
	.quad	0
	.quad	_ZTI9Reference
	.quad	_ZNK9Reference5demuxEPKhmPPh
	.section	.rodata
	.align 32
	.type	_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 65
_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Reference::demux(const byte*, size_t, byte**) const"
	.weak	_ZTV6Write4
	.section	.rodata._ZTV6Write4,"aG",@progbits,_ZTV6Write4,comdat
	.align 16
	.type	_ZTV6Write4, @object
	.size	_ZTV6Write4, 24
_ZTV6Write4:
	.quad	0
	.quad	_ZTI6Write4
	.quad	_ZNK6Write45demuxEPKhmPPh
	.weak	_ZTV6Write8
	.section	.rodata._ZTV6Write8,"aG",@progbits,_ZTV6Write8,comdat
	.align 16
	.type	_ZTV6Write8, @object
	.size	_ZTV6Write8, 24
_ZTV6Write8:
	.quad	0
	.quad	_ZTI6Write8
	.quad	_ZNK6Write85demuxEPKhmPPh
	.weak	_ZTV12Read4_Write4
	.section	.rodata._ZTV12Read4_Write4,"aG",@progbits,_ZTV12Read4_Write4,comdat
	.align 16
	.type	_ZTV12Read4_Write4, @object
	.size	_ZTV12Read4_Write4, 24
_ZTV12Read4_Write4:
	.quad	0
	.quad	_ZTI12Read4_Write4
	.quad	_ZNK12Read4_Write45demuxEPKhmPPh
	.section	.rodata
	.align 32
	.type	_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, 68
_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write4::demux(const byte*, size_t, byte**) const"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 32
	.type	_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__, 62
_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Write8::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, 62
_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Write4::demux(const byte*, size_t, byte**) const"
	.weak	_ZTI9Reference
	.section	.rodata._ZTI9Reference,"aG",@progbits,_ZTI9Reference,comdat
	.align 16
	.type	_ZTI9Reference, @object
	.size	_ZTI9Reference, 24
_ZTI9Reference:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS9Reference
	.quad	_ZTI5Demux
	.weak	_ZTI6Write4
	.section	.rodata._ZTI6Write4,"aG",@progbits,_ZTI6Write4,comdat
	.align 16
	.type	_ZTI6Write4, @object
	.size	_ZTI6Write4, 24
_ZTI6Write4:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Write4
	.quad	_ZTI5Demux
	.weak	_ZTI6Write8
	.section	.rodata._ZTI6Write8,"aG",@progbits,_ZTI6Write8,comdat
	.align 16
	.type	_ZTI6Write8, @object
	.size	_ZTI6Write8, 24
_ZTI6Write8:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Write8
	.quad	_ZTI5Demux
	.weak	_ZTI12Read4_Write4
	.section	.rodata._ZTI12Read4_Write4,"aG",@progbits,_ZTI12Read4_Write4,comdat
	.align 16
	.type	_ZTI12Read4_Write4, @object
	.size	_ZTI12Read4_Write4, 24
_ZTI12Read4_Write4:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS12Read4_Write4
	.quad	_ZTI5Demux
	.weak	_ZTS9Reference
	.section	.rodata._ZTS9Reference,"aG",@progbits,_ZTS9Reference,comdat
	.type	_ZTS9Reference, @object
	.size	_ZTS9Reference, 11
_ZTS9Reference:
	.string	"9Reference"
	.weak	_ZTI5Demux
	.section	.rodata._ZTI5Demux,"aG",@progbits,_ZTI5Demux,comdat
	.align 16
	.type	_ZTI5Demux, @object
	.size	_ZTI5Demux, 16
_ZTI5Demux:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS5Demux
	.weak	_ZTS6Write4
	.section	.rodata._ZTS6Write4,"aG",@progbits,_ZTS6Write4,comdat
	.type	_ZTS6Write4, @object
	.size	_ZTS6Write4, 8
_ZTS6Write4:
	.string	"6Write4"
	.weak	_ZTS6Write8
	.section	.rodata._ZTS6Write8,"aG",@progbits,_ZTS6Write8,comdat
	.type	_ZTS6Write8, @object
	.size	_ZTS6Write8, 8
_ZTS6Write8:
	.string	"6Write8"
	.weak	_ZTS12Read4_Write4
	.section	.rodata._ZTS12Read4_Write4,"aG",@progbits,_ZTS12Read4_Write4,comdat
	.type	_ZTS12Read4_Write4, @object
	.size	_ZTS12Read4_Write4, 15
_ZTS12Read4_Write4:
	.string	"12Read4_Write4"
	.weak	_ZTS5Demux
	.section	.rodata._ZTS5Demux,"aG",@progbits,_ZTS5Demux,comdat
	.type	_ZTS5Demux, @object
	.size	_ZTS5Demux, 7
_ZTS5Demux:
	.string	"5Demux"
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	2696277389
	.long	1051772663
	.align 8
.LC6:
	.long	0
	.long	1138753536
	.ident	"GCC: (GNU) 4.6.3 20120306 (Red Hat 4.6.3-2)"
	.section	.note.GNU-stack,"",@progbits
