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
.LFB1831:
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
	movl	$177, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1831:
	.size	_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh, .-_ZNK19Read4_Write4_Unroll5demuxEPKhmPPh
	.section	.text._ZNK16Read4_Write4_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK16Read4_Write4_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh
	.type	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh, @function
_ZNK16Read4_Write4_SSE5demuxEPKhmPPh:
.LFB1832:
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
	movl	$222, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1832:
	.size	_ZNK16Read4_Write4_SSE5demuxEPKhmPPh, .-_ZNK16Read4_Write4_SSE5demuxEPKhmPPh
	.section	.text._ZNK17Read4_Write16_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK17Read4_Write16_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh
	.type	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh, @function
_ZNK17Read4_Write16_SSE5demuxEPKhmPPh:
.LFB1833:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L16
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%eax, %eax
	.p2align 5
.L14:
	vmovd	64(%rsi), %xmm15
	movq	8(%rcx,%rax,8), %r8
	vmovd	(%rsi), %xmm12
	movq	16(%rcx,%rax,8), %rdi
	vpinsrd	$0x1, 96(%rsi), %xmm15, %xmm13
	vmovd	192(%rsi), %xmm10
	movq	24(%rcx,%rax,8), %rdx
	vpinsrd	$0x1, 32(%rsi), %xmm12, %xmm9
	vmovd	128(%rsi), %xmm6
	movq	(%rcx,%rax,8), %r9
	addq	$4, %rax
	vmovd	320(%rsi), %xmm1
	vmovd	256(%rsi), %xmm2
	vmovd	448(%rsi), %xmm15
	vmovd	384(%rsi), %xmm12
	vpunpcklqdq	%xmm13, %xmm9, %xmm11
	vpinsrd	$0x1, 224(%rsi), %xmm10, %xmm4
	vpinsrd	$0x1, 160(%rsi), %xmm6, %xmm8
	vpinsrd	$0x1, 352(%rsi), %xmm1, %xmm7
	vpinsrd	$0x1, 288(%rsi), %xmm2, %xmm14
	vpinsrd	$0x1, 480(%rsi), %xmm15, %xmm9
	vpinsrd	$0x1, 416(%rsi), %xmm12, %xmm13
	vpunpcklqdq	%xmm7, %xmm14, %xmm5
	vpunpcklqdq	%xmm4, %xmm8, %xmm3
	vpshufb	%xmm0, %xmm11, %xmm11
	vpunpcklqdq	%xmm9, %xmm13, %xmm10
	vpshufb	%xmm0, %xmm5, %xmm1
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm10, %xmm8
	vshufps	$238, %xmm3, %xmm11, %xmm2
	vshufps	$238, %xmm8, %xmm1, %xmm14
	vmovlhps	%xmm8, %xmm1, %xmm4
	vmovlhps	%xmm3, %xmm11, %xmm6
	vshufps	$136, %xmm14, %xmm2, %xmm15
	vshufps	$136, %xmm4, %xmm6, %xmm7
	vshufps	$221, %xmm4, %xmm6, %xmm5
	vshufps	$221, %xmm14, %xmm2, %xmm12
	vmovdqa	%xmm7, (%r9)
	vmovdqa	%xmm5, (%r8)
	vmovdqa	%xmm15, (%rdi)
	vmovdqa	%xmm12, (%rdx)
	vmovd	576(%rsi), %xmm13
	vmovd	512(%rsi), %xmm9
	vpinsrd	$0x1, 608(%rsi), %xmm13, %xmm10
	vmovd	704(%rsi), %xmm1
	vpinsrd	$0x1, 544(%rsi), %xmm9, %xmm4
	vmovd	640(%rsi), %xmm6
	vmovd	832(%rsi), %xmm15
	vmovd	768(%rsi), %xmm2
	vmovd	960(%rsi), %xmm13
	vmovd	896(%rsi), %xmm9
	vpunpcklqdq	%xmm10, %xmm4, %xmm8
	vpinsrd	$0x1, 736(%rsi), %xmm1, %xmm3
	vpinsrd	$0x1, 672(%rsi), %xmm6, %xmm11
	vpinsrd	$0x1, 864(%rsi), %xmm15, %xmm7
	vpinsrd	$0x1, 800(%rsi), %xmm2, %xmm12
	vpinsrd	$0x1, 992(%rsi), %xmm13, %xmm4
	vpinsrd	$0x1, 928(%rsi), %xmm9, %xmm10
	vpunpcklqdq	%xmm7, %xmm12, %xmm5
	vpunpcklqdq	%xmm3, %xmm11, %xmm14
	vpshufb	%xmm0, %xmm8, %xmm8
	vpunpcklqdq	%xmm4, %xmm10, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm15
	vpshufb	%xmm0, %xmm14, %xmm14
	vpshufb	%xmm0, %xmm1, %xmm11
	vshufps	$238, %xmm14, %xmm8, %xmm2
	vshufps	$238, %xmm11, %xmm15, %xmm12
	vmovlhps	%xmm11, %xmm15, %xmm3
	vmovlhps	%xmm14, %xmm8, %xmm6
	vshufps	$136, %xmm12, %xmm2, %xmm13
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm12, %xmm2, %xmm9
	vmovdqa	%xmm7, 16(%r9)
	vmovdqa	%xmm5, 16(%r8)
	vmovdqa	%xmm13, 16(%rdi)
	vmovdqa	%xmm9, 16(%rdx)
	vmovd	1088(%rsi), %xmm10
	vmovd	1024(%rsi), %xmm4
	vpinsrd	$0x1, 1120(%rsi), %xmm10, %xmm1
	vmovd	1216(%rsi), %xmm15
	vpinsrd	$0x1, 1056(%rsi), %xmm4, %xmm3
	vmovd	1152(%rsi), %xmm6
	vmovd	1344(%rsi), %xmm13
	vmovd	1280(%rsi), %xmm2
	vmovd	1472(%rsi), %xmm10
	vmovd	1408(%rsi), %xmm4
	vpunpcklqdq	%xmm1, %xmm3, %xmm11
	vpinsrd	$0x1, 1248(%rsi), %xmm15, %xmm14
	vpinsrd	$0x1, 1184(%rsi), %xmm6, %xmm8
	vpinsrd	$0x1, 1376(%rsi), %xmm13, %xmm7
	vpinsrd	$0x1, 1312(%rsi), %xmm2, %xmm9
	vpinsrd	$0x1, 1504(%rsi), %xmm10, %xmm1
	vpinsrd	$0x1, 1440(%rsi), %xmm4, %xmm3
	vpunpcklqdq	%xmm7, %xmm9, %xmm5
	vpunpcklqdq	%xmm14, %xmm8, %xmm12
	vpshufb	%xmm0, %xmm11, %xmm11
	vpunpcklqdq	%xmm1, %xmm3, %xmm15
	vpshufb	%xmm0, %xmm5, %xmm13
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm8
	vshufps	$238, %xmm12, %xmm11, %xmm2
	vshufps	$238, %xmm8, %xmm13, %xmm9
	vmovlhps	%xmm8, %xmm13, %xmm14
	vmovlhps	%xmm12, %xmm11, %xmm6
	vshufps	$136, %xmm9, %xmm2, %xmm10
	vshufps	$136, %xmm14, %xmm6, %xmm7
	vshufps	$221, %xmm14, %xmm6, %xmm5
	vshufps	$221, %xmm9, %xmm2, %xmm4
	vmovdqa	%xmm7, 32(%r9)
	vmovdqa	%xmm5, 32(%r8)
	vmovdqa	%xmm10, 32(%rdi)
	vmovdqa	%xmm4, 32(%rdx)
	vmovd	1600(%rsi), %xmm3
	vmovd	1536(%rsi), %xmm1
	vpinsrd	$0x1, 1632(%rsi), %xmm3, %xmm15
	vmovd	1728(%rsi), %xmm13
	vpinsrd	$0x1, 1568(%rsi), %xmm1, %xmm14
	vmovd	1664(%rsi), %xmm6
	vmovd	1856(%rsi), %xmm10
	vmovd	1792(%rsi), %xmm2
	vmovd	1984(%rsi), %xmm3
	vmovd	1920(%rsi), %xmm1
	vpunpcklqdq	%xmm15, %xmm14, %xmm8
	vpinsrd	$0x1, 1760(%rsi), %xmm13, %xmm12
	vpinsrd	$0x1, 1696(%rsi), %xmm6, %xmm11
	vpinsrd	$0x1, 1888(%rsi), %xmm10, %xmm7
	vpinsrd	$0x1, 1824(%rsi), %xmm2, %xmm4
	vpinsrd	$0x1, 2016(%rsi), %xmm3, %xmm14
	vpinsrd	$0x1, 1952(%rsi), %xmm1, %xmm15
	addq	$4, %rsi
	cmpq	$32, %rax
	vpunpcklqdq	%xmm7, %xmm4, %xmm5
	vpunpcklqdq	%xmm12, %xmm11, %xmm9
	vpshufb	%xmm0, %xmm8, %xmm8
	vpunpcklqdq	%xmm14, %xmm15, %xmm13
	vpshufb	%xmm0, %xmm5, %xmm10
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm13, %xmm11
	vshufps	$238, %xmm9, %xmm8, %xmm2
	vshufps	$238, %xmm11, %xmm10, %xmm4
	vmovlhps	%xmm11, %xmm10, %xmm12
	vmovlhps	%xmm9, %xmm8, %xmm6
	vshufps	$136, %xmm4, %xmm2, %xmm3
	vshufps	$136, %xmm12, %xmm6, %xmm7
	vshufps	$221, %xmm12, %xmm6, %xmm5
	vshufps	$221, %xmm4, %xmm2, %xmm1
	vmovdqa	%xmm7, 48(%r9)
	vmovdqa	%xmm5, 48(%r8)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm1, 48(%rdx)
	jne	.L14
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L16:
	.cfi_restore_state
	movl	$_ZZNK17Read4_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$252, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1833:
	.size	_ZNK17Read4_Write16_SSE5demuxEPKhmPPh, .-_ZNK17Read4_Write16_SSE5demuxEPKhmPPh
	.section	.text._ZNK17Read4_Write32_AVX5demuxEPKhmPPh,"axG",@progbits,_ZNK17Read4_Write32_AVX5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK17Read4_Write32_AVX5demuxEPKhmPPh
	.type	_ZNK17Read4_Write32_AVX5demuxEPKhmPPh, @function
_ZNK17Read4_Write32_AVX5demuxEPKhmPPh:
.LFB1839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	cmpq	$2048, %rdx
	jne	.L21
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%eax, %eax
	.p2align 5
.L19:
	vmovd	64(%rsi), %xmm5
	movq	8(%rcx,%rax,8), %r8
	vmovd	(%rsi), %xmm9
	movq	16(%rcx,%rax,8), %rdi
	vmovd	192(%rsi), %xmm11
	movq	24(%rcx,%rax,8), %rdx
	vmovd	128(%rsi), %xmm15
	movq	(%rcx,%rax,8), %r9
	addq	$4, %rax
	vmovd	320(%rsi), %xmm13
	vmovd	256(%rsi), %xmm3
	vpinsrd	$0x1, 96(%rsi), %xmm5, %xmm1
	vmovd	448(%rsi), %xmm5
	vpinsrd	$0x1, 32(%rsi), %xmm9, %xmm4
	vmovd	384(%rsi), %xmm9
	vpinsrd	$0x1, 224(%rsi), %xmm11, %xmm8
	vpinsrd	$0x1, 160(%rsi), %xmm15, %xmm6
	vmovd	576(%rsi), %xmm15
	vpinsrd	$0x1, 352(%rsi), %xmm13, %xmm7
	vpinsrd	$0x1, 288(%rsi), %xmm3, %xmm10
	vpunpcklqdq	%xmm1, %xmm4, %xmm2
	vpunpcklqdq	%xmm8, %xmm6, %xmm12
	vmovd	512(%rsi), %xmm8
	vpinsrd	$0x1, 480(%rsi), %xmm5, %xmm4
	vpinsrd	$0x1, 416(%rsi), %xmm9, %xmm1
	vpunpcklqdq	%xmm7, %xmm10, %xmm14
	vmovd	704(%rsi), %xmm10
	vmovd	640(%rsi), %xmm7
	vpshufb	%xmm0, %xmm2, %xmm2
	vpinsrd	$0x1, 608(%rsi), %xmm15, %xmm6
	vmovd	768(%rsi), %xmm15
	vpinsrd	$0x1, 544(%rsi), %xmm8, %xmm13
	vpinsrd	$0x1, 736(%rsi), %xmm10, %xmm5
	vmovd	960(%rsi), %xmm10
	vpinsrd	$0x1, 672(%rsi), %xmm7, %xmm9
	vmovd	896(%rsi), %xmm7
	vpunpcklqdq	%xmm4, %xmm1, %xmm11
	vmovd	832(%rsi), %xmm4
	vpunpcklqdq	%xmm6, %xmm13, %xmm3
	vpinsrd	$0x1, 864(%rsi), %xmm4, %xmm8
	vpinsrd	$0x1, 800(%rsi), %xmm15, %xmm6
	vmovdqa	%xmm2, %xmm15
	vpunpcklqdq	%xmm5, %xmm9, %xmm1
	vpinsrd	$0x1, 992(%rsi), %xmm10, %xmm5
	vpinsrd	$0x1, 928(%rsi), %xmm7, %xmm9
	vpunpcklqdq	%xmm8, %xmm6, %xmm13
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm14, %xmm14
	vpunpcklqdq	%xmm5, %xmm9, %xmm4
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovdqa	%xmm12, %xmm8
	vpshufb	%xmm0, %xmm13, %xmm6
	vmovdqa	%xmm14, %xmm13
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm11, %xmm7
	vpshufb	%xmm0, %xmm4, %xmm10
	vinsertf128	$0x1, %xmm6, %ymm13, %ymm2
	vinsertf128	$0x1, %xmm3, %ymm15, %ymm15
	vinsertf128	$0x1, %xmm10, %ymm7, %ymm4
	vinsertf128	$0x1, %xmm1, %ymm8, %ymm3
	vshufps	$68, %ymm4, %ymm2, %ymm5
	vshufps	$68, %ymm3, %ymm15, %ymm9
	vshufps	$238, %ymm4, %ymm2, %ymm1
	vshufps	$238, %ymm3, %ymm15, %ymm12
	vshufps	$136, %ymm5, %ymm9, %ymm8
	vshufps	$221, %ymm5, %ymm9, %ymm14
	vshufps	$136, %ymm1, %ymm12, %ymm13
	vshufps	$221, %ymm1, %ymm12, %ymm11
	vmovdqa	%ymm8, (%r9)
	vmovdqa	%ymm14, (%r8)
	vmovdqa	%ymm13, (%rdi)
	vmovdqa	%ymm11, (%rdx)
	vmovd	1088(%rsi), %xmm10
	vmovd	1024(%rsi), %xmm6
	vmovd	1216(%rsi), %xmm15
	vmovd	1152(%rsi), %xmm5
	vmovd	1344(%rsi), %xmm1
	vmovd	1280(%rsi), %xmm8
	vpinsrd	$0x1, 1120(%rsi), %xmm10, %xmm7
	vmovd	1472(%rsi), %xmm10
	vpinsrd	$0x1, 1056(%rsi), %xmm6, %xmm9
	vmovd	1408(%rsi), %xmm6
	vpinsrd	$0x1, 1248(%rsi), %xmm15, %xmm3
	vpinsrd	$0x1, 1184(%rsi), %xmm5, %xmm4
	vmovd	1600(%rsi), %xmm5
	vpinsrd	$0x1, 1376(%rsi), %xmm1, %xmm13
	vpinsrd	$0x1, 1312(%rsi), %xmm8, %xmm14
	vpunpcklqdq	%xmm7, %xmm9, %xmm2
	vpunpcklqdq	%xmm3, %xmm4, %xmm12
	vmovd	1536(%rsi), %xmm3
	vpinsrd	$0x1, 1504(%rsi), %xmm10, %xmm9
	vpinsrd	$0x1, 1440(%rsi), %xmm6, %xmm7
	vpunpcklqdq	%xmm13, %xmm14, %xmm11
	vmovd	1728(%rsi), %xmm14
	vmovd	1664(%rsi), %xmm13
	vpshufb	%xmm0, %xmm2, %xmm2
	vpinsrd	$0x1, 1632(%rsi), %xmm5, %xmm4
	vmovd	1792(%rsi), %xmm5
	vpinsrd	$0x1, 1568(%rsi), %xmm3, %xmm1
	vpinsrd	$0x1, 1760(%rsi), %xmm14, %xmm10
	vmovd	1984(%rsi), %xmm14
	vpinsrd	$0x1, 1696(%rsi), %xmm13, %xmm6
	vmovd	1920(%rsi), %xmm13
	vpunpcklqdq	%xmm9, %xmm7, %xmm15
	vmovd	1856(%rsi), %xmm9
	vpunpcklqdq	%xmm4, %xmm1, %xmm8
	vpinsrd	$0x1, 1888(%rsi), %xmm9, %xmm3
	vpinsrd	$0x1, 1824(%rsi), %xmm5, %xmm4
	vmovdqa	%xmm2, %xmm5
	vpunpcklqdq	%xmm10, %xmm6, %xmm7
	vpinsrd	$0x1, 2016(%rsi), %xmm14, %xmm6
	vpinsrd	$0x1, 1952(%rsi), %xmm13, %xmm10
	addq	$4, %rsi
	cmpq	$32, %rax
	vpunpcklqdq	%xmm3, %xmm4, %xmm1
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm11, %xmm11
	vpunpcklqdq	%xmm6, %xmm10, %xmm9
	vpshufb	%xmm0, %xmm15, %xmm15
	vmovdqa	%xmm12, %xmm3
	vpshufb	%xmm0, %xmm1, %xmm4
	vmovdqa	%xmm11, %xmm1
	vpshufb	%xmm0, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm9, %xmm14
	vmovdqa	%xmm15, %xmm13
	vpshufb	%xmm0, %xmm8, %xmm8
	vinsertf128	$0x1, %xmm7, %ymm3, %ymm9
	vinsertf128	$0x1, %xmm4, %ymm1, %ymm10
	vinsertf128	$0x1, %xmm8, %ymm5, %ymm8
	vinsertf128	$0x1, %xmm14, %ymm13, %ymm11
	vshufps	$68, %ymm9, %ymm8, %ymm6
	vshufps	$68, %ymm11, %ymm10, %ymm12
	vshufps	$238, %ymm11, %ymm10, %ymm4
	vshufps	$238, %ymm9, %ymm8, %ymm2
	vshufps	$136, %ymm12, %ymm6, %ymm7
	vshufps	$221, %ymm12, %ymm6, %ymm5
	vshufps	$136, %ymm4, %ymm2, %ymm3
	vshufps	$221, %ymm4, %ymm2, %ymm1
	vmovdqa	%ymm7, 32(%r9)
	vmovdqa	%ymm5, 32(%r8)
	vmovdqa	%ymm3, 32(%rdi)
	vmovdqa	%ymm1, 32(%rdx)
	jne	.L19
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	vzeroupper
	ret
.L21:
	.cfi_restore_state
	movl	$_ZZNK17Read4_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$577, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1839:
	.size	_ZNK17Read4_Write32_AVX5demuxEPKhmPPh, .-_ZNK17Read4_Write32_AVX5demuxEPKhmPPh
	.section	.text._ZNK6Write45demuxEPKhmPPh,"axG",@progbits,_ZNK6Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write45demuxEPKhmPPh
	.type	_ZNK6Write45demuxEPKhmPPh, @function
_ZNK6Write45demuxEPKhmPPh:
.LFB1823:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L26
	xorl	%edi, %edi
	.p2align 5
.L24:
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
	jne	.L24
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	movl	$_ZZNK6Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$74, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1823:
	.size	_ZNK6Write45demuxEPKhmPPh, .-_ZNK6Write45demuxEPKhmPPh
	.section	.text._ZNK6Write85demuxEPKhmPPh,"axG",@progbits,_ZNK6Write85demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK6Write85demuxEPKhmPPh
	.type	_ZNK6Write85demuxEPKhmPPh, @function
_ZNK6Write85demuxEPKhmPPh:
.LFB1825:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpq	$2048, %rdx
	jne	.L31
	xorl	%r8d, %r8d
	.p2align 5
.L29:
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
	jne	.L29
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	movl	$_ZZNK6Write85demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$104, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1825:
	.size	_ZNK6Write85demuxEPKhmPPh, .-_ZNK6Write85demuxEPKhmPPh
	.section	.text._ZNK12Read4_Write45demuxEPKhmPPh,"axG",@progbits,_ZNK12Read4_Write45demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK12Read4_Write45demuxEPKhmPPh
	.type	_ZNK12Read4_Write45demuxEPKhmPPh, @function
_ZNK12Read4_Write45demuxEPKhmPPh:
.LFB1830:
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
	jne	.L38
	xorl	%r14d, %r14d
	.p2align 5
.L33:
	movq	0(%r13,%r14,8), %r12
	movq	8(%r13,%r14,8), %rbp
	leaq	(%rsi,%r14), %r8
	movq	16(%r13,%r14,8), %r11
	movq	24(%r13,%r14,8), %r10
	xorl	%edi, %edi
	.p2align 5
.L34:
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
	jne	.L34
	addq	$4, %r14
	cmpq	$32, %r14
	jne	.L33
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
.L38:
	.cfi_restore_state
	movl	$_ZZNK12Read4_Write45demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$149, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1830:
	.size	_ZNK12Read4_Write45demuxEPKhmPPh, .-_ZNK12Read4_Write45demuxEPKhmPPh
	.section	.text._ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh,"axG",@progbits,_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh
	.type	_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh, @function
_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh:
.LFB1841:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$32, %rsp
	cmpq	$2048, %rdx
	jne	.L43
	.cfi_offset 3, -32
	.cfi_offset 12, -24
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%eax, %eax
.L41:
	vmovq	64(%rsi), %xmm9
	movq	(%rcx,%rax,8), %r12
	vmovq	(%rsi), %xmm10
	movq	8(%rcx,%rax,8), %rbx
	vpinsrq	$0x1, 96(%rsi), %xmm9, %xmm4
	vmovq	192(%rsi), %xmm13
	movq	16(%rcx,%rax,8), %r11
	vpinsrq	$0x1, 32(%rsi), %xmm10, %xmm11
	vmovq	128(%rsi), %xmm2
	movq	24(%rcx,%rax,8), %r10
	vmovq	320(%rsi), %xmm3
	movq	32(%rcx,%rax,8), %r9
	vmovq	256(%rsi), %xmm15
	movq	40(%rcx,%rax,8), %r8
	vpinsrq	$0x1, 224(%rsi), %xmm13, %xmm6
	vmovq	384(%rsi), %xmm13
	movq	48(%rcx,%rax,8), %rdi
	vpinsrq	$0x1, 160(%rsi), %xmm2, %xmm8
	movq	56(%rcx,%rax,8), %rdx
	addq	$8, %rax
	vpinsrq	$0x1, 352(%rsi), %xmm3, %xmm1
	vpinsrq	$0x1, 288(%rsi), %xmm15, %xmm9
	vmovq	512(%rsi), %xmm15
	vshufps	$136, %xmm4, %xmm11, %xmm14
	vshufps	$221, %xmm4, %xmm11, %xmm7
	vmovq	448(%rsi), %xmm11
	vpinsrq	$0x1, 416(%rsi), %xmm13, %xmm2
	vshufps	$136, %xmm6, %xmm8, %xmm12
	vshufps	$221, %xmm6, %xmm8, %xmm5
	vshufps	$136, %xmm1, %xmm9, %xmm10
	vpinsrq	$0x1, 480(%rsi), %xmm11, %xmm6
	vshufps	$221, %xmm1, %xmm9, %xmm4
	vmovq	576(%rsi), %xmm1
	vpshufb	%xmm0, %xmm14, %xmm14
	vpinsrq	$0x1, 608(%rsi), %xmm1, %xmm9
	vmovq	640(%rsi), %xmm1
	vpinsrq	$0x1, 544(%rsi), %xmm15, %xmm11
	vshufps	$136, %xmm6, %xmm2, %xmm8
	vshufps	$221, %xmm6, %xmm2, %xmm3
	vmovq	704(%rsi), %xmm2
	vpinsrq	$0x1, 672(%rsi), %xmm1, %xmm15
	vshufps	$136, %xmm9, %xmm11, %xmm13
	vshufps	$221, %xmm9, %xmm11, %xmm6
	vpinsrq	$0x1, 736(%rsi), %xmm2, %xmm9
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm8, %xmm8
	vshufps	$221, %xmm9, %xmm15, %xmm2
	vshufps	$136, %xmm9, %xmm15, %xmm11
	vmovq	832(%rsi), %xmm9
	vmovq	768(%rsi), %xmm15
	vpshufb	%xmm0, %xmm2, %xmm1
	vpinsrq	$0x1, 800(%rsi), %xmm15, %xmm2
	vmovdqa	%xmm1, 16(%rsp)
	vpinsrq	$0x1, 864(%rsi), %xmm9, %xmm1
	vpshufb	%xmm0, %xmm11, %xmm11
	vpshufb	%xmm0, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm5, %xmm5
	vshufps	$221, %xmm1, %xmm2, %xmm15
	vshufps	$136, %xmm1, %xmm2, %xmm9
	vpshufb	%xmm0, %xmm4, %xmm4
	vpshufb	%xmm0, %xmm15, %xmm2
	vpshufb	%xmm0, %xmm9, %xmm9
	vpshufb	%xmm0, %xmm13, %xmm13
	vmovdqa	%xmm2, (%rsp)
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm6, %xmm6
	vmovq	896(%rsi), %xmm15
	vmovdqa	%xmm3, %xmm3
	vmovq	960(%rsi), %xmm1
	vpinsrq	$0x1, 928(%rsi), %xmm15, %xmm2
	vpinsrq	$0x1, 992(%rsi), %xmm1, %xmm1
	vshufps	$136, %xmm1, %xmm2, %xmm15
	vshufps	$221, %xmm1, %xmm2, %xmm1
	vmovdqa	%xmm14, %xmm2
	vmovdqa	%xmm12, %xmm14
	vmovdqa	%xmm7, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vmovdqa	%xmm4, %xmm7
	vinsertf128	$0x1, %xmm11, %ymm14, %ymm14
	vmovdqa	%xmm10, %xmm11
	vmovdqa	%xmm5, %xmm10
	vinsertf128	$0x1, %xmm13, %ymm2, %ymm13
	vinsertf128	$0x1, %xmm9, %ymm11, %ymm11
	vmovdqa	%xmm8, %xmm9
	vpshufb	%xmm0, %xmm1, %xmm1
	vinsertf128	$0x1, %xmm15, %ymm9, %ymm8
	vinsertf128	$0x1, (%rsp), %ymm7, %ymm4
	vinsertf128	$0x1, 16(%rsp), %ymm10, %ymm10
	vshufps	$68, %ymm8, %ymm11, %ymm5
	vshufps	$68, %ymm14, %ymm13, %ymm2
	vinsertf128	$0x1, %xmm6, %ymm12, %ymm6
	vinsertf128	$0x1, %xmm1, %ymm3, %ymm3
	vshufps	$136, %ymm5, %ymm2, %ymm12
	vshufps	$68, %ymm10, %ymm6, %ymm7
	vshufps	$221, %ymm5, %ymm2, %ymm1
	vshufps	$238, %ymm8, %ymm11, %ymm9
	vmovdqa	%ymm12, (%r12)
	vshufps	$68, %ymm3, %ymm4, %ymm2
	vshufps	$238, %ymm10, %ymm6, %ymm5
	vmovdqa	%ymm1, (%rbx)
	vshufps	$238, %ymm14, %ymm13, %ymm15
	vshufps	$238, %ymm3, %ymm4, %ymm3
	vshufps	$136, %ymm2, %ymm7, %ymm8
	vshufps	$136, %ymm9, %ymm15, %ymm11
	vshufps	$221, %ymm9, %ymm15, %ymm14
	vshufps	$221, %ymm2, %ymm7, %ymm12
	vshufps	$136, %ymm3, %ymm5, %ymm15
	vmovdqa	%ymm11, (%r11)
	vshufps	$221, %ymm3, %ymm5, %ymm1
	vmovdqa	%ymm14, (%r10)
	vmovdqa	%ymm8, (%r9)
	vmovdqa	%ymm12, (%r8)
	vmovdqa	%ymm15, (%rdi)
	vmovdqa	%ymm1, (%rdx)
	vmovq	1088(%rsi), %xmm9
	vmovq	1024(%rsi), %xmm10
	vpinsrq	$0x1, 1120(%rsi), %xmm9, %xmm4
	vmovq	1216(%rsi), %xmm13
	vpinsrq	$0x1, 1056(%rsi), %xmm10, %xmm11
	vmovq	1152(%rsi), %xmm2
	vmovq	1344(%rsi), %xmm3
	vmovq	1280(%rsi), %xmm15
	vpinsrq	$0x1, 1248(%rsi), %xmm13, %xmm6
	vmovq	1408(%rsi), %xmm13
	vpinsrq	$0x1, 1184(%rsi), %xmm2, %xmm8
	vpinsrq	$0x1, 1376(%rsi), %xmm3, %xmm1
	vpinsrq	$0x1, 1312(%rsi), %xmm15, %xmm9
	vmovq	1536(%rsi), %xmm15
	vshufps	$136, %xmm4, %xmm11, %xmm14
	vshufps	$221, %xmm4, %xmm11, %xmm7
	vmovq	1472(%rsi), %xmm11
	vpinsrq	$0x1, 1440(%rsi), %xmm13, %xmm2
	vshufps	$136, %xmm6, %xmm8, %xmm12
	vshufps	$221, %xmm6, %xmm8, %xmm5
	vshufps	$136, %xmm1, %xmm9, %xmm10
	vpinsrq	$0x1, 1504(%rsi), %xmm11, %xmm6
	vshufps	$221, %xmm1, %xmm9, %xmm4
	vmovq	1600(%rsi), %xmm1
	vpshufb	%xmm0, %xmm14, %xmm14
	vpinsrq	$0x1, 1632(%rsi), %xmm1, %xmm9
	vmovq	1664(%rsi), %xmm1
	vpinsrq	$0x1, 1568(%rsi), %xmm15, %xmm11
	vshufps	$136, %xmm6, %xmm2, %xmm8
	vshufps	$221, %xmm6, %xmm2, %xmm3
	vmovq	1728(%rsi), %xmm2
	vpinsrq	$0x1, 1696(%rsi), %xmm1, %xmm15
	vshufps	$136, %xmm9, %xmm11, %xmm13
	vshufps	$221, %xmm9, %xmm11, %xmm6
	vpinsrq	$0x1, 1760(%rsi), %xmm2, %xmm9
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm12, %xmm12
	vshufps	$221, %xmm9, %xmm15, %xmm2
	vshufps	$136, %xmm9, %xmm15, %xmm11
	vpshufb	%xmm0, %xmm13, %xmm13
	vmovdqa	%xmm12, %xmm12
	vpshufb	%xmm0, %xmm2, %xmm1
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm1, 16(%rsp)
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovdqa	%xmm5, %xmm5
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	%xmm4, %xmm4
	vpshufb	%xmm0, %xmm3, %xmm3
	vmovq	1856(%rsi), %xmm9
	vinsertf128	$0x1, %xmm11, %ymm12, %ymm11
	vmovq	1792(%rsi), %xmm15
	vpinsrq	$0x1, 1888(%rsi), %xmm9, %xmm1
	vmovdqa	%xmm3, %xmm12
	vpinsrq	$0x1, 1824(%rsi), %xmm15, %xmm2
	vpshufb	%xmm0, %xmm6, %xmm6
	vinsertf128	$0x1, 16(%rsp), %ymm5, %ymm5
	vshufps	$221, %xmm1, %xmm2, %xmm15
	vshufps	$136, %xmm1, %xmm2, %xmm9
	vmovq	1984(%rsi), %xmm1
	vpinsrq	$0x1, 2016(%rsi), %xmm1, %xmm1
	vpshufb	%xmm0, %xmm15, %xmm2
	vmovq	1920(%rsi), %xmm15
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovdqa	%xmm2, (%rsp)
	vpinsrq	$0x1, 1952(%rsi), %xmm15, %xmm2
	addq	$8, %rsi
	cmpq	$32, %rax
	vinsertf128	$0x1, (%rsp), %ymm4, %ymm4
	vshufps	$136, %xmm1, %xmm2, %xmm15
	vshufps	$221, %xmm1, %xmm2, %xmm1
	vmovdqa	%xmm14, %xmm2
	vmovdqa	%xmm10, %xmm14
	vmovdqa	%xmm7, %xmm10
	vpshufb	%xmm0, %xmm15, %xmm15
	vinsertf128	$0x1, %xmm13, %ymm2, %ymm13
	vmovdqa	%xmm8, %xmm2
	vinsertf128	$0x1, %xmm9, %ymm14, %ymm9
	vinsertf128	$0x1, %xmm15, %ymm2, %ymm8
	vpshufb	%xmm0, %xmm1, %xmm1
	vinsertf128	$0x1, %xmm6, %ymm10, %ymm10
	vshufps	$68, %ymm8, %ymm9, %ymm7
	vshufps	$68, %ymm11, %ymm13, %ymm6
	vinsertf128	$0x1, %xmm1, %ymm12, %ymm12
	vshufps	$238, %ymm8, %ymm9, %ymm2
	vshufps	$136, %ymm7, %ymm6, %ymm3
	vshufps	$221, %ymm7, %ymm6, %ymm1
	vshufps	$238, %ymm11, %ymm13, %ymm14
	vshufps	$68, %ymm12, %ymm4, %ymm9
	vmovdqa	%ymm3, 32(%r12)
	vshufps	$68, %ymm5, %ymm10, %ymm11
	vmovdqa	%ymm1, 32(%rbx)
	vshufps	$238, %ymm12, %ymm4, %ymm4
	vshufps	$238, %ymm5, %ymm10, %ymm6
	vshufps	$136, %ymm2, %ymm14, %ymm13
	vshufps	$221, %ymm2, %ymm14, %ymm15
	vshufps	$136, %ymm9, %ymm11, %ymm7
	vshufps	$221, %ymm9, %ymm11, %ymm2
	vmovdqa	%ymm13, 32(%r11)
	vshufps	$136, %ymm4, %ymm6, %ymm3
	vmovdqa	%ymm15, 32(%r10)
	vshufps	$221, %ymm4, %ymm6, %ymm1
	vmovdqa	%ymm7, 32(%r9)
	vmovdqa	%ymm2, 32(%r8)
	vmovdqa	%ymm3, 32(%rdi)
	vmovdqa	%ymm1, 32(%rdx)
	jne	.L41
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	vzeroupper
	ret
.L43:
	.cfi_restore_state
	movl	$_ZZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$701, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1841:
	.size	_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh, .-_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh
	.section	.text._ZNK17Read8_Write32_AVX5demuxEPKhmPPh,"axG",@progbits,_ZNK17Read8_Write32_AVX5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK17Read8_Write32_AVX5demuxEPKhmPPh
	.type	_ZNK17Read8_Write32_AVX5demuxEPKhmPPh, @function
_ZNK17Read8_Write32_AVX5demuxEPKhmPPh:
.LFB1840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$32, %rsp
	cmpq	$2048, %rdx
	jne	.L50
	.cfi_offset 3, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%edi, %edi
.L45:
	movq	(%rcx,%rdi,8), %r14
	movq	8(%rcx,%rdi,8), %r13
	leaq	(%rsi,%rdi), %rax
	movq	16(%rcx,%rdi,8), %r12
	movq	24(%rcx,%rdi,8), %rbx
	xorl	%edx, %edx
	movq	32(%rcx,%rdi,8), %r11
	movq	40(%rcx,%rdi,8), %r10
	movq	48(%rcx,%rdi,8), %r9
	movq	56(%rcx,%rdi,8), %r8
.L46:
	vmovq	64(%rax), %xmm9
	vmovq	(%rax), %xmm10
	vpinsrq	$0x1, 96(%rax), %xmm9, %xmm4
	vmovq	192(%rax), %xmm13
	vpinsrq	$0x1, 32(%rax), %xmm10, %xmm11
	vmovq	128(%rax), %xmm2
	vmovq	320(%rax), %xmm3
	vmovq	256(%rax), %xmm15
	vpinsrq	$0x1, 224(%rax), %xmm13, %xmm6
	vmovq	384(%rax), %xmm13
	vpinsrq	$0x1, 160(%rax), %xmm2, %xmm8
	vpinsrq	$0x1, 352(%rax), %xmm3, %xmm1
	vpinsrq	$0x1, 288(%rax), %xmm15, %xmm9
	vmovq	512(%rax), %xmm15
	vshufps	$136, %xmm4, %xmm11, %xmm14
	vshufps	$221, %xmm4, %xmm11, %xmm7
	vmovq	448(%rax), %xmm11
	vpinsrq	$0x1, 416(%rax), %xmm13, %xmm2
	vshufps	$136, %xmm6, %xmm8, %xmm12
	vshufps	$221, %xmm6, %xmm8, %xmm5
	vshufps	$136, %xmm1, %xmm9, %xmm10
	vpinsrq	$0x1, 480(%rax), %xmm11, %xmm6
	vshufps	$221, %xmm1, %xmm9, %xmm4
	vmovq	576(%rax), %xmm1
	vpshufb	%xmm0, %xmm14, %xmm14
	vpinsrq	$0x1, 608(%rax), %xmm1, %xmm9
	vmovq	640(%rax), %xmm1
	vpinsrq	$0x1, 544(%rax), %xmm15, %xmm11
	vshufps	$136, %xmm6, %xmm2, %xmm8
	vshufps	$221, %xmm6, %xmm2, %xmm3
	vmovq	704(%rax), %xmm2
	vpinsrq	$0x1, 672(%rax), %xmm1, %xmm15
	vshufps	$136, %xmm9, %xmm11, %xmm13
	vshufps	$221, %xmm9, %xmm11, %xmm6
	vpinsrq	$0x1, 736(%rax), %xmm2, %xmm9
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm8, %xmm8
	vpshufb	%xmm0, %xmm12, %xmm12
	vshufps	$221, %xmm9, %xmm15, %xmm2
	vshufps	$136, %xmm9, %xmm15, %xmm11
	vmovq	832(%rax), %xmm9
	vmovq	768(%rax), %xmm15
	vmovdqa	%xmm12, %xmm12
	vpshufb	%xmm0, %xmm2, %xmm1
	vpinsrq	$0x1, 800(%rax), %xmm15, %xmm2
	vmovdqa	%xmm1, 16(%rsp)
	vpinsrq	$0x1, 864(%rax), %xmm9, %xmm1
	vpshufb	%xmm0, %xmm13, %xmm13
	vpshufb	%xmm0, %xmm5, %xmm5
	vpshufb	%xmm0, %xmm4, %xmm4
	vshufps	$221, %xmm1, %xmm2, %xmm15
	vshufps	$136, %xmm1, %xmm2, %xmm9
	vmovq	960(%rax), %xmm1
	vpinsrq	$0x1, 992(%rax), %xmm1, %xmm1
	vmovdqa	%xmm5, %xmm5
	vmovdqa	%xmm4, %xmm4
	vpshufb	%xmm0, %xmm15, %xmm2
	vmovq	896(%rax), %xmm15
	vpshufb	%xmm0, %xmm11, %xmm11
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovdqa	%xmm2, (%rsp)
	vpinsrq	$0x1, 928(%rax), %xmm15, %xmm2
	addq	$1024, %rax
	vpshufb	%xmm0, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm11, %ymm12, %ymm11
	vshufps	$136, %xmm1, %xmm2, %xmm15
	vshufps	$221, %xmm1, %xmm2, %xmm1
	vmovdqa	%xmm14, %xmm2
	vmovdqa	%xmm10, %xmm14
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm15, %xmm15
	vmovdqa	%xmm7, %xmm10
	vinsertf128	$0x1, %xmm13, %ymm2, %ymm13
	vmovdqa	%xmm8, %xmm2
	vinsertf128	$0x1, %xmm9, %ymm14, %ymm9
	vmovdqa	%xmm3, %xmm12
	vinsertf128	$0x1, %xmm15, %ymm2, %ymm8
	vpshufb	%xmm0, %xmm1, %xmm1
	vinsertf128	$0x1, 16(%rsp), %ymm5, %ymm5
	vinsertf128	$0x1, (%rsp), %ymm4, %ymm4
	vshufps	$68, %ymm8, %ymm9, %ymm7
	vinsertf128	$0x1, %xmm6, %ymm10, %ymm10
	vinsertf128	$0x1, %xmm1, %ymm12, %ymm12
	vshufps	$68, %ymm11, %ymm13, %ymm6
	vshufps	$238, %ymm8, %ymm9, %ymm2
	vshufps	$238, %ymm11, %ymm13, %ymm14
	vshufps	$136, %ymm7, %ymm6, %ymm3
	vshufps	$221, %ymm7, %ymm6, %ymm1
	vshufps	$68, %ymm12, %ymm4, %ymm9
	vshufps	$68, %ymm5, %ymm10, %ymm11
	vmovdqa	%ymm3, (%r14,%rdx)
	vshufps	$238, %ymm12, %ymm4, %ymm4
	vmovdqa	%ymm1, 0(%r13,%rdx)
	vshufps	$238, %ymm5, %ymm10, %ymm6
	vshufps	$136, %ymm2, %ymm14, %ymm13
	vshufps	$221, %ymm2, %ymm14, %ymm15
	vshufps	$136, %ymm9, %ymm11, %ymm7
	vshufps	$221, %ymm9, %ymm11, %ymm2
	vmovdqa	%ymm13, (%r12,%rdx)
	vshufps	$136, %ymm4, %ymm6, %ymm3
	vmovdqa	%ymm15, (%rbx,%rdx)
	vshufps	$221, %ymm4, %ymm6, %ymm1
	vmovdqa	%ymm7, (%r11,%rdx)
	vmovdqa	%ymm2, (%r10,%rdx)
	vmovdqa	%ymm3, (%r9,%rdx)
	vmovdqa	%ymm1, (%r8,%rdx)
	addq	$32, %rdx
	cmpq	$64, %rdx
	jne	.L46
	addq	$8, %rdi
	cmpq	$32, %rdi
	jne	.L45
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	vzeroupper
	ret
.L50:
	.cfi_restore_state
	movl	$_ZZNK17Read8_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$630, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1840:
	.size	_ZNK17Read8_Write32_AVX5demuxEPKhmPPh, .-_ZNK17Read8_Write32_AVX5demuxEPKhmPPh
	.section	.text._ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh,"axG",@progbits,_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh
	.type	_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh, @function
_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh:
.LFB1835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpq	$2048, %rdx
	jne	.L55
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%eax, %eax
.L53:
	vmovq	64(%rsi), %xmm9
	movq	(%rcx,%rax,8), %rbp
	vmovq	(%rsi), %xmm3
	movq	8(%rcx,%rax,8), %rbx
	vpinsrq	$0x1, 96(%rsi), %xmm9, %xmm12
	vmovq	192(%rsi), %xmm5
	movq	16(%rcx,%rax,8), %r11
	vpinsrq	$0x1, 32(%rsi), %xmm3, %xmm6
	vmovq	128(%rsi), %xmm1
	movq	24(%rcx,%rax,8), %r10
	vpinsrq	$0x1, 224(%rsi), %xmm5, %xmm4
	vmovq	320(%rsi), %xmm2
	movq	32(%rcx,%rax,8), %r9
	vpinsrq	$0x1, 160(%rsi), %xmm1, %xmm13
	vmovq	256(%rsi), %xmm10
	movq	40(%rcx,%rax,8), %r8
	vmovq	384(%rsi), %xmm5
	vshufps	$136, %xmm12, %xmm6, %xmm11
	vshufps	$221, %xmm12, %xmm6, %xmm15
	movq	48(%rcx,%rax,8), %rdi
	vmovq	448(%rsi), %xmm6
	movq	56(%rcx,%rax,8), %rdx
	vpinsrq	$0x1, 352(%rsi), %xmm2, %xmm9
	addq	$8, %rax
	vpinsrq	$0x1, 288(%rsi), %xmm10, %xmm8
	vpinsrq	$0x1, 480(%rsi), %xmm6, %xmm1
	vshufps	$136, %xmm4, %xmm13, %xmm7
	vshufps	$221, %xmm4, %xmm13, %xmm14
	vpinsrq	$0x1, 416(%rsi), %xmm5, %xmm4
	vshufps	$136, %xmm9, %xmm8, %xmm3
	vpshufb	%xmm0, %xmm11, %xmm11
	vpshufb	%xmm0, %xmm7, %xmm7
	vshufps	$136, %xmm1, %xmm4, %xmm13
	vshufps	$221, %xmm9, %xmm8, %xmm12
	vpshufb	%xmm0, %xmm3, %xmm3
	vmovlhps	%xmm7, %xmm11, %xmm10
	vpshufb	%xmm0, %xmm13, %xmm8
	vshufps	$221, %xmm1, %xmm4, %xmm2
	vshufps	$238, %xmm7, %xmm11, %xmm6
	vmovlhps	%xmm8, %xmm3, %xmm9
	vshufps	$238, %xmm8, %xmm3, %xmm5
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$136, %xmm9, %xmm10, %xmm1
	vpshufb	%xmm0, %xmm14, %xmm14
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm2, %xmm2
	vmovdqa	%xmm1, 0(%rbp)
	vshufps	$238, %xmm14, %xmm15, %xmm3
	vshufps	$238, %xmm2, %xmm12, %xmm1
	vmovlhps	%xmm2, %xmm12, %xmm11
	vshufps	$221, %xmm9, %xmm10, %xmm13
	vshufps	$136, %xmm5, %xmm6, %xmm4
	vmovlhps	%xmm14, %xmm15, %xmm9
	vshufps	$221, %xmm5, %xmm6, %xmm10
	vmovdqa	%xmm13, (%rbx)
	vshufps	$136, %xmm11, %xmm9, %xmm7
	vmovdqa	%xmm4, (%r11)
	vshufps	$221, %xmm11, %xmm9, %xmm13
	vshufps	$136, %xmm1, %xmm3, %xmm8
	vshufps	$221, %xmm1, %xmm3, %xmm4
	vmovdqa	%xmm10, (%r10)
	vmovdqa	%xmm7, (%r9)
	vmovdqa	%xmm13, (%r8)
	vmovdqa	%xmm8, (%rdi)
	vmovdqa	%xmm4, (%rdx)
	vmovq	576(%rsi), %xmm5
	vmovq	512(%rsi), %xmm2
	vpinsrq	$0x1, 608(%rsi), %xmm5, %xmm12
	vmovq	704(%rsi), %xmm10
	vpinsrq	$0x1, 544(%rsi), %xmm2, %xmm6
	vmovq	640(%rsi), %xmm9
	vpinsrq	$0x1, 736(%rsi), %xmm10, %xmm11
	vmovq	832(%rsi), %xmm13
	vpinsrq	$0x1, 672(%rsi), %xmm9, %xmm1
	vmovq	768(%rsi), %xmm8
	vmovq	896(%rsi), %xmm10
	vshufps	$136, %xmm12, %xmm6, %xmm14
	vshufps	$221, %xmm12, %xmm6, %xmm15
	vmovq	960(%rsi), %xmm6
	vpinsrq	$0x1, 864(%rsi), %xmm13, %xmm5
	vpinsrq	$0x1, 800(%rsi), %xmm8, %xmm4
	vpinsrq	$0x1, 992(%rsi), %xmm6, %xmm9
	vshufps	$136, %xmm11, %xmm1, %xmm7
	vshufps	$221, %xmm11, %xmm1, %xmm3
	vpinsrq	$0x1, 928(%rsi), %xmm10, %xmm11
	vshufps	$136, %xmm5, %xmm4, %xmm2
	vpshufb	%xmm0, %xmm14, %xmm14
	vpshufb	%xmm0, %xmm7, %xmm7
	vshufps	$136, %xmm9, %xmm11, %xmm1
	vshufps	$221, %xmm5, %xmm4, %xmm12
	vpshufb	%xmm0, %xmm2, %xmm2
	vmovlhps	%xmm7, %xmm14, %xmm8
	vpshufb	%xmm0, %xmm1, %xmm5
	vshufps	$221, %xmm9, %xmm11, %xmm13
	vshufps	$238, %xmm7, %xmm14, %xmm6
	vshufps	$238, %xmm5, %xmm2, %xmm10
	vmovlhps	%xmm5, %xmm2, %xmm4
	vpshufb	%xmm0, %xmm15, %xmm15
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm13, %xmm13
	vshufps	$238, %xmm3, %xmm15, %xmm2
	vshufps	$136, %xmm4, %xmm8, %xmm11
	vshufps	$221, %xmm4, %xmm8, %xmm9
	vmovlhps	%xmm13, %xmm12, %xmm5
	vshufps	$238, %xmm13, %xmm12, %xmm4
	vshufps	$136, %xmm10, %xmm6, %xmm1
	vmovlhps	%xmm3, %xmm15, %xmm8
	vmovdqa	%xmm11, 16(%rbp)
	vshufps	$221, %xmm10, %xmm6, %xmm14
	vmovdqa	%xmm9, 16(%rbx)
	vshufps	$136, %xmm5, %xmm8, %xmm7
	vmovdqa	%xmm1, 16(%r11)
	vshufps	$221, %xmm5, %xmm8, %xmm10
	vshufps	$136, %xmm4, %xmm2, %xmm6
	vshufps	$221, %xmm4, %xmm2, %xmm1
	vmovdqa	%xmm14, 16(%r10)
	vmovdqa	%xmm7, 16(%r9)
	vmovdqa	%xmm10, 16(%r8)
	vmovdqa	%xmm6, 16(%rdi)
	vmovdqa	%xmm1, 16(%rdx)
	vmovq	1088(%rsi), %xmm9
	vmovq	1024(%rsi), %xmm11
	vpinsrq	$0x1, 1120(%rsi), %xmm9, %xmm14
	vmovq	1216(%rsi), %xmm5
	vpinsrq	$0x1, 1056(%rsi), %xmm11, %xmm8
	vmovq	1152(%rsi), %xmm15
	vpinsrq	$0x1, 1248(%rsi), %xmm5, %xmm4
	vmovq	1344(%rsi), %xmm2
	vpinsrq	$0x1, 1184(%rsi), %xmm15, %xmm10
	vmovq	1280(%rsi), %xmm6
	vmovq	1408(%rsi), %xmm5
	vshufps	$136, %xmm14, %xmm8, %xmm13
	vshufps	$221, %xmm14, %xmm8, %xmm12
	vmovq	1472(%rsi), %xmm8
	vpinsrq	$0x1, 1376(%rsi), %xmm2, %xmm9
	vpinsrq	$0x1, 1312(%rsi), %xmm6, %xmm1
	vpinsrq	$0x1, 1504(%rsi), %xmm8, %xmm15
	vshufps	$136, %xmm4, %xmm10, %xmm7
	vshufps	$221, %xmm4, %xmm10, %xmm3
	vpinsrq	$0x1, 1440(%rsi), %xmm5, %xmm4
	vshufps	$136, %xmm9, %xmm1, %xmm11
	vshufps	$221, %xmm9, %xmm1, %xmm14
	vpshufb	%xmm0, %xmm13, %xmm13
	vshufps	$136, %xmm15, %xmm4, %xmm10
	vshufps	$221, %xmm15, %xmm4, %xmm2
	vpshufb	%xmm0, %xmm7, %xmm7
	vpshufb	%xmm0, %xmm10, %xmm1
	vpshufb	%xmm0, %xmm11, %xmm11
	vpshufb	%xmm0, %xmm12, %xmm12
	vmovlhps	%xmm7, %xmm13, %xmm6
	vpshufb	%xmm0, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm14, %xmm14
	vmovlhps	%xmm1, %xmm11, %xmm9
	vpshufb	%xmm0, %xmm2, %xmm2
	vshufps	$238, %xmm1, %xmm11, %xmm5
	vshufps	$238, %xmm7, %xmm13, %xmm8
	vshufps	$238, %xmm3, %xmm12, %xmm1
	vmovlhps	%xmm2, %xmm14, %xmm11
	vshufps	$238, %xmm2, %xmm14, %xmm7
	vshufps	$136, %xmm9, %xmm6, %xmm15
	vshufps	$221, %xmm9, %xmm6, %xmm10
	vmovlhps	%xmm3, %xmm12, %xmm9
	vshufps	$136, %xmm5, %xmm8, %xmm4
	vmovdqa	%xmm15, 32(%rbp)
	vshufps	$221, %xmm5, %xmm8, %xmm6
	vmovdqa	%xmm10, 32(%rbx)
	vshufps	$136, %xmm11, %xmm9, %xmm13
	vshufps	$221, %xmm11, %xmm9, %xmm15
	vshufps	$136, %xmm7, %xmm1, %xmm10
	vshufps	$221, %xmm7, %xmm1, %xmm8
	vmovdqa	%xmm4, 32(%r11)
	vmovdqa	%xmm6, 32(%r10)
	vmovdqa	%xmm13, 32(%r9)
	vmovdqa	%xmm15, 32(%r8)
	vmovdqa	%xmm10, 32(%rdi)
	vmovdqa	%xmm8, 32(%rdx)
	vmovq	1600(%rsi), %xmm4
	vmovq	1536(%rsi), %xmm2
	vpinsrq	$0x1, 1632(%rsi), %xmm4, %xmm14
	vmovq	1728(%rsi), %xmm3
	vpinsrq	$0x1, 1568(%rsi), %xmm2, %xmm5
	vmovq	1664(%rsi), %xmm9
	vpinsrq	$0x1, 1760(%rsi), %xmm3, %xmm11
	vmovq	1856(%rsi), %xmm15
	vpinsrq	$0x1, 1696(%rsi), %xmm9, %xmm1
	vmovq	1792(%rsi), %xmm10
	vmovq	1920(%rsi), %xmm3
	vshufps	$136, %xmm14, %xmm5, %xmm6
	vshufps	$221, %xmm14, %xmm5, %xmm12
	vmovq	1984(%rsi), %xmm5
	vpinsrq	$0x1, 1888(%rsi), %xmm15, %xmm4
	vpinsrq	$0x1, 1824(%rsi), %xmm10, %xmm8
	vpinsrq	$0x1, 2016(%rsi), %xmm5, %xmm9
	vshufps	$136, %xmm11, %xmm1, %xmm7
	vshufps	$221, %xmm11, %xmm1, %xmm13
	vpinsrq	$0x1, 1952(%rsi), %xmm3, %xmm11
	addq	$8, %rsi
	cmpq	$32, %rax
	vshufps	$136, %xmm4, %xmm8, %xmm2
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm7, %xmm7
	vshufps	$136, %xmm9, %xmm11, %xmm1
	vshufps	$221, %xmm4, %xmm8, %xmm14
	vpshufb	%xmm0, %xmm2, %xmm2
	vmovlhps	%xmm7, %xmm6, %xmm10
	vpshufb	%xmm0, %xmm1, %xmm8
	vshufps	$221, %xmm9, %xmm11, %xmm15
	vshufps	$238, %xmm7, %xmm6, %xmm5
	vshufps	$238, %xmm8, %xmm2, %xmm3
	vmovlhps	%xmm8, %xmm2, %xmm4
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm13, %xmm13
	vpshufb	%xmm0, %xmm14, %xmm14
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$136, %xmm3, %xmm5, %xmm1
	vmovlhps	%xmm13, %xmm12, %xmm6
	vshufps	$136, %xmm4, %xmm10, %xmm11
	vshufps	$221, %xmm4, %xmm10, %xmm9
	vmovlhps	%xmm15, %xmm14, %xmm8
	vshufps	$238, %xmm15, %xmm14, %xmm4
	vshufps	$238, %xmm13, %xmm12, %xmm2
	vmovdqa	%xmm11, 48(%rbp)
	vshufps	$221, %xmm3, %xmm5, %xmm10
	vmovdqa	%xmm9, 48(%rbx)
	vshufps	$136, %xmm8, %xmm6, %xmm7
	vmovdqa	%xmm1, 48(%r11)
	vshufps	$221, %xmm8, %xmm6, %xmm5
	vshufps	$136, %xmm4, %xmm2, %xmm3
	vshufps	$221, %xmm4, %xmm2, %xmm1
	vmovdqa	%xmm10, 48(%r10)
	vmovdqa	%xmm7, 48(%r9)
	vmovdqa	%xmm5, 48(%r8)
	vmovdqa	%xmm3, 48(%rdi)
	vmovdqa	%xmm1, 48(%rdx)
	jne	.L53
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L55:
	.cfi_restore_state
	movl	$_ZZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$346, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1835:
	.size	_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh, .-_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh
	.section	.text._ZNK17Read8_Write16_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK17Read8_Write16_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK17Read8_Write16_SSE5demuxEPKhmPPh
	.type	_ZNK17Read8_Write16_SSE5demuxEPKhmPPh, @function
_ZNK17Read8_Write16_SSE5demuxEPKhmPPh:
.LFB1834:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	cmpq	$2048, %rdx
	jne	.L62
	vmovdqa	.LC2(%rip), %xmm0
	xorl	%edi, %edi
.L57:
	movq	(%rcx,%rdi,8), %r13
	movq	8(%rcx,%rdi,8), %r12
	leaq	(%rsi,%rdi), %rax
	movq	16(%rcx,%rdi,8), %rbp
	movq	24(%rcx,%rdi,8), %rbx
	xorl	%edx, %edx
	movq	32(%rcx,%rdi,8), %r11
	movq	40(%rcx,%rdi,8), %r10
	movq	48(%rcx,%rdi,8), %r9
	movq	56(%rcx,%rdi,8), %r8
.L58:
	vmovq	64(%rax), %xmm4
	vmovq	(%rax), %xmm2
	vpinsrq	$0x1, 96(%rax), %xmm4, %xmm14
	vmovq	192(%rax), %xmm3
	vpinsrq	$0x1, 32(%rax), %xmm2, %xmm5
	vmovq	128(%rax), %xmm9
	vpinsrq	$0x1, 224(%rax), %xmm3, %xmm11
	vmovq	320(%rax), %xmm15
	vpinsrq	$0x1, 160(%rax), %xmm9, %xmm1
	vmovq	256(%rax), %xmm10
	vmovq	384(%rax), %xmm3
	vshufps	$136, %xmm14, %xmm5, %xmm6
	vshufps	$221, %xmm14, %xmm5, %xmm12
	vmovq	448(%rax), %xmm5
	vpinsrq	$0x1, 352(%rax), %xmm15, %xmm4
	vpinsrq	$0x1, 288(%rax), %xmm10, %xmm8
	vpinsrq	$0x1, 480(%rax), %xmm5, %xmm9
	vshufps	$136, %xmm11, %xmm1, %xmm7
	vshufps	$221, %xmm11, %xmm1, %xmm13
	vpinsrq	$0x1, 416(%rax), %xmm3, %xmm11
	addq	$512, %rax
	vshufps	$136, %xmm4, %xmm8, %xmm2
	vpshufb	%xmm0, %xmm6, %xmm6
	vpshufb	%xmm0, %xmm7, %xmm7
	vshufps	$136, %xmm9, %xmm11, %xmm1
	vshufps	$221, %xmm4, %xmm8, %xmm14
	vpshufb	%xmm0, %xmm2, %xmm2
	vmovlhps	%xmm7, %xmm6, %xmm10
	vpshufb	%xmm0, %xmm1, %xmm8
	vshufps	$221, %xmm9, %xmm11, %xmm15
	vshufps	$238, %xmm7, %xmm6, %xmm5
	vshufps	$238, %xmm8, %xmm2, %xmm3
	vmovlhps	%xmm8, %xmm2, %xmm4
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm13, %xmm13
	vpshufb	%xmm0, %xmm14, %xmm14
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$136, %xmm3, %xmm5, %xmm1
	vmovlhps	%xmm13, %xmm12, %xmm6
	vshufps	$136, %xmm4, %xmm10, %xmm11
	vshufps	$221, %xmm4, %xmm10, %xmm9
	vmovlhps	%xmm15, %xmm14, %xmm8
	vshufps	$238, %xmm15, %xmm14, %xmm4
	vshufps	$238, %xmm13, %xmm12, %xmm2
	vmovdqa	%xmm11, 0(%r13,%rdx)
	vshufps	$221, %xmm3, %xmm5, %xmm10
	vmovdqa	%xmm9, (%r12,%rdx)
	vshufps	$136, %xmm8, %xmm6, %xmm7
	vmovdqa	%xmm1, 0(%rbp,%rdx)
	vshufps	$221, %xmm8, %xmm6, %xmm5
	vshufps	$136, %xmm4, %xmm2, %xmm3
	vshufps	$221, %xmm4, %xmm2, %xmm1
	vmovdqa	%xmm10, (%rbx,%rdx)
	vmovdqa	%xmm7, (%r11,%rdx)
	vmovdqa	%xmm5, (%r10,%rdx)
	vmovdqa	%xmm3, (%r9,%rdx)
	vmovdqa	%xmm1, (%r8,%rdx)
	addq	$16, %rdx
	cmpq	$64, %rdx
	jne	.L58
	addq	$8, %rdi
	cmpq	$32, %rdi
	jne	.L57
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L62:
	.cfi_restore_state
	movl	$_ZZNK17Read8_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$292, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1834:
	.size	_ZNK17Read8_Write16_SSE5demuxEPKhmPPh, .-_ZNK17Read8_Write16_SSE5demuxEPKhmPPh
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
.LFB1821:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testb	$31, %dl
	jne	.L64
	testq	%rdx, %rdx
	je	.L63
	movzbl	(%rsi), %edi
	movq	(%rcx), %rax
	leaq	-1(%rdx), %r9
	xorl	%r8d, %r8d
	movb	%dil, (%rax)
	xorl	%edi, %edi
	andl	$7, %r9d
	movl	$1, %eax
	je	.L120
	movzbl	(%rsi,%rax), %r10d
	movq	8(%rcx), %r11
	cmpq	$1, %r9
	movl	$1, %r8d
	movl	$2, %eax
	movb	%r10b, (%r11)
	je	.L120
	cmpq	$2, %r9
	je	.L109
	cmpq	$3, %r9
	je	.L110
	cmpq	$4, %r9
	je	.L111
	cmpq	$5, %r9
	je	.L112
	cmpq	$6, %r9
	je	.L113
	movzbl	1(%rsi,%r8), %r11d
	movq	(%rcx,%rax,8), %r9
	addq	$1, %r8
	addq	$1, %rax
	movb	%r11b, (%r9,%rdi)
.L113:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L125
.L112:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r9d
	cmpq	$32, %rax
	movb	%r9b, (%r11,%rdi)
	je	.L126
.L111:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r10d
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L127
.L110:
	addq	$1, %r8
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	movzbl	(%rsi,%r8), %r11d
	cmpq	$32, %rax
	movb	%r11b, (%r9,%rdi)
	je	.L128
.L109:
	addq	$1, %r8
	movzbl	(%rsi,%r8), %r10d
.L124:
	movq	(%rcx,%rax,8), %r9
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r9,%rdi)
	je	.L129
.L120:
	leaq	1(%r8), %r9
	cmpq	%rdx, %r9
	je	.L63
	movzbl	1(%rsi,%r8), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L130
.L106:
	movzbl	1(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L131
.L114:
	movzbl	2(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L132
.L115:
	movzbl	3(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r11,%rdi)
	je	.L133
.L116:
	movzbl	4(%rsi,%r9), %r11d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r11b, (%r8,%rdi)
	je	.L134
.L117:
	movzbl	5(%rsi,%r9), %r10d
	movq	(%rcx,%rax,8), %r8
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r10b, (%r8,%rdi)
	je	.L135
.L118:
	movzbl	6(%rsi,%r9), %r8d
	movq	(%rcx,%rax,8), %r11
	addq	$1, %rax
	cmpq	$32, %rax
	movb	%r8b, (%r11,%rdi)
	je	.L136
.L119:
	leaq	7(%r9), %r8
	movzbl	7(%rsi,%r9), %r10d
	jmp	.L124
	.p2align 4,,10
	.p2align 3
.L63:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	.cfi_restore_state
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L130:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L136:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L135:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L134:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L133:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L132:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L131:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L128:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L127:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L126:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L125:
	addq	$1, %rdi
	xorb	%al, %al
	jmp	.L112
.L64:
	movl	$_ZZNK9Reference5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$47, %edx
	movl	$.LC0, %esi
	movl	$.LC3, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1821:
	.size	_ZNK9Reference5demuxEPKhmPPh, .-_ZNK9Reference5demuxEPKhmPPh
	.section	.text._ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh,"axG",@progbits,_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh
	.type	_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh, @function
_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh:
.LFB1838:
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	cmpq	$2048, %rdx
	jne	.L141
	vmovdqa	.LC2(%rip), %xmm0
	movq	%rcx, %rdx
	movq	%rsi, %rax
	movq	$0, 168(%rsp)
.L139:
	vmovaps	32(%rax), %xmm14
	movq	96(%rdx), %rcx
	movq	40(%rdx), %rbx
	vmovaps	(%rax), %xmm13
	movq	80(%rdx), %rdi
	movq	88(%rdx), %rsi
	vmovaps	96(%rax), %xmm7
	vmovlhps	%xmm14, %xmm13, %xmm10
	vshufps	$238, %xmm14, %xmm13, %xmm12
	movq	%rcx, 40(%rsp)
	vmovaps	64(%rax), %xmm9
	movq	104(%rdx), %rcx
	movq	(%rdx), %r15
	vmovlhps	%xmm7, %xmm9, %xmm4
	vmovaps	160(%rax), %xmm2
	vshufps	$238, %xmm7, %xmm9, %xmm8
	movq	8(%rdx), %r14
	vmovaps	128(%rax), %xmm1
	vshufps	$136, %xmm4, %xmm10, %xmm15
	movq	%rcx, 144(%rsp)
	movq	112(%rdx), %rcx
	vmovaps	224(%rax), %xmm3
	vshufps	$238, %xmm2, %xmm1, %xmm9
	vmovlhps	%xmm2, %xmm1, %xmm11
	vmovaps	192(%rax), %xmm6
	vshufps	$221, %xmm4, %xmm10, %xmm10
	movq	%rcx, 152(%rsp)
	movq	120(%rdx), %rcx
	vshufps	$238, %xmm3, %xmm6, %xmm4
	movq	16(%rdx), %r13
	vmovlhps	%xmm3, %xmm6, %xmm5
	movq	24(%rdx), %r12
	vmovaps	320(%rax), %xmm6
	vshufps	$136, %xmm8, %xmm12, %xmm14
	movq	32(%rdx), %rbp
	movq	48(%rdx), %r11
	vshufps	$221, %xmm8, %xmm12, %xmm13
	movq	56(%rdx), %r10
	vshufps	$221, %xmm4, %xmm9, %xmm1
	movq	64(%rdx), %r9
	vmovaps	352(%rax), %xmm3
	vshufps	$136, %xmm5, %xmm11, %xmm12
	movq	72(%rdx), %r8
	movq	%rcx, 160(%rsp)
	vshufps	$136, %xmm4, %xmm9, %xmm2
	subq	$-128, %rdx
	vmovaps	256(%rax), %xmm4
	vshufps	$221, %xmm5, %xmm11, %xmm11
	vmovlhps	%xmm3, %xmm6, %xmm7
	vmovaps	288(%rax), %xmm5
	vshufps	$238, %xmm3, %xmm6, %xmm3
	vshufps	$238, %xmm5, %xmm4, %xmm6
	vmovlhps	%xmm5, %xmm4, %xmm8
	vpshufb	%xmm0, %xmm12, %xmm12
	vshufps	$136, %xmm7, %xmm8, %xmm9
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm8
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vpshufb	%xmm0, %xmm15, %xmm15
	vmovaps	%xmm8, 48(%rsp)
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovaps	%xmm7, 64(%rsp)
	vpshufb	%xmm0, %xmm2, %xmm2
	vmovaps	%xmm5, 80(%rsp)
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovaps	384(%rax), %xmm5
	vmovaps	480(%rax), %xmm3
	vmovhps	416(%rax), %xmm5, %xmm8
	vmovaps	448(%rax), %xmm6
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm6
	vshufps	$136, %xmm7, %xmm8, %xmm4
	vshufps	$238, 416(%rax), %xmm5, %xmm3
	vmovaps	%xmm4, 96(%rsp)
	vpshufb	%xmm0, %xmm1, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm7
	vshufps	$136, %xmm6, %xmm3, %xmm8
	vshufps	$221, %xmm6, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm4
	vpshufb	%xmm0, %xmm14, %xmm6
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vpshufb	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm5, 128(%rsp)
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	%xmm14, 112(%rsp)
	vpshufb	%xmm0, %xmm13, %xmm14
	vpshufb	%xmm0, %xmm3, %xmm13
	vpshufb	%xmm0, %xmm8, %xmm8
	vmovdqa	96(%rsp), %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm13, 16(%rsp)
	vmovlhps	%xmm5, %xmm9, %xmm14
	vmovaps	%xmm15, %xmm13
	vmovlhps	%xmm12, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm9, %xmm9
	vshufps	$136, %xmm14, %xmm15, %xmm3
	vmovdqa	64(%rsp), %xmm1
	vshufps	$221, %xmm14, %xmm15, %xmm14
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovlhps	%xmm7, %xmm4, %xmm15
	vmovaps	%xmm3, 64(%rsp)
	vshufps	$238, %xmm12, %xmm13, %xmm3
	vshufps	$238, %xmm7, %xmm4, %xmm5
	vmovaps	%xmm8, %xmm7
	vmovlhps	%xmm8, %xmm1, %xmm4
	vshufps	$221, %xmm9, %xmm3, %xmm13
	vmovlhps	%xmm2, %xmm6, %xmm8
	vmovaps	%xmm14, (%rsp)
	vshufps	$238, %xmm2, %xmm6, %xmm2
	vshufps	$136, %xmm9, %xmm3, %xmm14
	vmovlhps	%xmm11, %xmm10, %xmm12
	vshufps	$238, %xmm7, %xmm1, %xmm3
	vshufps	$238, %xmm11, %xmm10, %xmm9
	vmovaps	%xmm13, 80(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm1
	vshufps	$136, %xmm5, %xmm9, %xmm11
	vshufps	$221, %xmm5, %xmm9, %xmm10
	vshufps	$136, %xmm3, %xmm2, %xmm7
	vmovaps	112(%rsp), %xmm2
	vshufps	$136, %xmm4, %xmm8, %xmm9
	vmovaps	16(%rsp), %xmm3
	vshufps	$221, %xmm4, %xmm8, %xmm8
	vshufps	$136, %xmm15, %xmm12, %xmm13
	vmovaps	48(%rsp), %xmm4
	vshufps	$221, %xmm15, %xmm12, %xmm12
	vmovaps	%xmm1, 96(%rsp)
	vmovlhps	%xmm3, %xmm4, %xmm5
	vshufps	$238, %xmm3, %xmm4, %xmm3
	vmovaps	128(%rsp), %xmm1
	vmovlhps	%xmm1, %xmm2, %xmm6
	vshufps	$238, %xmm1, %xmm2, %xmm2
	vmovdqa	(%rsp), %xmm4
	vshufps	$136, %xmm5, %xmm6, %xmm15
	vshufps	$221, %xmm5, %xmm6, %xmm5
	vshufps	$136, %xmm3, %xmm2, %xmm6
	vmovaps	%xmm15, 48(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm2
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm3
	vmovdqa	%xmm15, (%r15)
	vmovdqa	%xmm4, (%r14)
	vmovdqa	%xmm14, 0(%r13)
	vmovdqa	%xmm3, (%r12)
	vmovdqa	%xmm13, 0(%rbp)
	vmovdqa	%xmm12, (%rbx)
	vmovdqa	%xmm11, (%r11)
	vmovdqa	%xmm10, (%r10)
	vmovdqa	%xmm9, (%r9)
	vmovdqa	%xmm8, (%r8)
	vmovdqa	%xmm7, (%rdi)
	movq	40(%rsp), %rcx
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	96(%rsp), %xmm1
	vmovdqa	%xmm1, (%rsi)
	vmovdqa	%xmm15, (%rcx)
	movq	144(%rsp), %rcx
	vmovdqa	%xmm5, (%rcx)
	movq	152(%rsp), %rcx
	vmovdqa	%xmm6, (%rcx)
	movq	160(%rsp), %rcx
	vmovdqa	%xmm2, (%rcx)
	vmovaps	544(%rax), %xmm14
	vmovaps	512(%rax), %xmm13
	vmovaps	608(%rax), %xmm7
	vmovlhps	%xmm14, %xmm13, %xmm10
	vshufps	$238, %xmm14, %xmm13, %xmm12
	vmovaps	576(%rax), %xmm9
	vmovaps	672(%rax), %xmm2
	vmovlhps	%xmm7, %xmm9, %xmm4
	vshufps	$238, %xmm7, %xmm9, %xmm8
	vmovaps	640(%rax), %xmm1
	vshufps	$136, %xmm4, %xmm10, %xmm15
	vmovaps	736(%rax), %xmm3
	vshufps	$238, %xmm2, %xmm1, %xmm9
	vshufps	$221, %xmm4, %xmm10, %xmm10
	vmovaps	704(%rax), %xmm6
	vmovlhps	%xmm2, %xmm1, %xmm11
	vshufps	$136, %xmm8, %xmm12, %xmm14
	vshufps	$238, %xmm3, %xmm6, %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm8, %xmm12, %xmm13
	vmovaps	832(%rax), %xmm6
	vshufps	$136, %xmm5, %xmm11, %xmm12
	vshufps	$221, %xmm4, %xmm9, %xmm1
	vmovaps	864(%rax), %xmm3
	vshufps	$136, %xmm4, %xmm9, %xmm2
	vshufps	$221, %xmm5, %xmm11, %xmm11
	vmovaps	768(%rax), %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm3
	vmovaps	800(%rax), %xmm5
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm4, %xmm6
	vmovlhps	%xmm5, %xmm4, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm2
	vshufps	$136, %xmm7, %xmm8, %xmm9
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm8
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vmovaps	992(%rax), %xmm3
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovaps	960(%rax), %xmm6
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovaps	%xmm5, 80(%rsp)
	vmovaps	%xmm8, 48(%rsp)
	vmovaps	%xmm7, 64(%rsp)
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm6
	vmovaps	896(%rax), %xmm5
	vmovhps	928(%rax), %xmm5, %xmm8
	vshufps	$136, %xmm7, %xmm8, %xmm4
	vshufps	$221, %xmm7, %xmm8, %xmm7
	vmovaps	%xmm4, 96(%rsp)
	vshufps	$238, 928(%rax), %xmm5, %xmm3
	vpshufb	%xmm0, %xmm1, %xmm5
	vmovdqa	48(%rsp), %xmm4
	vpshufb	%xmm0, %xmm7, %xmm7
	vshufps	$136, %xmm6, %xmm3, %xmm8
	vshufps	$221, %xmm6, %xmm3, %xmm3
	vmovdqa	64(%rsp), %xmm1
	vpshufb	%xmm0, %xmm14, %xmm6
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vpshufb	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm5, 128(%rsp)
	vpshufb	%xmm0, %xmm8, %xmm8
	vmovdqa	%xmm14, 112(%rsp)
	vpshufb	%xmm0, %xmm13, %xmm14
	vpshufb	%xmm0, %xmm3, %xmm13
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovdqa	96(%rsp), %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm13, 16(%rsp)
	vmovlhps	%xmm5, %xmm9, %xmm14
	vmovaps	%xmm15, %xmm13
	vmovlhps	%xmm12, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm9, %xmm9
	vshufps	$136, %xmm14, %xmm15, %xmm3
	vshufps	$221, %xmm14, %xmm15, %xmm14
	vmovlhps	%xmm7, %xmm4, %xmm15
	vshufps	$238, %xmm7, %xmm4, %xmm5
	vmovaps	%xmm3, 64(%rsp)
	vshufps	$238, %xmm12, %xmm13, %xmm3
	vmovaps	%xmm8, %xmm7
	vmovlhps	%xmm8, %xmm1, %xmm4
	vmovaps	%xmm14, (%rsp)
	vshufps	$221, %xmm9, %xmm3, %xmm13
	vshufps	$136, %xmm9, %xmm3, %xmm14
	vmovlhps	%xmm2, %xmm6, %xmm8
	vshufps	$238, %xmm7, %xmm1, %xmm3
	vshufps	$238, %xmm2, %xmm6, %xmm2
	vmovlhps	%xmm11, %xmm10, %xmm12
	vshufps	$238, %xmm11, %xmm10, %xmm9
	vmovaps	%xmm13, 80(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm1
	vshufps	$136, %xmm5, %xmm9, %xmm11
	vshufps	$221, %xmm5, %xmm9, %xmm10
	vshufps	$136, %xmm3, %xmm2, %xmm7
	vmovaps	112(%rsp), %xmm2
	vshufps	$136, %xmm4, %xmm8, %xmm9
	vmovaps	%xmm1, 96(%rsp)
	vshufps	$221, %xmm4, %xmm8, %xmm8
	vshufps	$136, %xmm15, %xmm12, %xmm13
	vshufps	$221, %xmm15, %xmm12, %xmm12
	vmovaps	48(%rsp), %xmm4
	vmovaps	128(%rsp), %xmm1
	vmovaps	16(%rsp), %xmm3
	vmovlhps	%xmm1, %xmm2, %xmm6
	vshufps	$238, %xmm1, %xmm2, %xmm2
	vmovlhps	%xmm3, %xmm4, %xmm5
	vshufps	$238, %xmm3, %xmm4, %xmm3
	vmovdqa	96(%rsp), %xmm1
	vshufps	$136, %xmm5, %xmm6, %xmm15
	vmovdqa	(%rsp), %xmm4
	vshufps	$221, %xmm5, %xmm6, %xmm5
	vshufps	$136, %xmm3, %xmm2, %xmm6
	vmovaps	%xmm15, 48(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm2
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm3
	vmovdqa	%xmm15, 16(%r15)
	vmovdqa	%xmm4, 16(%r14)
	vmovdqa	%xmm14, 16(%r13)
	vmovdqa	%xmm3, 16(%r12)
	vmovdqa	%xmm13, 16(%rbp)
	vmovdqa	%xmm12, 16(%rbx)
	vmovdqa	%xmm11, 16(%r11)
	vmovdqa	%xmm10, 16(%r10)
	vmovdqa	%xmm9, 16(%r9)
	vmovdqa	%xmm8, 16(%r8)
	vmovdqa	%xmm7, 16(%rdi)
	vmovdqa	%xmm1, 16(%rsi)
	movq	40(%rsp), %rcx
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	%xmm15, 16(%rcx)
	movq	144(%rsp), %rcx
	vmovdqa	%xmm5, 16(%rcx)
	movq	152(%rsp), %rcx
	vmovdqa	%xmm6, 16(%rcx)
	movq	160(%rsp), %rcx
	vmovdqa	%xmm2, 16(%rcx)
	vmovaps	1056(%rax), %xmm14
	vmovaps	1024(%rax), %xmm13
	vmovaps	1120(%rax), %xmm7
	vmovlhps	%xmm14, %xmm13, %xmm10
	vshufps	$238, %xmm14, %xmm13, %xmm12
	vmovaps	1088(%rax), %xmm9
	vmovaps	1184(%rax), %xmm2
	vmovlhps	%xmm7, %xmm9, %xmm4
	vshufps	$238, %xmm7, %xmm9, %xmm8
	vmovaps	1152(%rax), %xmm1
	vshufps	$136, %xmm4, %xmm10, %xmm15
	vmovaps	1248(%rax), %xmm3
	vshufps	$238, %xmm2, %xmm1, %xmm9
	vshufps	$221, %xmm4, %xmm10, %xmm10
	vmovaps	1216(%rax), %xmm6
	vmovlhps	%xmm2, %xmm1, %xmm11
	vshufps	$136, %xmm8, %xmm12, %xmm14
	vshufps	$238, %xmm3, %xmm6, %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm8, %xmm12, %xmm13
	vmovaps	1344(%rax), %xmm6
	vshufps	$136, %xmm5, %xmm11, %xmm12
	vshufps	$221, %xmm4, %xmm9, %xmm1
	vmovaps	1376(%rax), %xmm3
	vshufps	$136, %xmm4, %xmm9, %xmm2
	vshufps	$221, %xmm5, %xmm11, %xmm11
	vmovaps	1280(%rax), %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm3
	vmovaps	1312(%rax), %xmm5
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm4, %xmm6
	vmovlhps	%xmm5, %xmm4, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm2
	vshufps	$136, %xmm7, %xmm8, %xmm9
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm8
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vmovaps	1504(%rax), %xmm3
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovaps	1472(%rax), %xmm6
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovaps	%xmm5, 80(%rsp)
	vmovaps	%xmm7, 64(%rsp)
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm6
	vmovaps	%xmm8, 48(%rsp)
	vmovaps	1408(%rax), %xmm5
	vshufps	$238, 1440(%rax), %xmm5, %xmm3
	vmovhps	1440(%rax), %xmm5, %xmm8
	vshufps	$136, %xmm7, %xmm8, %xmm4
	vshufps	$221, %xmm7, %xmm8, %xmm7
	vpshufb	%xmm0, %xmm1, %xmm5
	vmovdqa	64(%rsp), %xmm1
	vshufps	$136, %xmm6, %xmm3, %xmm8
	vshufps	$221, %xmm6, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm14, %xmm6
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovaps	%xmm4, 96(%rsp)
	vpshufb	%xmm0, %xmm8, %xmm8
	vmovdqa	%xmm14, 112(%rsp)
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	%xmm5, 128(%rsp)
	vpshufb	%xmm0, %xmm3, %xmm13
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	%xmm14, 48(%rsp)
	vpshufb	%xmm0, %xmm4, %xmm4
	movq	40(%rsp), %rcx
	vmovdqa	%xmm13, 16(%rsp)
	vmovaps	%xmm15, %xmm13
	vmovlhps	%xmm12, %xmm15, %xmm15
	vmovdqa	96(%rsp), %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovlhps	%xmm5, %xmm9, %xmm14
	vshufps	$238, %xmm5, %xmm9, %xmm9
	vshufps	$136, %xmm14, %xmm15, %xmm3
	vshufps	$221, %xmm14, %xmm15, %xmm14
	vmovlhps	%xmm7, %xmm4, %xmm15
	vshufps	$238, %xmm7, %xmm4, %xmm5
	vmovaps	%xmm3, 64(%rsp)
	vshufps	$238, %xmm12, %xmm13, %xmm3
	vmovaps	%xmm8, %xmm7
	vmovlhps	%xmm8, %xmm1, %xmm4
	vmovaps	%xmm14, (%rsp)
	vshufps	$221, %xmm9, %xmm3, %xmm13
	vshufps	$136, %xmm9, %xmm3, %xmm14
	vmovlhps	%xmm2, %xmm6, %xmm8
	vshufps	$238, %xmm7, %xmm1, %xmm3
	vshufps	$238, %xmm2, %xmm6, %xmm2
	vmovlhps	%xmm11, %xmm10, %xmm12
	vshufps	$238, %xmm11, %xmm10, %xmm9
	vmovaps	%xmm13, 80(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm1
	vshufps	$136, %xmm5, %xmm9, %xmm11
	vshufps	$221, %xmm5, %xmm9, %xmm10
	vshufps	$136, %xmm3, %xmm2, %xmm7
	vmovaps	112(%rsp), %xmm2
	vshufps	$136, %xmm4, %xmm8, %xmm9
	vmovaps	%xmm1, 96(%rsp)
	vshufps	$221, %xmm4, %xmm8, %xmm8
	vshufps	$136, %xmm15, %xmm12, %xmm13
	vshufps	$221, %xmm15, %xmm12, %xmm12
	vmovaps	48(%rsp), %xmm4
	vmovaps	128(%rsp), %xmm1
	vmovaps	16(%rsp), %xmm3
	vmovlhps	%xmm1, %xmm2, %xmm6
	vshufps	$238, %xmm1, %xmm2, %xmm2
	vmovlhps	%xmm3, %xmm4, %xmm5
	vshufps	$238, %xmm3, %xmm4, %xmm3
	vmovdqa	96(%rsp), %xmm1
	vshufps	$136, %xmm5, %xmm6, %xmm15
	vmovdqa	(%rsp), %xmm4
	vshufps	$221, %xmm5, %xmm6, %xmm5
	vshufps	$136, %xmm3, %xmm2, %xmm6
	vmovaps	%xmm15, 48(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm2
	vmovdqa	64(%rsp), %xmm15
	vmovdqa	80(%rsp), %xmm3
	vmovdqa	%xmm15, 32(%r15)
	vmovdqa	%xmm4, 32(%r14)
	vmovdqa	%xmm14, 32(%r13)
	vmovdqa	%xmm3, 32(%r12)
	vmovdqa	%xmm13, 32(%rbp)
	vmovdqa	%xmm12, 32(%rbx)
	vmovdqa	%xmm11, 32(%r11)
	vmovdqa	%xmm10, 32(%r10)
	vmovdqa	%xmm9, 32(%r9)
	vmovdqa	%xmm8, 32(%r8)
	vmovdqa	%xmm7, 32(%rdi)
	vmovdqa	%xmm1, 32(%rsi)
	vmovdqa	48(%rsp), %xmm15
	vmovdqa	%xmm15, 32(%rcx)
	movq	144(%rsp), %rcx
	vmovdqa	%xmm5, 32(%rcx)
	movq	152(%rsp), %rcx
	vmovdqa	%xmm6, 32(%rcx)
	movq	160(%rsp), %rcx
	vmovdqa	%xmm2, 32(%rcx)
	vmovaps	1568(%rax), %xmm14
	vmovaps	1536(%rax), %xmm13
	vmovaps	1632(%rax), %xmm7
	vmovlhps	%xmm14, %xmm13, %xmm10
	vshufps	$238, %xmm14, %xmm13, %xmm12
	vmovaps	1600(%rax), %xmm9
	vmovaps	1696(%rax), %xmm2
	vmovlhps	%xmm7, %xmm9, %xmm4
	vshufps	$238, %xmm7, %xmm9, %xmm8
	vmovaps	1664(%rax), %xmm1
	vshufps	$136, %xmm4, %xmm10, %xmm15
	vmovaps	1760(%rax), %xmm3
	vshufps	$238, %xmm2, %xmm1, %xmm9
	vshufps	$221, %xmm4, %xmm10, %xmm10
	vmovaps	1728(%rax), %xmm6
	vmovlhps	%xmm2, %xmm1, %xmm11
	vshufps	$136, %xmm8, %xmm12, %xmm14
	vshufps	$238, %xmm3, %xmm6, %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm8, %xmm12, %xmm13
	vmovaps	1856(%rax), %xmm6
	vshufps	$136, %xmm5, %xmm11, %xmm12
	vshufps	$221, %xmm4, %xmm9, %xmm1
	vmovaps	1888(%rax), %xmm3
	vshufps	$136, %xmm4, %xmm9, %xmm2
	vshufps	$221, %xmm5, %xmm11, %xmm11
	vmovaps	1792(%rax), %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm3
	vmovaps	1824(%rax), %xmm5
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm4, %xmm6
	vmovlhps	%xmm5, %xmm4, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm2
	vshufps	$136, %xmm7, %xmm8, %xmm9
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm8
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vmovaps	2016(%rax), %xmm3
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovaps	1984(%rax), %xmm6
	vpshufb	%xmm0, %xmm10, %xmm10
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovaps	%xmm5, 80(%rsp)
	vmovaps	%xmm8, 48(%rsp)
	vmovaps	%xmm7, 64(%rsp)
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm6
	vmovaps	1920(%rax), %xmm5
	vmovhps	1952(%rax), %xmm5, %xmm8
	vshufps	$238, 1952(%rax), %xmm5, %xmm3
	addq	$16, %rax
	vshufps	$136, %xmm7, %xmm8, %xmm4
	vpshufb	%xmm0, %xmm1, %xmm5
	vmovdqa	64(%rsp), %xmm1
	vshufps	$221, %xmm7, %xmm8, %xmm7
	vmovaps	%xmm4, 96(%rsp)
	vshufps	$136, %xmm6, %xmm3, %xmm8
	vshufps	$221, %xmm6, %xmm3, %xmm3
	vpshufb	%xmm0, %xmm14, %xmm6
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	%xmm5, 128(%rsp)
	vpshufb	%xmm0, %xmm8, %xmm8
	vmovdqa	%xmm14, 112(%rsp)
	vpshufb	%xmm0, %xmm13, %xmm14
	vpshufb	%xmm0, %xmm3, %xmm13
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovdqa	96(%rsp), %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	48(%rsp), %xmm4
	vmovdqa	%xmm13, 16(%rsp)
	vmovaps	%xmm15, %xmm13
	vmovdqa	%xmm14, 48(%rsp)
	vmovlhps	%xmm12, %xmm15, %xmm15
	vmovlhps	%xmm5, %xmm9, %xmm14
	vpshufb	%xmm0, %xmm4, %xmm4
	vshufps	$238, %xmm5, %xmm9, %xmm9
	vshufps	$136, %xmm14, %xmm15, %xmm3
	vshufps	$221, %xmm14, %xmm15, %xmm14
	vmovlhps	%xmm7, %xmm4, %xmm15
	vshufps	$238, %xmm7, %xmm4, %xmm5
	vmovaps	%xmm3, 64(%rsp)
	vshufps	$238, %xmm12, %xmm13, %xmm3
	vmovaps	%xmm8, %xmm7
	vmovlhps	%xmm8, %xmm1, %xmm4
	vmovaps	%xmm14, (%rsp)
	vshufps	$221, %xmm9, %xmm3, %xmm13
	vmovlhps	%xmm2, %xmm6, %xmm8
	vshufps	$136, %xmm9, %xmm3, %xmm14
	vshufps	$238, %xmm2, %xmm6, %xmm2
	vshufps	$238, %xmm7, %xmm1, %xmm3
	vmovlhps	%xmm11, %xmm10, %xmm12
	vshufps	$238, %xmm11, %xmm10, %xmm9
	vmovaps	%xmm13, 80(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm1
	addq	$16, 168(%rsp)
	vshufps	$136, %xmm5, %xmm9, %xmm11
	vshufps	$221, %xmm5, %xmm9, %xmm10
	vshufps	$136, %xmm3, %xmm2, %xmm7
	cmpq	$32, 168(%rsp)
	vshufps	$136, %xmm4, %xmm8, %xmm9
	movq	160(%rsp), %rcx
	vshufps	$221, %xmm4, %xmm8, %xmm8
	vmovaps	112(%rsp), %xmm2
	vshufps	$136, %xmm15, %xmm12, %xmm13
	vmovaps	48(%rsp), %xmm4
	vshufps	$221, %xmm15, %xmm12, %xmm12
	vmovaps	%xmm1, 96(%rsp)
	vmovaps	16(%rsp), %xmm3
	vmovaps	128(%rsp), %xmm1
	vmovlhps	%xmm3, %xmm4, %xmm5
	vshufps	$238, %xmm3, %xmm4, %xmm3
	vmovlhps	%xmm1, %xmm2, %xmm6
	vshufps	$238, %xmm1, %xmm2, %xmm2
	vmovdqa	(%rsp), %xmm4
	vshufps	$136, %xmm5, %xmm6, %xmm15
	vmovdqa	64(%rsp), %xmm1
	vshufps	$221, %xmm5, %xmm6, %xmm5
	vshufps	$136, %xmm3, %xmm2, %xmm6
	vmovaps	%xmm15, 48(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm3
	vmovdqa	%xmm1, 48(%r15)
	vmovdqa	%xmm4, 48(%r14)
	vmovdqa	%xmm14, 48(%r13)
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	96(%rsp), %xmm2
	vmovdqa	%xmm15, 48(%r12)
	vmovdqa	%xmm13, 48(%rbp)
	vmovdqa	%xmm12, 48(%rbx)
	vmovdqa	%xmm11, 48(%r11)
	vmovdqa	%xmm10, 48(%r10)
	vmovdqa	%xmm9, 48(%r9)
	vmovdqa	%xmm8, 48(%r8)
	vmovdqa	%xmm7, 48(%rdi)
	vmovdqa	%xmm2, 48(%rsi)
	movq	40(%rsp), %rdi
	movq	144(%rsp), %rsi
	movq	152(%rsp), %rbx
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	%xmm1, 48(%rdi)
	vmovdqa	%xmm5, 48(%rsi)
	vmovdqa	%xmm6, 48(%rbx)
	vmovdqa	%xmm3, 48(%rcx)
	jne	.L139
	addq	$184, %rsp
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
.L141:
	.cfi_restore_state
	movl	$_ZZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$524, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1838:
	.size	_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh, .-_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh
	.section	.text._ZNK18Read16_Write16_SSE5demuxEPKhmPPh,"axG",@progbits,_ZNK18Read16_Write16_SSE5demuxEPKhmPPh,comdat
	.align 2
	.p2align 5,,31
	.weak	_ZNK18Read16_Write16_SSE5demuxEPKhmPPh
	.type	_ZNK18Read16_Write16_SSE5demuxEPKhmPPh, @function
_ZNK18Read16_Write16_SSE5demuxEPKhmPPh:
.LFB1837:
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
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	cmpq	$2048, %rdx
	movq	%rsi, 184(%rsp)
	jne	.L148
	vmovdqa	.LC2(%rip), %xmm0
	movq	$0, 168(%rsp)
.L145:
	movq	96(%rcx), %rdx
	movq	104(%rcx), %rax
	movq	(%rcx), %r15
	movq	8(%rcx), %r14
	movq	16(%rcx), %r13
	movq	24(%rcx), %r12
	movq	%rdx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movq	112(%rcx), %rdx
	movq	120(%rcx), %rax
	movq	32(%rcx), %rbp
	movq	40(%rcx), %rbx
	movq	48(%rcx), %r11
	movq	56(%rcx), %r10
	movq	%rax, 48(%rsp)
	movq	64(%rcx), %r9
	xorl	%eax, %eax
	movq	72(%rcx), %r8
	movq	80(%rcx), %rdi
	movq	88(%rcx), %rsi
	movq	%rdx, 160(%rsp)
	movq	%rcx, 176(%rsp)
	movq	184(%rsp), %rdx
	movq	48(%rsp), %rcx
	addq	168(%rsp), %rdx
	movq	%rcx, 8(%rsp)
.L144:
	vmovaps	32(%rdx), %xmm14
	vmovaps	(%rdx), %xmm13
	vmovaps	96(%rdx), %xmm7
	vmovlhps	%xmm14, %xmm13, %xmm10
	vshufps	$238, %xmm14, %xmm13, %xmm12
	vmovaps	64(%rdx), %xmm9
	vmovaps	160(%rdx), %xmm2
	vmovlhps	%xmm7, %xmm9, %xmm4
	vshufps	$238, %xmm7, %xmm9, %xmm8
	vmovaps	128(%rdx), %xmm1
	vshufps	$136, %xmm4, %xmm10, %xmm15
	vmovaps	224(%rdx), %xmm3
	vshufps	$238, %xmm2, %xmm1, %xmm9
	vshufps	$221, %xmm4, %xmm10, %xmm10
	vmovaps	192(%rdx), %xmm6
	vmovlhps	%xmm2, %xmm1, %xmm11
	vshufps	$136, %xmm8, %xmm12, %xmm14
	vshufps	$238, %xmm3, %xmm6, %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm8, %xmm12, %xmm13
	vmovaps	320(%rdx), %xmm6
	vshufps	$136, %xmm5, %xmm11, %xmm12
	vshufps	$221, %xmm4, %xmm9, %xmm1
	vmovaps	352(%rdx), %xmm3
	vshufps	$136, %xmm4, %xmm9, %xmm2
	vshufps	$221, %xmm5, %xmm11, %xmm11
	vmovaps	256(%rdx), %xmm4
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm3
	vmovaps	288(%rdx), %xmm5
	vpshufb	%xmm0, %xmm12, %xmm12
	vpshufb	%xmm0, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm4, %xmm6
	vmovlhps	%xmm5, %xmm4, %xmm8
	vpshufb	%xmm0, %xmm2, %xmm2
	vshufps	$136, %xmm7, %xmm8, %xmm9
	vshufps	$221, %xmm3, %xmm6, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm8
	vshufps	$136, %xmm3, %xmm6, %xmm7
	vmovaps	480(%rdx), %xmm3
	vpshufb	%xmm0, %xmm9, %xmm9
	vmovaps	%xmm5, 80(%rsp)
	vpshufb	%xmm0, %xmm10, %xmm10
	vmovaps	%xmm8, 48(%rsp)
	vpshufb	%xmm0, %xmm11, %xmm11
	vmovaps	%xmm7, 64(%rsp)
	vmovaps	384(%rdx), %xmm5
	vmovaps	448(%rdx), %xmm6
	vmovhps	416(%rdx), %xmm5, %xmm8
	vmovlhps	%xmm3, %xmm6, %xmm7
	vshufps	$238, %xmm3, %xmm6, %xmm6
	vshufps	$136, %xmm7, %xmm8, %xmm4
	vshufps	$238, 416(%rdx), %xmm5, %xmm3
	addq	$512, %rdx
	vmovaps	%xmm4, 96(%rsp)
	vpshufb	%xmm0, %xmm1, %xmm5
	vshufps	$221, %xmm7, %xmm8, %xmm7
	vshufps	$136, %xmm6, %xmm3, %xmm8
	vshufps	$221, %xmm6, %xmm3, %xmm3
	vmovdqa	48(%rsp), %xmm4
	vpshufb	%xmm0, %xmm14, %xmm6
	vpshufb	%xmm0, %xmm13, %xmm14
	vmovdqa	80(%rsp), %xmm13
	vpshufb	%xmm0, %xmm4, %xmm4
	vmovdqa	%xmm5, 128(%rsp)
	vpshufb	%xmm0, %xmm7, %xmm7
	vmovdqa	%xmm14, 112(%rsp)
	vpshufb	%xmm0, %xmm13, %xmm14
	vpshufb	%xmm0, %xmm3, %xmm13
	vpshufb	%xmm0, %xmm8, %xmm8
	vmovdqa	96(%rsp), %xmm5
	vpshufb	%xmm0, %xmm5, %xmm5
	vmovdqa	%xmm14, 48(%rsp)
	vmovdqa	%xmm13, 32(%rsp)
	vmovlhps	%xmm5, %xmm9, %xmm14
	vmovaps	%xmm15, %xmm13
	vmovlhps	%xmm12, %xmm15, %xmm15
	vshufps	$238, %xmm5, %xmm9, %xmm9
	vshufps	$136, %xmm14, %xmm15, %xmm3
	vmovdqa	64(%rsp), %xmm1
	vshufps	$221, %xmm14, %xmm15, %xmm14
	vpshufb	%xmm0, %xmm1, %xmm1
	vmovlhps	%xmm7, %xmm4, %xmm15
	vmovaps	%xmm3, 64(%rsp)
	vshufps	$238, %xmm12, %xmm13, %xmm3
	vshufps	$238, %xmm7, %xmm4, %xmm5
	vmovaps	%xmm8, %xmm7
	vmovlhps	%xmm8, %xmm1, %xmm4
	vshufps	$221, %xmm9, %xmm3, %xmm13
	vmovlhps	%xmm2, %xmm6, %xmm8
	vmovaps	%xmm14, 16(%rsp)
	vshufps	$238, %xmm2, %xmm6, %xmm2
	vshufps	$136, %xmm9, %xmm3, %xmm14
	vmovlhps	%xmm11, %xmm10, %xmm12
	vshufps	$238, %xmm7, %xmm1, %xmm3
	vshufps	$238, %xmm11, %xmm10, %xmm9
	vmovaps	%xmm13, 80(%rsp)
	vshufps	$221, %xmm3, %xmm2, %xmm1
	vshufps	$136, %xmm5, %xmm9, %xmm11
	vshufps	$221, %xmm5, %xmm9, %xmm10
	vshufps	$136, %xmm3, %xmm2, %xmm7
	vmovaps	112(%rsp), %xmm2
	vshufps	$136, %xmm4, %xmm8, %xmm9
	vmovaps	32(%rsp), %xmm3
	vshufps	$221, %xmm4, %xmm8, %xmm8
	vshufps	$136, %xmm15, %xmm12, %xmm13
	vmovaps	48(%rsp), %xmm4
	vshufps	$221, %xmm15, %xmm12, %xmm12
	vmovaps	%xmm1, 96(%rsp)
	vmovlhps	%xmm3, %xmm4, %xmm5
	vshufps	$238, %xmm3, %xmm4, %xmm3
	vmovaps	128(%rsp), %xmm1
	vmovlhps	%xmm1, %xmm2, %xmm6
	vshufps	$238, %xmm1, %xmm2, %xmm2
	vshufps	$136, %xmm5, %xmm6, %xmm15
	vshufps	$221, %xmm5, %xmm6, %xmm5
	vshufps	$136, %xmm3, %xmm2, %xmm6
	vmovaps	%xmm15, 48(%rsp)
	movq	144(%rsp), %rcx
	vshufps	$221, %xmm3, %xmm2, %xmm3
	vmovdqa	64(%rsp), %xmm1
	vmovdqa	16(%rsp), %xmm4
	vmovdqa	%xmm1, (%r15,%rax)
	vmovdqa	%xmm4, (%r14,%rax)
	vmovdqa	%xmm14, 0(%r13,%rax)
	vmovdqa	80(%rsp), %xmm15
	vmovdqa	96(%rsp), %xmm2
	vmovdqa	48(%rsp), %xmm1
	vmovdqa	%xmm15, (%r12,%rax)
	vmovdqa	%xmm13, 0(%rbp,%rax)
	vmovdqa	%xmm12, (%rbx,%rax)
	vmovdqa	%xmm11, (%r11,%rax)
	vmovdqa	%xmm10, (%r10,%rax)
	vmovdqa	%xmm9, (%r9,%rax)
	vmovdqa	%xmm8, (%r8,%rax)
	vmovdqa	%xmm7, (%rdi,%rax)
	vmovdqa	%xmm2, (%rsi,%rax)
	vmovdqa	%xmm1, (%rcx,%rax)
	movq	152(%rsp), %rcx
	vmovdqa	%xmm5, (%rcx,%rax)
	movq	160(%rsp), %rcx
	vmovdqa	%xmm6, (%rcx,%rax)
	movq	8(%rsp), %rcx
	vmovdqa	%xmm3, (%rcx,%rax)
	addq	$16, %rax
	cmpq	$64, %rax
	jne	.L144
	movq	176(%rsp), %rcx
	addq	$16, 168(%rsp)
	subq	$-128, %rcx
	cmpq	$32, 168(%rsp)
	jne	.L145
	addq	$200, %rsp
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
.L148:
	.cfi_restore_state
	movl	$_ZZNK18Read16_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, %ecx
	movl	$443, %edx
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1837:
	.size	_ZNK18Read16_Write16_SSE5demuxEPKhmPPh, .-_ZNK18Read16_Write16_SSE5demuxEPKhmPPh
	.text
	.p2align 5,,31
	.globl	_Z8generatev
	.type	_Z8generatev, @function
_Z8generatev:
.LFB1842:
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
.L150:
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
	jne	.L150
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1842:
	.size	_Z8generatev, .-_Z8generatev
	.p2align 5,,31
	.globl	_Z12allocate_dstv
	.type	_Z12allocate_dstv, @function
_Z12allocate_dstv:
.LFB1843:
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
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L161:
	testb	$2, %dl
	jne	.L179
.L162:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L180
.L163:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%rbx, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L164
	movl	$0, (%rdi)
	addq	$4, %rdi
.L164:
	testb	$2, %sil
	je	.L165
	movw	$0, (%rdi)
	addq	$2, %rdi
.L165:
	andl	$1, %esi
	je	.L166
	movb	$0, (%rdi)
.L166:
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
	jne	.L181
.L170:
	testb	$2, %dl
	jne	.L182
.L171:
	testb	$4, %dl
	jne	.L183
.L172:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%rbx, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L173
	movl	$0, (%rdi)
	addq	$4, %rdi
.L173:
	testb	$2, %sil
	je	.L174
	movw	$0, (%rdi)
	addq	$2, %rdi
.L174:
	andl	$1, %esi
	je	.L175
	movb	$0, (%rdi)
.L175:
	addq	$1, %rbp
	cmpq	$32, %rbp
	je	.L184
.L167:
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
	je	.L161
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L162
	.p2align 5
.L179:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L163
	.p2align 5
.L180:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L183:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L172
	.p2align 4,,10
	.p2align 3
.L182:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L181:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L184:
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
.LFE1843:
	.size	_Z12allocate_dstv, .-_Z12allocate_dstv
	.p2align 5,,31
	.globl	_Z10delete_dstPPh
	.type	_Z10delete_dstPPh, @function
_Z10delete_dstPPh:
.LFB1844:
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
.L186:
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
	jne	.L186
	movq	%rbp, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv
	.cfi_endproc
.LFE1844:
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
.LFB1845:
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
.L196:
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
	jne	.L196
	movl	$256, %edi
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	call	_Znam
	movq	%rax, %rbp
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L198:
	testb	$2, %dl
	jne	.L319
.L199:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L320
.L200:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L201
	movl	$0, (%rdi)
	addq	$4, %rdi
.L201:
	testb	$2, %sil
	je	.L202
	movw	$0, (%rdi)
	addq	$2, %rdi
.L202:
	andl	$1, %esi
	je	.L203
	movb	$0, (%rdi)
.L203:
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
	jne	.L321
.L287:
	testb	$2, %dl
	jne	.L322
.L288:
	testb	$4, %dl
	jne	.L323
.L289:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r12, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L290
	movl	$0, (%rdi)
	addq	$4, %rdi
.L290:
	testb	$2, %sil
	je	.L291
	movw	$0, (%rdi)
	addq	$2, %rdi
.L291:
	andl	$1, %esi
	je	.L292
	movb	$0, (%rdi)
.L292:
	addq	$1, %r13
	cmpq	$32, %r13
	je	.L324
.L204:
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
	je	.L198
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L199
	.p2align 5
.L319:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L200
	.p2align 5
.L320:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L323:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L322:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L321:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L324:
	movl	$256, %edi
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	call	_Znam
	movq	%rax, %r12
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L206:
	testb	$2, %dl
	jne	.L325
.L207:
	testb	$4, %dl
	.p2align 4,,2
	jne	.L326
.L208:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r13, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L209
	movl	$0, (%rdi)
	addq	$4, %rdi
.L209:
	testb	$2, %sil
	je	.L210
	movw	$0, (%rdi)
	addq	$2, %rdi
.L210:
	andl	$1, %esi
	je	.L211
	movb	$0, (%rdi)
.L211:
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
	jne	.L327
.L280:
	testb	$2, %dl
	jne	.L328
.L281:
	testb	$4, %dl
	jne	.L329
.L282:
	movl	%esi, %ecx
	movq	%rdx, %rdi
	movq	%r13, %rax
	shrl	$3, %ecx
	testb	$4, %sil
	rep stosq
	je	.L283
	movl	$0, (%rdi)
	addq	$4, %rdi
.L283:
	testb	$2, %sil
	je	.L284
	movw	$0, (%rdi)
	addq	$2, %rdi
.L284:
	andl	$1, %esi
	je	.L285
	movb	$0, (%rdi)
.L285:
	addq	$1, %r14
	cmpq	$32, %r14
	je	.L330
.L212:
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
	je	.L206
	addq	$1, %rdx
	movb	$0, (%rax)
	movb	$63, %sil
	testb	$2, %dl
	je	.L207
	.p2align 5
.L325:
	movw	$0, (%rdx)
	addq	$2, %rdx
	subl	$2, %esi
	testb	$4, %dl
	je	.L208
	.p2align 5
.L326:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L329:
	movl	$0, (%rdx)
	subl	$4, %esi
	addq	$4, %rdx
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L328:
	movw	$0, (%rdx)
	subl	$2, %esi
	addq	$2, %rdx
	jmp	.L281
	.p2align 4,,10
	.p2align 3
.L327:
	movb	$0, (%rax)
	addq	$1, %rdx
	movl	$63, %esi
	jmp	.L280
	.p2align 4,,10
	.p2align 3
.L330:
	movzbl	(%rbx), %edx
	movq	0(%rbp), %rsi
	xorl	%eax, %eax
	movl	$2, %ecx
	movb	%dl, (%rsi)
	movzbl	1(%rbx), %r14d
	movl	$1, %esi
	movq	8(%rbp), %r13
	movb	%r14b, 0(%r13)
.L312:
	leaq	1(%rsi), %rdx
	cmpq	$2048, %rdx
	je	.L331
.L215:
	movzbl	1(%rbx,%rsi), %edi
	movq	0(%rbp,%rcx,8), %r8
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r8,%rax)
	je	.L332
.L302:
	movzbl	1(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L333
.L303:
	movzbl	2(%rbx,%rdx), %r14d
	movq	0(%rbp,%rcx,8), %r13
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r14b, 0(%r13,%rax)
	je	.L334
.L304:
	movzbl	3(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L335
.L305:
	movzbl	4(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L336
.L306:
	movzbl	5(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L337
.L307:
	movzbl	6(%rbx,%rdx), %r14d
	movq	0(%rbp,%rcx,8), %r13
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r14b, 0(%r13,%rax)
	je	.L338
.L308:
	movzbl	7(%rbx,%rdx), %r8d
	movq	0(%rbp,%rcx,8), %rsi
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r8b, (%rsi,%rax)
	je	.L339
.L309:
	movzbl	8(%rbx,%rdx), %edi
	movq	0(%rbp,%rcx,8), %r9
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%dil, (%r9,%rax)
	je	.L340
.L310:
	movzbl	9(%rbx,%rdx), %r11d
	movq	0(%rbp,%rcx,8), %r10
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r11b, (%r10,%rax)
	je	.L341
.L311:
	movzbl	10(%rbx,%rdx), %r13d
	leaq	10(%rdx), %rsi
	movq	0(%rbp,%rcx,8), %rdx
	addq	$1, %rcx
	cmpq	$32, %rcx
	movb	%r13b, (%rdx,%rax)
	jne	.L312
	leaq	1(%rsi), %rdx
	addq	$1, %rax
	xorb	%cl, %cl
	cmpq	$2048, %rdx
	jne	.L215
.L331:
	movq	(%r15), %r9
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	xorl	%r13d, %r13d
	call	*(%r9)
.L217:
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	movl	$64, %edx
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	1(%r13), %r14
	movl	$64, %edx
	movq	(%r12,%r14,8), %rsi
	movq	0(%rbp,%r14,8), %rdi
	movq	%r14, %r13
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	addq	$1, %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	2(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	3(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	4(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	5(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	6(%r14), %r13
	movl	$64, %edx
	movq	(%r12,%r13,8), %rsi
	movq	0(%rbp,%r13,8), %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L315
	leaq	7(%r14), %r13
	cmpq	$32, %r13
	jne	.L217
	movq	%rbx, %rdi
	xorl	%ebx, %ebx
	call	_ZdlPv
.L218:
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
	jne	.L218
	movq	%rbp, %rdi
	xorb	%bl, %bl
	call	_ZdlPv
.L219:
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
	jne	.L219
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
.L341:
	.cfi_restore_state
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L340:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L310
	.p2align 4,,10
	.p2align 3
.L339:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L309
	.p2align 4,,10
	.p2align 3
.L338:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L337:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L307
	.p2align 4,,10
	.p2align 3
.L336:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L306
	.p2align 4,,10
	.p2align 3
.L335:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L334:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L304
	.p2align 4,,10
	.p2align 3
.L333:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L332:
	addq	$1, %rax
	xorb	%cl, %cl
	jmp	.L302
.L315:
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
.LFE1845:
	.size	_Z5checkRK5Demux, .-_Z5checkRK5Demux
	.section	.rodata.str1.1
.LC8:
	.string	": "
	.text
	.p2align 5,,31
	.globl	_Z7measureRK5Demux
	.type	_Z7measureRK5Demux, @function
_Z7measureRK5Demux:
.LFB1852:
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
	jae	.L343
	vcvttsd2siq	%xmm0, %rbp
.L344:
	movl	$1000000, %r12d
	.p2align 5
.L345:
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
	jne	.L345
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
	jae	.L346
	vcvttsd2siq	%xmm0, %rax
.L347:
	movq	(%rbx), %rcx
	subq	%rbp, %rax
	movq	%rax, %rbp
	movq	-8(%rcx), %rbx
	movq	8(%rbx), %rdx
	xorl	%ebx, %ebx
	cmpb	$42, (%rdx)
	sete	%bl
	addq	%rdx, %rbx
	je	.L362
	movq	%rbx, %rdi
	call	strlen
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.L350:
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
	je	.L363
	cmpb	$0, 56(%rbp)
	je	.L352
	movzbl	67(%rbp), %eax
.L353:
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
.L343:
	.cfi_restore_state
	vsubsd	.LC7(%rip), %xmm0, %xmm3
	movabsq	$-9223372036854775808, %rcx
	vcvttsd2siq	%xmm3, %rbp
	xorq	%rcx, %rbp
	jmp	.L344
	.p2align 4,,10
	.p2align 3
.L346:
	vsubsd	.LC7(%rip), %xmm0, %xmm7
	movabsq	$-9223372036854775808, %r12
	vcvttsd2siq	%xmm7, %rax
	xorq	%r12, %rax
	jmp	.L347
	.p2align 4,,10
	.p2align 3
.L352:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %r12
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%r12)
	jmp	.L353
.L362:
	movq	_ZSt4cout(%rip), %r11
	movq	-24(%r11), %rdi
	addq	$_ZSt4cout, %rdi
	movl	32(%rdi), %esi
	orl	$1, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
	jmp	.L350
.L363:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE1852:
	.size	_Z7measureRK5Demux, .-_Z7measureRK5Demux
	.section	.text.startup,"ax",@progbits
	.p2align 5,,31
	.globl	main
	.type	main, @function
main:
.LFB1853:
	.cfi_startproc
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
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
	leaq	112(%rsp), %rdi
	movq	$_ZTV17Read8_Write16_SSE+16, 112(%rsp)
	call	_Z7measureRK5Demux
	leaq	128(%rsp), %rdi
	movq	$_ZTV24Read8_Write16_SSE_Unroll+16, 128(%rsp)
	call	_Z7measureRK5Demux
	leaq	144(%rsp), %rdi
	movq	$_ZTV18Read16_Write16_SSE+16, 144(%rsp)
	call	_Z7measureRK5Demux
	leaq	160(%rsp), %rdi
	movq	$_ZTV25Read16_Write16_SSE_Unroll+16, 160(%rsp)
	call	_Z7measureRK5Demux
	leaq	176(%rsp), %rdi
	movq	$_ZTV17Read4_Write32_AVX+16, 176(%rsp)
	call	_Z7measureRK5Demux
	leaq	192(%rsp), %rdi
	movq	$_ZTV17Read8_Write32_AVX+16, 192(%rsp)
	call	_Z7measureRK5Demux
	leaq	208(%rsp), %rdi
	movq	$_ZTV24Read8_Write32_AVX_Unroll+16, 208(%rsp)
	call	_Z7measureRK5Demux
	xorl	%eax, %eax
	addq	$232, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1853:
	.size	main, .-main
	.p2align 5,,31
	.type	_GLOBAL__sub_I__Z8generatev, @function
_GLOBAL__sub_I__Z8generatev:
.LFB1903:
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
.LFE1903:
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
	.weak	_ZTV17Read8_Write16_SSE
	.section	.rodata._ZTV17Read8_Write16_SSE,"aG",@progbits,_ZTV17Read8_Write16_SSE,comdat
	.align 16
	.type	_ZTV17Read8_Write16_SSE, @object
	.size	_ZTV17Read8_Write16_SSE, 24
_ZTV17Read8_Write16_SSE:
	.quad	0
	.quad	_ZTI17Read8_Write16_SSE
	.quad	_ZNK17Read8_Write16_SSE5demuxEPKhmPPh
	.weak	_ZTV24Read8_Write16_SSE_Unroll
	.section	.rodata._ZTV24Read8_Write16_SSE_Unroll,"aG",@progbits,_ZTV24Read8_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTV24Read8_Write16_SSE_Unroll, @object
	.size	_ZTV24Read8_Write16_SSE_Unroll, 24
_ZTV24Read8_Write16_SSE_Unroll:
	.quad	0
	.quad	_ZTI24Read8_Write16_SSE_Unroll
	.quad	_ZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPh
	.weak	_ZTV18Read16_Write16_SSE
	.section	.rodata._ZTV18Read16_Write16_SSE,"aG",@progbits,_ZTV18Read16_Write16_SSE,comdat
	.align 16
	.type	_ZTV18Read16_Write16_SSE, @object
	.size	_ZTV18Read16_Write16_SSE, 24
_ZTV18Read16_Write16_SSE:
	.quad	0
	.quad	_ZTI18Read16_Write16_SSE
	.quad	_ZNK18Read16_Write16_SSE5demuxEPKhmPPh
	.weak	_ZTV25Read16_Write16_SSE_Unroll
	.section	.rodata._ZTV25Read16_Write16_SSE_Unroll,"aG",@progbits,_ZTV25Read16_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTV25Read16_Write16_SSE_Unroll, @object
	.size	_ZTV25Read16_Write16_SSE_Unroll, 24
_ZTV25Read16_Write16_SSE_Unroll:
	.quad	0
	.quad	_ZTI25Read16_Write16_SSE_Unroll
	.quad	_ZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPh
	.weak	_ZTV17Read4_Write32_AVX
	.section	.rodata._ZTV17Read4_Write32_AVX,"aG",@progbits,_ZTV17Read4_Write32_AVX,comdat
	.align 16
	.type	_ZTV17Read4_Write32_AVX, @object
	.size	_ZTV17Read4_Write32_AVX, 24
_ZTV17Read4_Write32_AVX:
	.quad	0
	.quad	_ZTI17Read4_Write32_AVX
	.quad	_ZNK17Read4_Write32_AVX5demuxEPKhmPPh
	.weak	_ZTV17Read8_Write32_AVX
	.section	.rodata._ZTV17Read8_Write32_AVX,"aG",@progbits,_ZTV17Read8_Write32_AVX,comdat
	.align 16
	.type	_ZTV17Read8_Write32_AVX, @object
	.size	_ZTV17Read8_Write32_AVX, 24
_ZTV17Read8_Write32_AVX:
	.quad	0
	.quad	_ZTI17Read8_Write32_AVX
	.quad	_ZNK17Read8_Write32_AVX5demuxEPKhmPPh
	.weak	_ZTV24Read8_Write32_AVX_Unroll
	.section	.rodata._ZTV24Read8_Write32_AVX_Unroll,"aG",@progbits,_ZTV24Read8_Write32_AVX_Unroll,comdat
	.align 16
	.type	_ZTV24Read8_Write32_AVX_Unroll, @object
	.size	_ZTV24Read8_Write32_AVX_Unroll, 24
_ZTV24Read8_Write32_AVX_Unroll:
	.quad	0
	.quad	_ZTI24Read8_Write32_AVX_Unroll
	.quad	_ZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPh
	.section	.rodata
	.align 32
	.type	_ZZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 80
_ZZNK24Read8_Write32_AVX_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read8_Write32_AVX_Unroll::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK17Read8_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK17Read8_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 73
_ZZNK17Read8_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read8_Write32_AVX::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK17Read4_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK17Read4_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 73
_ZZNK17Read4_Write32_AVX5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read4_Write32_AVX::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 81
_ZZNK25Read16_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read16_Write16_SSE_Unroll::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK18Read16_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK18Read16_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 74
_ZZNK18Read16_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read16_Write16_SSE::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 80
_ZZNK24Read8_Write16_SSE_Unroll5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read8_Write16_SSE_Unroll::demux(const byte*, size_t, byte**) const"
	.align 32
	.type	_ZZNK17Read8_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, @object
	.size	_ZZNK17Read8_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__, 73
_ZZNK17Read8_Write16_SSE5demuxEPKhmPPhE19__PRETTY_FUNCTION__:
	.string	"virtual void Read8_Write16_SSE::demux(const byte*, size_t, byte**) const"
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
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
	.weak	_ZTI17Read8_Write16_SSE
	.section	.rodata._ZTI17Read8_Write16_SSE,"aG",@progbits,_ZTI17Read8_Write16_SSE,comdat
	.align 16
	.type	_ZTI17Read8_Write16_SSE, @object
	.size	_ZTI17Read8_Write16_SSE, 24
_ZTI17Read8_Write16_SSE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS17Read8_Write16_SSE
	.quad	_ZTI5Demux
	.weak	_ZTI24Read8_Write16_SSE_Unroll
	.section	.rodata._ZTI24Read8_Write16_SSE_Unroll,"aG",@progbits,_ZTI24Read8_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTI24Read8_Write16_SSE_Unroll, @object
	.size	_ZTI24Read8_Write16_SSE_Unroll, 24
_ZTI24Read8_Write16_SSE_Unroll:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS24Read8_Write16_SSE_Unroll
	.quad	_ZTI5Demux
	.weak	_ZTI18Read16_Write16_SSE
	.section	.rodata._ZTI18Read16_Write16_SSE,"aG",@progbits,_ZTI18Read16_Write16_SSE,comdat
	.align 16
	.type	_ZTI18Read16_Write16_SSE, @object
	.size	_ZTI18Read16_Write16_SSE, 24
_ZTI18Read16_Write16_SSE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS18Read16_Write16_SSE
	.quad	_ZTI5Demux
	.weak	_ZTI25Read16_Write16_SSE_Unroll
	.section	.rodata._ZTI25Read16_Write16_SSE_Unroll,"aG",@progbits,_ZTI25Read16_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTI25Read16_Write16_SSE_Unroll, @object
	.size	_ZTI25Read16_Write16_SSE_Unroll, 24
_ZTI25Read16_Write16_SSE_Unroll:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS25Read16_Write16_SSE_Unroll
	.quad	_ZTI5Demux
	.weak	_ZTI17Read4_Write32_AVX
	.section	.rodata._ZTI17Read4_Write32_AVX,"aG",@progbits,_ZTI17Read4_Write32_AVX,comdat
	.align 16
	.type	_ZTI17Read4_Write32_AVX, @object
	.size	_ZTI17Read4_Write32_AVX, 24
_ZTI17Read4_Write32_AVX:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS17Read4_Write32_AVX
	.quad	_ZTI5Demux
	.weak	_ZTI17Read8_Write32_AVX
	.section	.rodata._ZTI17Read8_Write32_AVX,"aG",@progbits,_ZTI17Read8_Write32_AVX,comdat
	.align 16
	.type	_ZTI17Read8_Write32_AVX, @object
	.size	_ZTI17Read8_Write32_AVX, 24
_ZTI17Read8_Write32_AVX:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS17Read8_Write32_AVX
	.quad	_ZTI5Demux
	.weak	_ZTI24Read8_Write32_AVX_Unroll
	.section	.rodata._ZTI24Read8_Write32_AVX_Unroll,"aG",@progbits,_ZTI24Read8_Write32_AVX_Unroll,comdat
	.align 16
	.type	_ZTI24Read8_Write32_AVX_Unroll, @object
	.size	_ZTI24Read8_Write32_AVX_Unroll, 24
_ZTI24Read8_Write32_AVX_Unroll:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS24Read8_Write32_AVX_Unroll
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
	.weak	_ZTS17Read8_Write16_SSE
	.section	.rodata._ZTS17Read8_Write16_SSE,"aG",@progbits,_ZTS17Read8_Write16_SSE,comdat
	.align 16
	.type	_ZTS17Read8_Write16_SSE, @object
	.size	_ZTS17Read8_Write16_SSE, 20
_ZTS17Read8_Write16_SSE:
	.string	"17Read8_Write16_SSE"
	.weak	_ZTS24Read8_Write16_SSE_Unroll
	.section	.rodata._ZTS24Read8_Write16_SSE_Unroll,"aG",@progbits,_ZTS24Read8_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTS24Read8_Write16_SSE_Unroll, @object
	.size	_ZTS24Read8_Write16_SSE_Unroll, 27
_ZTS24Read8_Write16_SSE_Unroll:
	.string	"24Read8_Write16_SSE_Unroll"
	.weak	_ZTS18Read16_Write16_SSE
	.section	.rodata._ZTS18Read16_Write16_SSE,"aG",@progbits,_ZTS18Read16_Write16_SSE,comdat
	.align 16
	.type	_ZTS18Read16_Write16_SSE, @object
	.size	_ZTS18Read16_Write16_SSE, 21
_ZTS18Read16_Write16_SSE:
	.string	"18Read16_Write16_SSE"
	.weak	_ZTS25Read16_Write16_SSE_Unroll
	.section	.rodata._ZTS25Read16_Write16_SSE_Unroll,"aG",@progbits,_ZTS25Read16_Write16_SSE_Unroll,comdat
	.align 16
	.type	_ZTS25Read16_Write16_SSE_Unroll, @object
	.size	_ZTS25Read16_Write16_SSE_Unroll, 28
_ZTS25Read16_Write16_SSE_Unroll:
	.string	"25Read16_Write16_SSE_Unroll"
	.weak	_ZTS17Read4_Write32_AVX
	.section	.rodata._ZTS17Read4_Write32_AVX,"aG",@progbits,_ZTS17Read4_Write32_AVX,comdat
	.align 16
	.type	_ZTS17Read4_Write32_AVX, @object
	.size	_ZTS17Read4_Write32_AVX, 20
_ZTS17Read4_Write32_AVX:
	.string	"17Read4_Write32_AVX"
	.weak	_ZTS17Read8_Write32_AVX
	.section	.rodata._ZTS17Read8_Write32_AVX,"aG",@progbits,_ZTS17Read8_Write32_AVX,comdat
	.align 16
	.type	_ZTS17Read8_Write32_AVX, @object
	.size	_ZTS17Read8_Write32_AVX, 20
_ZTS17Read8_Write32_AVX:
	.string	"17Read8_Write32_AVX"
	.weak	_ZTS24Read8_Write32_AVX_Unroll
	.section	.rodata._ZTS24Read8_Write32_AVX_Unroll,"aG",@progbits,_ZTS24Read8_Write32_AVX_Unroll,comdat
	.align 16
	.type	_ZTS24Read8_Write32_AVX_Unroll, @object
	.size	_ZTS24Read8_Write32_AVX_Unroll, 27
_ZTS24Read8_Write32_AVX_Unroll:
	.string	"24Read8_Write32_AVX_Unroll"
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
