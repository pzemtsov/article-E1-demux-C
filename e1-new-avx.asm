	.file	"e1-new.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"e1-new.cpp"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"src_length == NUM_TIMESLOTS * DST_SIZE"
	.section	.text._ZNK19Read4_Write4_Unroll5demuxEPKhmPPh,"axG",@progbits,_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh
	.type	_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh, @function
_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh:
.LFB1660:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	cmpq	$2048, %rdx
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	jne	.L6
	xorl	%r11d, %r11d
	.p2align 5
.L3:
	movl	32(%rsi), %r9d
	movl	64(%rsi), %r12d
	movl	(%rsi), %ebp
	movl	96(%rsi), %r14d
	movq	(%rcx,%r11,8), %r8
	movq	16(%rcx,%r11,8), %rdx
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	movq	8(%rcx,%r11,8), %rdi
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	movq	24(%rcx,%r11,8), %rax
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, (%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, (%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, (%rdx)
	movl	%r9d, (%rax)
	movl	160(%rsi), %r9d
	movl	192(%rsi), %r12d
	movl	128(%rsi), %ebp
	movl	224(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 4(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 4(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 4(%rdx)
	movl	%r9d, 4(%rax)
	movl	288(%rsi), %r9d
	movl	320(%rsi), %r12d
	movl	256(%rsi), %ebp
	movl	352(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 8(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 8(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 8(%rdx)
	movl	%r9d, 8(%rax)
	movl	416(%rsi), %r9d
	movl	448(%rsi), %r12d
	movl	384(%rsi), %ebp
	movl	480(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 12(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 12(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 12(%rdx)
	movl	%r9d, 12(%rax)
	movl	544(%rsi), %r9d
	movl	576(%rsi), %r12d
	movl	512(%rsi), %ebp
	movl	608(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 16(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	movzbl	%bh, %ebx
	sall	$24, %ebx
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	movl	%r10d, 16(%rdi)
	movl	%r9d, %r10d
	shrl	$8, %r10d
	andl	$16711680, %r13d
	shrl	$16, %ebx
	andl	$65280, %r10d
	shrl	$24, %r9d
	shrl	$24, %r12d
	orl	%r13d, %r10d
	sall	$16, %r12d
	movzbl	%bl, %r13d
	sall	$8, %r9d
	movl	%r14d, %ebx
	shrl	$24, %ebp
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 16(%rdx)
	movl	%r9d, 16(%rax)
	movl	672(%rsi), %r9d
	movl	704(%rsi), %r12d
	movl	640(%rsi), %ebp
	movl	736(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 20(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	sall	$24, %ebx
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	movl	%r10d, 20(%rdi)
	movl	%r9d, %r10d
	shrl	$8, %r10d
	andl	$65280, %r10d
	orl	%r13d, %r10d
	shrl	$16, %ebx
	shrl	$24, %r9d
	shrl	$24, %r12d
	movzbl	%bl, %r13d
	sall	$8, %r9d
	sall	$16, %r12d
	movl	%r14d, %ebx
	shrl	$24, %ebp
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 20(%rdx)
	movl	%r9d, 20(%rax)
	movl	800(%rsi), %r9d
	movl	832(%rsi), %r12d
	movl	768(%rsi), %ebp
	movl	864(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 24(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	sall	$24, %ebx
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	movl	%r10d, 24(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	andl	$65280, %r10d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r13d, %r10d
	shrl	$16, %ebx
	shrl	$24, %r9d
	shrl	$24, %r12d
	sall	$8, %r9d
	shrl	$24, %ebp
	sall	$16, %r12d
	sall	$24, %ebx
	andl	$-16777216, %r14d
	orl	%r12d, %r9d
	orl	%ebx, %r10d
	orl	%ebp, %r9d
	movl	%r10d, 24(%rdx)
	orl	%r14d, %r9d
	movl	%r9d, 24(%rax)
	movl	928(%rsi), %r9d
	movl	960(%rsi), %r12d
	movl	896(%rsi), %ebp
	movl	992(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 28(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	sall	$24, %ebx
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	movl	%r10d, 28(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	andl	$65280, %r10d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebx, %r10d
	shrl	$24, %r9d
	shrl	$24, %r12d
	sall	$16, %r12d
	sall	$8, %r9d
	shrl	$24, %ebp
	orl	%r12d, %r9d
	andl	$-16777216, %r14d
	movl	%r10d, 28(%rdx)
	orl	%ebp, %r9d
	orl	%r14d, %r9d
	movl	%r9d, 28(%rax)
	movl	1056(%rsi), %r9d
	movl	1088(%rsi), %r12d
	movl	1024(%rsi), %ebp
	movl	1120(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 32(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	movl	%r10d, 32(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebx, %r10d
	sall	$16, %r12d
	shrl	$24, %ebp
	orl	%r12d, %r9d
	andl	$-16777216, %r14d
	movl	%r10d, 32(%rdx)
	orl	%ebp, %r9d
	orl	%r14d, %r9d
	movl	%r9d, 32(%rax)
	movl	1184(%rsi), %r9d
	movl	1216(%rsi), %r12d
	movl	1152(%rsi), %ebp
	movl	1248(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 36(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 36(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	shrl	$16, %ebx
	orl	%r13d, %r10d
	orl	%r12d, %r9d
	sall	$24, %ebx
	orl	%ebx, %r10d
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%r14d, %r9d
	movl	%r10d, 36(%rdx)
	movl	%r9d, 36(%rax)
	movl	1312(%rsi), %r9d
	movl	1344(%rsi), %r12d
	movl	1280(%rsi), %ebp
	movl	1376(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 40(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 40(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 40(%rdx)
	movl	%r9d, 40(%rax)
	movl	1440(%rsi), %r9d
	movl	1472(%rsi), %r12d
	movl	1408(%rsi), %ebp
	movl	1504(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$8, %r10d
	sall	$16, %r13d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 44(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 44(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 44(%rdx)
	movl	%r9d, 44(%rax)
	movl	1568(%rsi), %r9d
	movl	1600(%rsi), %r12d
	movl	1536(%rsi), %ebp
	movl	1632(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 48(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 48(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 48(%rdx)
	movl	%r9d, 48(%rax)
	movl	1696(%rsi), %r9d
	movl	1728(%rsi), %r12d
	movl	1664(%rsi), %ebp
	movl	1760(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 52(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	sall	$16, %r13d
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 52(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 52(%rdx)
	movl	%r9d, 52(%rax)
	movl	1824(%rsi), %r9d
	movl	1856(%rsi), %r12d
	movl	1792(%rsi), %ebp
	movl	1888(%rsi), %r14d
	movzbl	%r9b, %r10d
	movzbl	%r12b, %r13d
	sall	$16, %r13d
	sall	$8, %r10d
	movzbl	%bpl, %ebx
	orl	%r13d, %r10d
	movl	%r14d, %r13d
	orl	%ebx, %r10d
	sall	$24, %r13d
	movq	%r12, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r10d, 56(%r8)
	movl	%ebx, %r13d
	movl	%r9d, %r10d
	sall	$16, %r13d
	andl	$65280, %r10d
	movq	%rbp, %rbx
	orl	%r13d, %r10d
	movzbl	%bh, %ebx
	movl	%r12d, %r13d
	orl	%ebx, %r10d
	movq	%r14, %rbx
	andl	$16711680, %r13d
	movzbl	%bh, %ebx
	shrl	$24, %r12d
	sall	$24, %ebx
	sall	$16, %r12d
	orl	%ebx, %r10d
	movl	%ebp, %ebx
	shrl	$24, %ebp
	movl	%r10d, 56(%rdi)
	movl	%r9d, %r10d
	shrl	$16, %ebx
	shrl	$8, %r10d
	shrl	$24, %r9d
	andl	$65280, %r10d
	sall	$8, %r9d
	orl	%r13d, %r10d
	movzbl	%bl, %r13d
	movl	%r14d, %ebx
	orl	%r12d, %r9d
	shrl	$16, %ebx
	orl	%r13d, %r10d
	sall	$24, %ebx
	orl	%ebp, %r9d
	andl	$-16777216, %r14d
	orl	%ebx, %r10d
	orl	%r14d, %r9d
	movl	%r10d, 56(%rdx)
	movl	%r9d, 56(%rax)
	movl	1952(%rsi), %r12d
	movl	1984(%rsi), %ebp
	movl	1920(%rsi), %r10d
	movl	2016(%rsi), %r14d
	movzbl	%bpl, %r13d
	movzbl	%r12b, %r9d
	sall	$16, %r13d
	sall	$8, %r9d
	movzbl	%r10b, %ebx
	orl	%r13d, %r9d
	movl	%r14d, %r13d
	orl	%ebx, %r9d
	sall	$24, %r13d
	movq	%rbp, %rbx
	orl	%r13d, %r9d
	movzbl	%bh, %ebx
	movl	%r10d, %r13d
	movl	%r9d, 60(%r8)
	movl	%ebx, %r9d
	movl	%r12d, %r8d
	sall	$16, %r9d
	andl	$65280, %r8d
	movq	%r10, %rbx
	orl	%r9d, %r8d
	movzbl	%bh, %ebx
	orl	%ebx, %r8d
	movq	%r14, %rbx
	movzbl	%bh, %ebx
	movl	%ebx, %r9d
	movl	%ebp, %ebx
	sall	$24, %r9d
	orl	%r9d, %r8d
	movl	%r8d, 60(%rdi)
	movl	%r12d, %edi
	movl	%r14d, %r8d
	shrl	$8, %edi
	andl	$16711680, %ebx
	shrl	$16, %r13d
	andl	$65280, %edi
	shrl	$16, %r8d
	movzbl	%r13b, %r9d
	orl	%ebx, %edi
	sall	$24, %r8d
	shrl	$24, %ebp
	orl	%r9d, %edi
	sall	$16, %ebp
	shrl	$24, %r10d
	orl	%r8d, %edi
	movl	%r14d, %ebx
	addq	$4, %r11
	movl	%edi, 60(%rdx)
	movl	%r12d, %edx
	andl	$-16777216, %ebx
	shrl	$24, %edx
	addq	$4, %rsi
	sall	$8, %edx
	orl	%ebp, %edx
	orl	%r10d, %edx
	orl	%ebx, %edx
	cmpq	$32, %r11
	movl	%edx, 60(%rax)
	jne	.L3
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	movl	$_ZZNK19Read4_Write4_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$170, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1660:
	.size	_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh, .-_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh
	.section	.text._ZNK16Read4_Write4_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK16Read4_Write4_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh
	.type	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh, @function
_ZNK16Read4_Write4_SSE5demuxEPKhmPPh:
.LFB1661:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L11
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%r9d, %r9d
	.p2align 5
.L9:
	vmovd	64(%rsi), %xmm6
	movq	16(%rcx,%r9,8), %rdx
	vmovd	(%rsi), %xmm5
	movq	24(%rcx,%r9,8), %rax
	vpinsrd	$0x1, 96(%rsi), %xmm6, %xmm4
	movq	(%rcx,%r9,8), %r8
	movq	8(%rcx,%r9,8), %rdi
	addq	$4, %r9
	vpinsrd	$0x1, 32(%rsi), %xmm5, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, (%r8)
	vpextrd	$1, %xmm1, (%rdi)
	vpextrd	$2, %xmm1, (%rdx)
	vpextrd	$3, %xmm1, (%rax)
	vmovd	192(%rsi), %xmm15
	vmovd	128(%rsi), %xmm14
	vpinsrd	$0x1, 224(%rsi), %xmm15, %xmm12
	vpinsrd	$0x1, 160(%rsi), %xmm14, %xmm13
	vpunpcklqdq	%xmm12, %xmm13, %xmm11
	vpshufb	%xmm0, %xmm11, %xmm10
	vmovd	%xmm10, 4(%r8)
	vpextrd	$1, %xmm10, 4(%rdi)
	vpextrd	$2, %xmm10, 4(%rdx)
	vpextrd	$3, %xmm10, 4(%rax)
	vmovd	320(%rsi), %xmm9
	vmovd	256(%rsi), %xmm8
	vpinsrd	$0x1, 352(%rsi), %xmm9, %xmm6
	vpinsrd	$0x1, 288(%rsi), %xmm8, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm3
	vmovd	%xmm3, 8(%r8)
	vpextrd	$1, %xmm3, 8(%rdi)
	vpextrd	$2, %xmm3, 8(%rdx)
	vpextrd	$3, %xmm3, 8(%rax)
	vmovd	448(%rsi), %xmm4
	vmovd	384(%rsi), %xmm2
	vpinsrd	$0x1, 480(%rsi), %xmm4, %xmm15
	vpinsrd	$0x1, 416(%rsi), %xmm2, %xmm1
	vpunpcklqdq	%xmm15, %xmm1, %xmm14
	vpshufb	%xmm0, %xmm14, %xmm13
	vmovd	%xmm13, 12(%r8)
	vpextrd	$1, %xmm13, 12(%rdi)
	vpextrd	$2, %xmm13, 12(%rdx)
	vpextrd	$3, %xmm13, 12(%rax)
	vmovd	576(%rsi), %xmm12
	vmovd	512(%rsi), %xmm11
	vpinsrd	$0x1, 608(%rsi), %xmm12, %xmm9
	vpinsrd	$0x1, 544(%rsi), %xmm11, %xmm10
	vpunpcklqdq	%xmm9, %xmm10, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm7
	vmovd	%xmm7, 16(%r8)
	vpextrd	$1, %xmm7, 16(%rdi)
	vpextrd	$2, %xmm7, 16(%rdx)
	vpextrd	$3, %xmm7, 16(%rax)
	vmovd	704(%rsi), %xmm6
	vmovd	640(%rsi), %xmm5
	vpinsrd	$0x1, 736(%rsi), %xmm6, %xmm4
	vpinsrd	$0x1, 672(%rsi), %xmm5, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, 20(%r8)
	vpextrd	$1, %xmm1, 20(%rdi)
	vpextrd	$2, %xmm1, 20(%rdx)
	vpextrd	$3, %xmm1, 20(%rax)
	vmovd	832(%rsi), %xmm15
	vmovd	768(%rsi), %xmm14
	vpinsrd	$0x1, 864(%rsi), %xmm15, %xmm12
	vpinsrd	$0x1, 800(%rsi), %xmm14, %xmm13
	vpunpcklqdq	%xmm12, %xmm13, %xmm11
	vpshufb	%xmm0, %xmm11, %xmm10
	vmovd	%xmm10, 24(%r8)
	vpextrd	$1, %xmm10, 24(%rdi)
	vpextrd	$2, %xmm10, 24(%rdx)
	vpextrd	$3, %xmm10, 24(%rax)
	vmovd	960(%rsi), %xmm9
	vmovd	896(%rsi), %xmm8
	vpinsrd	$0x1, 992(%rsi), %xmm9, %xmm6
	vpinsrd	$0x1, 928(%rsi), %xmm8, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm3
	vmovd	%xmm3, 28(%r8)
	vpextrd	$1, %xmm3, 28(%rdi)
	vpextrd	$2, %xmm3, 28(%rdx)
	vpextrd	$3, %xmm3, 28(%rax)
	vmovd	1088(%rsi), %xmm4
	vmovd	1024(%rsi), %xmm2
	vpinsrd	$0x1, 1120(%rsi), %xmm4, %xmm15
	vpinsrd	$0x1, 1056(%rsi), %xmm2, %xmm1
	vpunpcklqdq	%xmm15, %xmm1, %xmm14
	vpshufb	%xmm0, %xmm14, %xmm13
	vmovd	%xmm13, 32(%r8)
	vpextrd	$1, %xmm13, 32(%rdi)
	vpextrd	$2, %xmm13, 32(%rdx)
	vpextrd	$3, %xmm13, 32(%rax)
	vmovd	1216(%rsi), %xmm12
	vmovd	1152(%rsi), %xmm11
	vpinsrd	$0x1, 1248(%rsi), %xmm12, %xmm9
	vpinsrd	$0x1, 1184(%rsi), %xmm11, %xmm10
	vpunpcklqdq	%xmm9, %xmm10, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm7
	vmovd	%xmm7, 36(%r8)
	vpextrd	$1, %xmm7, 36(%rdi)
	vpextrd	$2, %xmm7, 36(%rdx)
	vpextrd	$3, %xmm7, 36(%rax)
	vmovd	1344(%rsi), %xmm6
	vmovd	1280(%rsi), %xmm5
	vpinsrd	$0x1, 1376(%rsi), %xmm6, %xmm4
	vpinsrd	$0x1, 1312(%rsi), %xmm5, %xmm3
	vpunpcklqdq	%xmm4, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, 40(%r8)
	vpextrd	$1, %xmm1, 40(%rdi)
	vpextrd	$2, %xmm1, 40(%rdx)
	vpextrd	$3, %xmm1, 40(%rax)
	vmovd	1472(%rsi), %xmm15
	vmovd	1408(%rsi), %xmm14
	vpinsrd	$0x1, 1504(%rsi), %xmm15, %xmm12
	vpinsrd	$0x1, 1440(%rsi), %xmm14, %xmm13
	vpunpcklqdq	%xmm12, %xmm13, %xmm11
	vpshufb	%xmm0, %xmm11, %xmm10
	vmovd	%xmm10, 44(%r8)
	vpextrd	$1, %xmm10, 44(%rdi)
	vpextrd	$2, %xmm10, 44(%rdx)
	vpextrd	$3, %xmm10, 44(%rax)
	vmovd	1600(%rsi), %xmm9
	vmovd	1536(%rsi), %xmm8
	vpinsrd	$0x1, 1632(%rsi), %xmm9, %xmm6
	vpinsrd	$0x1, 1568(%rsi), %xmm8, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm5
	vpshufb	%xmm0, %xmm5, %xmm3
	vmovd	%xmm3, 48(%r8)
	vpextrd	$1, %xmm3, 48(%rdi)
	vpextrd	$2, %xmm3, 48(%rdx)
	vpextrd	$3, %xmm3, 48(%rax)
	vmovd	1728(%rsi), %xmm4
	vmovd	1664(%rsi), %xmm2
	vpinsrd	$0x1, 1760(%rsi), %xmm4, %xmm15
	vpinsrd	$0x1, 1696(%rsi), %xmm2, %xmm1
	vpunpcklqdq	%xmm15, %xmm1, %xmm14
	vpshufb	%xmm0, %xmm14, %xmm13
	vmovd	%xmm13, 52(%r8)
	vpextrd	$1, %xmm13, 52(%rdi)
	vpextrd	$2, %xmm13, 52(%rdx)
	vpextrd	$3, %xmm13, 52(%rax)
	vmovd	1856(%rsi), %xmm12
	vmovd	1792(%rsi), %xmm11
	vpinsrd	$0x1, 1888(%rsi), %xmm12, %xmm9
	vpinsrd	$0x1, 1824(%rsi), %xmm11, %xmm10
	vpunpcklqdq	%xmm9, %xmm10, %xmm8
	vpshufb	%xmm0, %xmm8, %xmm7
	vmovd	%xmm7, 56(%r8)
	vpextrd	$1, %xmm7, 56(%rdi)
	vpextrd	$2, %xmm7, 56(%rdx)
	vpextrd	$3, %xmm7, 56(%rax)
	vmovd	1984(%rsi), %xmm6
	vmovd	1920(%rsi), %xmm5
	vpinsrd	$0x1, 2016(%rsi), %xmm6, %xmm4
	vpinsrd	$0x1, 1952(%rsi), %xmm5, %xmm3
	addq	$4, %rsi
	cmpq	$32, %r9
	vpunpcklqdq	%xmm4, %xmm3, %xmm2
	vpshufb	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, 60(%r8)
	vpextrd	$1, %xmm1, 60(%rdi)
	vpextrd	$2, %xmm1, 60(%rdx)
	vpextrd	$3, %xmm1, 60(%rax)
	jne	.L9
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	movl	$_ZZNK16Read4_Write4_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$215, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1661:
	.size	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh, .-_ZNK16Read4_Write4_SSE5demuxEPKhmPPh
	.section	.text._ZNK6Write45demuxEPKhmPPh,"axG",@progbits,_ZNK6Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write45demuxEPKhmPPh
	.type	_ZNK6Write45demuxEPKhmPPh, @function
_ZNK6Write45demuxEPKhmPPh:
.LFB1652:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L16
	xorl	%edi, %edi
	.p2align 5
.L14:
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
	jne	.L14
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	movl	$_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$67, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1652:
	.size	_ZNK6Write45demuxEPKhmPPh, .-_ZNK6Write45demuxEPKhmPPh
	.section	.text._ZNK6Write85demuxEPKhmPPh,"axG",@progbits,_ZNK6Write85demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write85demuxEPKhmPPh
	.type	_ZNK6Write85demuxEPKhmPPh, @function
_ZNK6Write85demuxEPKhmPPh:
.LFB1654:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L21
	xorl	%r8d, %r8d
	.p2align 5
.L19:
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
	jne	.L19
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	movl	$_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$97, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1654:
	.size	_ZNK6Write85demuxEPKhmPPh, .-_ZNK6Write85demuxEPKhmPPh
	.section	.text._ZNK12Read4_Write45demuxEPKhmPPh,"axG",@progbits,_ZNK12Read4_Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK12Read4_Write45demuxEPKhmPPh
	.type	_ZNK12Read4_Write45demuxEPKhmPPh, @function
_ZNK12Read4_Write45demuxEPKhmPPh:
.LFB1659:
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
	jne	.L28
	xorl	%r14d, %r14d
	.p2align 5
.L23:
	movq	0(%r13,%r14,8), %r12
	movq	8(%r13,%r14,8), %rbp
	leaq	(%rsi,%r14), %r8
	movq	16(%r13,%r14,8), %r11
	movq	24(%r13,%r14,8), %r10
	xorl	%edi, %edi
	.p2align 5
.L24:
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
	jne	.L24
	addq	$4, %r14
	cmpq	$32, %r14
	jne	.L23
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
.L28:
	.cfi_restore_state
	movl	$_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$142, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1659:
	.size	_ZNK12Read4_Write45demuxEPKhmPPh, .-_ZNK12Read4_Write45demuxEPKhmPPh
	.section	.text._ZNK17Read4_Write16_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK17Read4_Write16_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh
	.type	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh, @function
_ZNK17Read4_Write16_SSE5demuxEPKhmPPh:
.LFB1662:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L33
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%eax, %eax
	.p2align 5
.L31:
	vmovd	64(%rsi), %xmm13
	movq	8(%rcx,%rax,8), %r8
	vmovd	(%rsi), %xmm1
	movq	16(%rcx,%rax,8), %rdi
	vpinsrd	$0x1, 96(%rsi), %xmm13, %xmm11
	vmovd	192(%rsi), %xmm6
	movq	24(%rcx,%rax,8), %rdx
	vpinsrd	$0x1, 32(%rsi), %xmm1, %xmm14
	vmovd	128(%rsi), %xmm9
	movq	(%rcx,%rax,8), %r9
	addq	$4, %rax
	vmovd	320(%rsi), %xmm7
	vmovd	256(%rsi), %xmm4
	vmovd	448(%rsi), %xmm13
	vmovd	384(%rsi), %xmm1
	vpunpcklqdq	%xmm11, %xmm14, %xmm15
	vpinsrd	$0x1, 224(%rsi), %xmm6, %xmm8
	vpinsrd	$0x1, 160(%rsi), %xmm9, %xmm5
	vpinsrd	$0x1, 352(%rsi), %xmm7, %xmm10
	vpinsrd	$0x1, 288(%rsi), %xmm4, %xmm2
	vpinsrd	$0x1, 480(%rsi), %xmm13, %xmm14
	vpinsrd	$0x1, 416(%rsi), %xmm1, %xmm11
	vpunpcklqdq	%xmm8, %xmm5, %xmm3
	vpunpcklqdq	%xmm10, %xmm2, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vpunpcklqdq	%xmm14, %xmm11, %xmm6
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm6, %xmm11
	vshufps	$0, %xmm3, %xmm15, %xmm9
	vshufps	$85, %xmm3, %xmm15, %xmm7
	vshufps	$0, %xmm11, %xmm12, %xmm8
	vshufps	$85, %xmm11, %xmm12, %xmm4
	vshufps	$170, %xmm3, %xmm15, %xmm2
	vshufps	$170, %xmm11, %xmm12, %xmm13
	vshufps	$255, %xmm3, %xmm15, %xmm14
	vshufps	$255, %xmm11, %xmm12, %xmm6
	vshufps	$136, %xmm8, %xmm9, %xmm5
	vshufps	$136, %xmm4, %xmm7, %xmm10
	vshufps	$136, %xmm13, %xmm2, %xmm1
	vshufps	$136, %xmm6, %xmm14, %xmm9
	vmovdqa	%xmm5, (%r9)
	vmovdqa	%xmm10, (%r8)
	vmovdqa	%xmm1, (%rdi)
	vmovdqa	%xmm9, (%rdx)
	vmovd	576(%rsi), %xmm8
	vmovd	512(%rsi), %xmm5
	vpinsrd	$0x1, 608(%rsi), %xmm8, %xmm7
	vmovd	704(%rsi), %xmm2
	vpinsrd	$0x1, 544(%rsi), %xmm5, %xmm4
	vmovd	640(%rsi), %xmm13
	vmovd	832(%rsi), %xmm12
	vmovd	768(%rsi), %xmm11
	vmovd	960(%rsi), %xmm8
	vmovd	896(%rsi), %xmm5
	vpunpcklqdq	%xmm7, %xmm4, %xmm10
	vpinsrd	$0x1, 736(%rsi), %xmm2, %xmm1
	vpinsrd	$0x1, 672(%rsi), %xmm13, %xmm15
	vpinsrd	$0x1, 864(%rsi), %xmm12, %xmm14
	vpinsrd	$0x1, 800(%rsi), %xmm11, %xmm6
	vpinsrd	$0x1, 992(%rsi), %xmm8, %xmm4
	vpinsrd	$0x1, 928(%rsi), %xmm5, %xmm7
	vpunpcklqdq	%xmm1, %xmm15, %xmm3
	vpunpcklqdq	%xmm14, %xmm6, %xmm9
	vpshufb	%xmm0, %xmm10, %xmm10
	vpunpcklqdq	%xmm4, %xmm7, %xmm2
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm2, %xmm7
	vshufps	$0, %xmm3, %xmm10, %xmm13
	vshufps	$85, %xmm3, %xmm10, %xmm12
	vshufps	$0, %xmm7, %xmm9, %xmm1
	vshufps	$85, %xmm7, %xmm9, %xmm11
	vshufps	$170, %xmm3, %xmm10, %xmm6
	vshufps	$170, %xmm7, %xmm9, %xmm8
	vshufps	$255, %xmm3, %xmm10, %xmm4
	vshufps	$255, %xmm7, %xmm9, %xmm2
	vshufps	$136, %xmm1, %xmm13, %xmm15
	vshufps	$136, %xmm11, %xmm12, %xmm14
	vshufps	$136, %xmm8, %xmm6, %xmm5
	vshufps	$136, %xmm2, %xmm4, %xmm13
	vmovdqa	%xmm15, 16(%r9)
	vmovdqa	%xmm14, 16(%r8)
	vmovdqa	%xmm5, 16(%rdi)
	vmovdqa	%xmm13, 16(%rdx)
	vmovd	1088(%rsi), %xmm1
	vmovd	1024(%rsi), %xmm15
	vpinsrd	$0x1, 1120(%rsi), %xmm1, %xmm12
	vmovd	1216(%rsi), %xmm6
	vpinsrd	$0x1, 1056(%rsi), %xmm15, %xmm11
	vmovd	1152(%rsi), %xmm8
	vmovd	1344(%rsi), %xmm7
	vmovd	1280(%rsi), %xmm3
	vmovd	1472(%rsi), %xmm1
	vmovd	1408(%rsi), %xmm15
	vpunpcklqdq	%xmm12, %xmm11, %xmm14
	vpinsrd	$0x1, 1248(%rsi), %xmm6, %xmm10
	vpinsrd	$0x1, 1184(%rsi), %xmm8, %xmm5
	vpinsrd	$0x1, 1376(%rsi), %xmm7, %xmm4
	vpinsrd	$0x1, 1312(%rsi), %xmm3, %xmm2
	vpinsrd	$0x1, 1504(%rsi), %xmm1, %xmm11
	vpinsrd	$0x1, 1440(%rsi), %xmm15, %xmm12
	vpunpcklqdq	%xmm10, %xmm5, %xmm9
	vpunpcklqdq	%xmm4, %xmm2, %xmm13
	vpshufb	%xmm0, %xmm14, %xmm14
	vpunpcklqdq	%xmm11, %xmm12, %xmm6
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm13, %xmm13
	vpshufb	%xmm0, %xmm6, %xmm12
	vshufps	$0, %xmm9, %xmm14, %xmm8
	vshufps	$85, %xmm9, %xmm14, %xmm7
	vshufps	$0, %xmm12, %xmm13, %xmm10
	vshufps	$85, %xmm12, %xmm13, %xmm3
	vshufps	$170, %xmm9, %xmm14, %xmm2
	vshufps	$170, %xmm12, %xmm13, %xmm1
	vshufps	$255, %xmm9, %xmm14, %xmm11
	vshufps	$255, %xmm12, %xmm13, %xmm6
	vshufps	$136, %xmm10, %xmm8, %xmm5
	vshufps	$136, %xmm3, %xmm7, %xmm4
	vshufps	$136, %xmm1, %xmm2, %xmm15
	vshufps	$136, %xmm6, %xmm11, %xmm8
	vmovdqa	%xmm5, 32(%r9)
	vmovdqa	%xmm4, 32(%r8)
	vmovdqa	%xmm15, 32(%rdi)
	vmovdqa	%xmm8, 32(%rdx)
	vmovd	1600(%rsi), %xmm10
	vmovd	1536(%rsi), %xmm5
	vpinsrd	$0x1, 1632(%rsi), %xmm10, %xmm7
	vmovd	1728(%rsi), %xmm2
	vpinsrd	$0x1, 1568(%rsi), %xmm5, %xmm3
	vmovd	1664(%rsi), %xmm1
	vmovd	1856(%rsi), %xmm13
	vmovd	1792(%rsi), %xmm12
	vmovd	1984(%rsi), %xmm10
	vmovd	1920(%rsi), %xmm5
	vpunpcklqdq	%xmm7, %xmm3, %xmm4
	vpinsrd	$0x1, 1760(%rsi), %xmm2, %xmm15
	vpinsrd	$0x1, 1696(%rsi), %xmm1, %xmm14
	vpinsrd	$0x1, 1888(%rsi), %xmm13, %xmm11
	vpinsrd	$0x1, 1824(%rsi), %xmm12, %xmm6
	vpinsrd	$0x1, 2016(%rsi), %xmm10, %xmm3
	vpinsrd	$0x1, 1952(%rsi), %xmm5, %xmm7
	addq	$4, %rsi
	cmpq	$32, %rax
	vpunpcklqdq	%xmm15, %xmm14, %xmm9
	vpunpcklqdq	%xmm11, %xmm6, %xmm8
	vpshufb	%xmm0, %xmm4, %xmm4
	vpunpcklqdq	%xmm3, %xmm7, %xmm2
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm7
	vshufps	$0, %xmm9, %xmm4, %xmm1
	vshufps	$85, %xmm9, %xmm4, %xmm13
	vshufps	$0, %xmm7, %xmm8, %xmm15
	vshufps	$85, %xmm7, %xmm8, %xmm12
	vshufps	$170, %xmm9, %xmm4, %xmm6
	vshufps	$170, %xmm7, %xmm8, %xmm10
	vshufps	$255, %xmm9, %xmm4, %xmm3
	vshufps	$255, %xmm7, %xmm8, %xmm2
	vshufps	$136, %xmm15, %xmm1, %xmm14
	vshufps	$136, %xmm12, %xmm13, %xmm11
	vshufps	$136, %xmm10, %xmm6, %xmm5
	vshufps	$136, %xmm2, %xmm3, %xmm1
	vmovdqa	%xmm14, 48(%r9)
	vmovdqa	%xmm11, 48(%r8)
	vmovdqa	%xmm5, 48(%rdi)
	vmovdqa	%xmm1, 48(%rdx)
	jne	.L31
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L33:
	.cfi_restore_state
	movl	$_ZZNK17Read4_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$245, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1662:
	.size	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh, .-_ZNK17Read4_Write16_SSE5demuxEPKhmPPh
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"src_length % NUM_TIMESLOTS == 0"
	.section	.text._ZNK9Reference5demuxEPKhmPPh,"axG",@progbits,_ZNK9Reference5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK9Reference5demuxEPKhmPPh
	.type	_ZNK9Reference5demuxEPKhmPPh, @function
_ZNK9Reference5demuxEPKhmPPh:
.LFB1650:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testb	$31, %dl
	jne	.L35
	testq	%rdx, %rdx
	je	.L34
	movzbl	(%rsi), %edi
	movq	(%rcx), %rax
	leaq	-1(%rdx), %r9
	xorl	%r8d, %r8d
	movb	%dil, (%rax)
	xorl	%edi, %edi
	andl	$7, %r9d
	movl	$1, %eax
	je	.L91
	movzbl	(%rsi,%rax), %r10d
	movq	8(%rcx), %r11
	cmpq	$1, %r9
	movl	$1, %r8d
	movl	$2, %eax
	movb	%r10b, (%r11)
	je	.L91
	cmpq	$2, %r9
	je	.L80
	cmpq	$3, %r9
	je	.L81
	cmpq	$4, %r9
	je	.L82
	cmpq	$5, %r9
	je	.L83
	cmpq	$6, %r9
	je	.L84
	movzbl	1(%rsi,%r8), %r11d
	movq	(%rcx,%rax,8), %r9
	addq	$1, %r8
	addq	$1, %rax
	movb	%r11b, (%r9,%rdi)
.L84:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L96
.L83:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r9d
	cmpq	$32, %rax
	movb	%r9b, (%r11,%rdi)
	je	.L97
.L82:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L98
.L81:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r11d
	cmpq	$32, %rax
	movb	%r11b, (%r9,%rdi)
	je	.L99
.L80:
	addq	$1, %r8
	movzbl	(%rsi,%r8), %r10d
.L95:
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L100
.L91:
	leaq	1(%r8), %r9
	cmpq	%rdx, %r9
	je	.L34
	movzbl	1(%rsi,%r8), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L101
.L77:
	movzbl	1(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L102
.L85:
	movzbl	2(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L103
.L86:
	movzbl	3(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L104
.L87:
	movzbl	4(%rsi,%r9), %r11d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r11b, (%r8,%rdi)
	je	.L105
.L88:
	movzbl	5(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L106
.L89:
	movzbl	6(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L107
.L90:
	leaq	7(%r9), %r8
	movzbl	7(%rsi,%r9), %r10d
	jmp	.L95
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L100:
	.cfi_restore_state
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L101:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L107:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L106:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L105:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L88
	.p2align 4,,10
	.p2align 3
.L104:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L103:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L102:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L99:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L98:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L97:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L96:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L83
.L35:
	movl	$_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$40, %edx
	movl	$.LC0, %esi
	movl	$.LC3, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1650:
	.size	_ZNK9Reference5demuxEPKhmPPh, .-_ZNK9Reference5demuxEPKhmPPh
	.text
	.p2align 5,,31
	.globl	_Z8generatev
	.type	_Z8generatev, @function
_Z8generatev:
.LFB1663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$2048, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_Znam
	xorl	%edi, %edi
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	call	srand
	.p2align 5
.L109:
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
	jne	.L109
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1663:
	.size	_Z8generatev, .-_Z8generatev
	.p2align 5,,31
	.globl	_Z12allocate_dstv
	.type	_Z12allocate_dstv, @function
_Z12allocate_dstv:
.LFB1664:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$256, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	call	_Znam
	movq	%rax, %r12
	jmp	.L126
	.p2align 4,,10
	.p2align 3
.L120:
	testb	$2, %dl
	jne	.L138
.L121:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L139
.L122:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%rbx, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L123
	movl	$0, (%rdi)
	addq	$4, %rdi
.L123:
	testb	$2, %sil
	je	.L124
	movw	$0, (%rdi)
	addq	$2, %rdi
.L124:
	andl	$1, %esi
	je	.L125
	movb	$0, (%rdi)
.L125:
	addq	$1, %rbp
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%rbx, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, (%r12,%rbp,8)
	movq	%rax, %rdx
	jne	.L140
.L129:
	testb	$2, %dl
	jne	.L141
.L130:
	testb	$4, %dl
	jne	.L142
.L131:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%rbx, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L132
	movl	$0, (%rdi)
	addq	$4, %rdi
.L132:
	testb	$2, %sil
	je	.L133
	movw	$0, (%rdi)
	addq	$2, %rdi
.L133:
	andl	$1, %esi
	je	.L134
	movb	$0, (%rdi)
.L134:
	addq	$1, %rbp
	cmpq	$32, %rbp
	je	.L143
.L126:
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%rbx, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, (%r12,%rbp,8)
	movq	%rax, %rdx
	je	.L120
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L121
	.p2align 5
.L138:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L122
	.p2align 5
.L139:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L142:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L141:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L130
	.p2align 4,,10
	.p2align 3
.L140:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L129
	.p2align 4,,10
	.p2align 3
.L143:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%r12, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1664:
	.size	_Z12allocate_dstv, .-_Z12allocate_dstv
	.p2align 5,,31
	.globl	_Z10delete_dstPPh
	.type	_Z10delete_dstPPh, @function
_Z10delete_dstPPh:
.LFB1665:
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
.L145:
	movq	0(%rbp,%rbx,8), %rdi
	call	free
	movq	8(%rbp,%rbx,8), %rdi
	call	free
	movq	16(%rbp,%rbx,8), %rdi
	call	free
	movq	24(%rbp,%rbx,8), %rdi
	call	free
	movq	32(%rbp,%rbx,8), %rdi
	call	free
	movq	40(%rbp,%rbx,8), %rdi
	call	free
	movq	48(%rbp,%rbx,8), %rdi
	call	free
	movq	56(%rbp,%rbx,8), %rdi
	addq	$8, %rbx
	call	free
	cmpq	$32, %rbx
	jne	.L145
	movq	%rbp, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.cfi_endproc
.LFE1665:
	.size	_Z10delete_dstPPh, .-_Z10delete_dstPPh
	.section	.rodata.str1.1
.LC4:
	.string	"Results not equal: line "
.LC5:
	.string	"\n"
	.text
	.p2align 5,,31
	.globl	_Z5checkRK5Demux
	.type	_Z5checkRK5Demux, @function
_Z5checkRK5Demux:
.LFB1666:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	movl	$2048, %edi
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	_Znam
	xorl	%edi, %edi
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	call	srand
	.p2align 5
.L155:
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
	jne	.L155
	movl	$256, %edi
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	_Znam
	movq	%rax, %rbp
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L157:
	testb	$2, %dl
	jne	.L278
.L158:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L279
.L159:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L160
	movl	$0, (%rdi)
	addq	$4, %rdi
.L160:
	testb	$2, %sil
	je	.L161
	movw	$0, (%rdi)
	addq	$2, %rdi
.L161:
	andl	$1, %esi
	je	.L162
	movb	$0, (%rdi)
.L162:
	addq	$1, %r13
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%r12, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, 0(%rbp,%r13,8)
	movq	%rax, %rdx
	jne	.L280
.L246:
	testb	$2, %dl
	jne	.L281
.L247:
	testb	$4, %dl
	jne	.L282
.L248:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L249
	movl	$0, (%rdi)
	addq	$4, %rdi
.L249:
	testb	$2, %sil
	je	.L250
	movw	$0, (%rdi)
	addq	$2, %rdi
.L250:
	andl	$1, %esi
	je	.L251
	movb	$0, (%rdi)
.L251:
	addq	$1, %r13
	cmpq	$32, %r13
	je	.L283
.L163:
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%r12, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, 0(%rbp,%r13,8)
	movq	%rax, %rdx
	je	.L157
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L158
	.p2align 5
.L278:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L159
	.p2align 5
.L279:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L282:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L281:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L280:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L283:
	movl	$256, %edi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	call	_Znam
	movq	%rax, %r12
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L165:
	testb	$2, %dl
	jne	.L284
.L166:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L285
.L167:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r13, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L168
	movl	$0, (%rdi)
	addq	$4, %rdi
.L168:
	testb	$2, %sil
	je	.L169
	movw	$0, (%rdi)
	addq	$2, %rdi
.L169:
	andl	$1, %esi
	je	.L170
	movb	$0, (%rdi)
.L170:
	addq	$1, %r14
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%r13, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, (%r12,%r14,8)
	movq	%rax, %rdx
	jne	.L286
.L239:
	testb	$2, %dl
	jne	.L287
.L240:
	testb	$4, %dl
	jne	.L288
.L241:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r13, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L242
	movl	$0, (%rdi)
	addq	$4, %rdi
.L242:
	testb	$2, %sil
	je	.L243
	movw	$0, (%rdi)
	addq	$2, %rdi
.L243:
	andl	$1, %esi
	je	.L244
	movb	$0, (%rdi)
.L244:
	addq	$1, %r14
	cmpq	$32, %r14
	je	.L289
.L171:
	movl	$64, %edx
	movl	$32, %esi
	movq	%rsp, %rdi
	call	posix_memalign
	testl	%eax, %eax
	movq	%r13, %rax
	cmove	(%rsp), %rax
	movl	$64, %esi
	testb	$1, %al
	movq	%rax, (%r12,%r14,8)
	movq	%rax, %rdx
	je	.L165
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L166
	.p2align 5
.L284:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L167
	.p2align 5
.L285:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L288:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L287:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L286:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L289:
	movzbl	(%rbx), %edx
	movq	0(%rbp), %rsi
	xorl	%eax, %eax
	movl	$2, %ecx
	movb	%dl, (%rsi)
	movzbl	1(%rbx), %r14d
	movl	$1, %esi
	movq	8(%rbp), %r13
	movb	%r14b, 0(%r13)
.L271:
	leaq	1(%rsi), %rdx
	cmpq	$2048, %rdx
	je	.L290
.L174:
	movzbl	1(%rbx,%rsi), %edi
	movq	0(%rbp,%rcx,8), %r8
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r8,%rax)
	je	.L291
.L261:
	movzbl	1(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L292
.L262:
	movzbl	2(%rbx,%rdx), %r14d
	movq	0(%rbp,%rcx,8), %r13
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r14b, 0(%r13,%rax)
	je	.L293
.L263:
	movzbl	3(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L294
.L264:
	movzbl	4(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L295
.L265:
	movzbl	5(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L296
.L266:
	movzbl	6(%rbx,%rdx), %r14d
	movq	0(%rbp,%rcx,8), %r13
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r14b, 0(%r13,%rax)
	je	.L297
.L267:
	movzbl	7(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L298
.L268:
	movzbl	8(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L299
.L269:
	movzbl	9(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L300
.L270:
	movzbl	10(%rbx,%rdx), %r13d
	leaq	10(%rdx), %rsi
	movq	0(%rbp,%rcx,8), %rdx
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r13b, (%rdx,%rax)
	jne	.L271
	leaq	1(%rsi), %rdx
	addq	$1, %rax
	xorb	%cl, %cl
	cmpq	$2048, %rdx
	jne	.L174
.L290:
	movq	(%r15), %r9
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	xorl	%r13d, %r13d
	call	*(%r9)
.L176:
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	movl	$64, %edx
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	1(%r13), %r14
	movl	$64, %edx
	movq	(%r12,%r14,8), %rsi
	movq	0(%rbp,%r14,8), %rdi
	movq	%r14, %r13
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	addq	$1, %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	2(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	3(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	4(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	5(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	6(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L274
	leaq	7(%r14), %r13
	cmpq	$32, %r13
	jne	.L176
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	_ZdlPv
.L177:
	movq	0(%rbp,%rbx,8), %rdi
	call	free
	movq	8(%rbp,%rbx,8), %rdi
	call	free
	movq	16(%rbp,%rbx,8), %rdi
	call	free
	movq	24(%rbp,%rbx,8), %rdi
	call	free
	movq	32(%rbp,%rbx,8), %rdi
	call	free
	movq	40(%rbp,%rbx,8), %rdi
	call	free
	movq	48(%rbp,%rbx,8), %rdi
	call	free
	movq	56(%rbp,%rbx,8), %rdi
	addq	$8, %rbx
	call	free
	cmpq	$32, %rbx
	jne	.L177
	movq	%rbp, %rdi
	xorb	%bl, %bl
	call	_ZdlPv
.L178:
	movq	(%r12,%rbx,8), %rdi
	call	free
	movq	8(%r12,%rbx,8), %rdi
	call	free
	movq	16(%r12,%rbx,8), %rdi
	call	free
	movq	24(%r12,%rbx,8), %rdi
	call	free
	movq	32(%r12,%rbx,8), %rdi
	call	free
	movq	40(%r12,%rbx,8), %rdi
	call	free
	movq	48(%r12,%rbx,8), %rdi
	call	free
	movq	56(%r12,%rbx,8), %rdi
	addq	$8, %rbx
	call	free
	cmpq	$32, %rbx
	jne	.L178
	movq	%r12, %rdi
	call	_ZdlPv
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
	.p2align 4,,10
	.p2align 3
.L300:
	.cfi_restore_state
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L299:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L298:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L297:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L296:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L295:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L265
	.p2align 4,,10
	.p2align 3
.L294:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L293:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L292:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L291:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L261
.L274:
	movl	$24, %edx
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	%r13d, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$1, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE1666:
	.size	_Z5checkRK5Demux, .-_Z5checkRK5Demux
	.section	.rodata.str1.1
.LC8:
	.string	": "
	.text
	.p2align 5,,31
	.globl	_Z7measureRK5Demux
	.type	_Z7measureRK5Demux, @function
_Z7measureRK5Demux:
.LFB1673:
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
	movq	%rsp, %rsi
	xorl	%edi, %edi
	call	clock_gettime
	vcvtsi2sdq	8(%rsp), %xmm2, %xmm2
	movq	(%rsp), %rdx
	vmulsd	.LC6(%rip), %xmm2, %xmm0
	imulq	$1000, %rdx, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vucomisd	.LC7(%rip), %xmm0
	jae	.L302
	vcvttsd2siq	%xmm0, %rbp
.L303:
	movl	$1000000, %r12d
	.p2align 5
.L304:
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
	jne	.L304
	movq	%rsp, %rsi
	xorl	%edi, %edi
	call	clock_gettime
	vcvtsi2sdq	8(%rsp), %xmm6, %xmm6
	movq	(%rsp), %rdi
	vmulsd	.LC6(%rip), %xmm6, %xmm4
	imulq	$1000, %rdi, %rsi
	vcvtsi2sdq	%rsi, %xmm5, %xmm5
	vaddsd	%xmm4, %xmm5, %xmm0
	vucomisd	.LC7(%rip), %xmm0
	jae	.L305
	vcvttsd2siq	%xmm0, %rax
.L306:
	movq	(%rbx), %rcx
	subq	%rbp, %rax
	movq	%rax, %rbp
	movq	-8(%rcx), %rbx
	movq	8(%rbx), %rdx
	xorl	%ebx, %ebx
	cmpb	$42, (%rdx)
	sete	%bl
	addq	%rdx, %rbx
	je	.L321
	movq	%rbx, %rdi
	call	strlen
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L309:
	movl	$2, %edx
	movl	$.LC8, %esi
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
	je	.L322
	cmpb	$0, 56(%rbp)
	je	.L311
	movzbl	67(%rbp), %eax
.L312:
	movsbl	%al, %esi
	movq	%rbx, %rdi
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
.L302:
	.cfi_restore_state
	vsubsd	.LC7(%rip), %xmm0, %xmm3
	movabsq	$-9223372036854775808, %rcx
	vcvttsd2siq	%xmm3, %rbp
	xorq	%rcx, %rbp
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L305:
	vsubsd	.LC7(%rip), %xmm0, %xmm7
	movabsq	$-9223372036854775808, %r12
	vcvttsd2siq	%xmm7, %rax
	xorq	%r12, %rax
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L311:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %r12
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%r12)
	jmp	.L312
.L321:
	movq	_ZSt4cout(%rip), %r11
	movq	-24(%r11), %rdi
	addq	$_ZSt4cout, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L309
.L322:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE1673:
	.size	_Z7measureRK5Demux, .-_Z7measureRK5Demux
	.section	.text.startup,"ax",@progbits
	.p2align 5,,31
	.globl	main
	.type	main, @function
main:
.LFB1674:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
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
	leaq	64(%rsp), %rdi
	movq	$_ZTV19Read4_Write4_Unroll+16, 64(%rsp)
	call	_Z7measureRK5Demux
	leaq	80(%rsp), %rdi
	movq	$_ZTV16Read4_Write4_SSE+16, 80(%rsp)
	call	_Z7measureRK5Demux
	leaq	96(%rsp), %rdi
	movq	$_ZTV17Read4_Write16_SSE+16, 96(%rsp)
	call	_Z7measureRK5Demux
	xorl	%eax, %eax
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1674:
	.size	main, .-main
	.p2align 5,,31
	.type	_GLOBAL__sub_I__Z8generatev, @function
_GLOBAL__sub_I__Z8generatev:
.LFB1707:
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
.LFE1707:
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
	.weak	_ZTV19Read4_Write4_Unroll
	.section	.rodata._ZTV19Read4_Write4_Unroll,"aG",@progbits,_ZTV19Read4_Write4_Unroll,comdat
	.align 16
	.type	_ZTV19Read4_Write4_Unroll, @object
	.size	_ZTV19Read4_Write4_Unroll, 24
_ZTV19Read4_Write4_Unroll:
	.quad	0
	.quad	_ZTI19Read4_Write4_Unroll
	.quad	_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh
	.weak	_ZTV16Read4_Write4_SSE
	.section	.rodata._ZTV16Read4_Write4_SSE,"aG",@progbits,_ZTV16Read4_Write4_SSE,comdat
	.align 16
	.type	_ZTV16Read4_Write4_SSE, @object
	.size	_ZTV16Read4_Write4_SSE, 24
_ZTV16Read4_Write4_SSE:
	.quad	0
	.quad	_ZTI16Read4_Write4_SSE
	.quad	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh
	.weak	_ZTV17Read4_Write16_SSE
	.section	.rodata._ZTV17Read4_Write16_SSE,"aG",@progbits,_ZTV17Read4_Write16_SSE,comdat
	.align 16
	.type	_ZTV17Read4_Write16_SSE, @object
	.size	_ZTV17Read4_Write16_SSE, 24
_ZTV17Read4_Write16_SSE:
	.quad	0
	.quad	_ZTI17Read4_Write16_SSE
	.quad	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh
	.section	.rodata
	.align 32
	.type	_ZZNK17Read4_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK17Read4_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 73
_ZZNK17Read4_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write16_SSE::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK16Read4_Write4_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK16Read4_Write4_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 72
_ZZNK16Read4_Write4_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write4_SSE::demux(const byte*, size_t, byte**) const"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 32
	.type	_ZZNK19Read4_Write4_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK19Read4_Write4_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 75
_ZZNK19Read4_Write4_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write4_Unroll::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, 68
_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write4::demux(const byte*, size_t, byte**) const"
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
	.weak	_ZTI19Read4_Write4_Unroll
	.section	.rodata._ZTI19Read4_Write4_Unroll,"aG",@progbits,_ZTI19Read4_Write4_Unroll,comdat
	.align 16
	.type	_ZTI19Read4_Write4_Unroll, @object
	.size	_ZTI19Read4_Write4_Unroll, 24
_ZTI19Read4_Write4_Unroll:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS19Read4_Write4_Unroll
	.quad	_ZTI5Demux
	.weak	_ZTI16Read4_Write4_SSE
	.section	.rodata._ZTI16Read4_Write4_SSE,"aG",@progbits,_ZTI16Read4_Write4_SSE,comdat
	.align 16
	.type	_ZTI16Read4_Write4_SSE, @object
	.size	_ZTI16Read4_Write4_SSE, 24
_ZTI16Read4_Write4_SSE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS16Read4_Write4_SSE
	.quad	_ZTI5Demux
	.weak	_ZTI17Read4_Write16_SSE
	.section	.rodata._ZTI17Read4_Write16_SSE,"aG",@progbits,_ZTI17Read4_Write16_SSE,comdat
	.align 16
	.type	_ZTI17Read4_Write16_SSE, @object
	.size	_ZTI17Read4_Write16_SSE, 24
_ZTI17Read4_Write16_SSE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS17Read4_Write16_SSE
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
	.weak	_ZTS19Read4_Write4_Unroll
	.section	.rodata._ZTS19Read4_Write4_Unroll,"aG",@progbits,_ZTS19Read4_Write4_Unroll,comdat
	.align 16
	.type	_ZTS19Read4_Write4_Unroll, @object
	.size	_ZTS19Read4_Write4_Unroll, 22
_ZTS19Read4_Write4_Unroll:
	.string	"19Read4_Write4_Unroll"
	.weak	_ZTS16Read4_Write4_SSE
	.section	.rodata._ZTS16Read4_Write4_SSE,"aG",@progbits,_ZTS16Read4_Write4_SSE,comdat
	.align 16
	.type	_ZTS16Read4_Write4_SSE, @object
	.size	_ZTS16Read4_Write4_SSE, 19
_ZTS16Read4_Write4_SSE:
	.string	"16Read4_Write4_SSE"
	.weak	_ZTS17Read4_Write16_SSE
	.section	.rodata._ZTS17Read4_Write16_SSE,"aG",@progbits,_ZTS17Read4_Write16_SSE,comdat
	.align 16
	.type	_ZTS17Read4_Write16_SSE, @object
	.size	_ZTS17Read4_Write16_SSE, 20
_ZTS17Read4_Write16_SSE:
	.string	"17Read4_Write16_SSE"
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	1
	.byte	5
	.byte	9
	.byte	13
	.byte	2
	.byte	6
	.byte	10
	.byte	14
	.byte	3
	.byte	7
	.byte	11
	.byte	15
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	2696277389
	.long	1051772663
	.align 8
.LC7:
	.long	0
	.long	1138753536
	.ident	"GCC: (GNU) 4.6.3 20120306 (Red Hat 4.6.3-2)"
	.section	.note.GNU-stack,"",@progbits
