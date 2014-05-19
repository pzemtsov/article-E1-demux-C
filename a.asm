	.file	"a.c"
	.text
	.p2align 4,,15
	.globl	sum32
	.type	sum32, @function
sum32:
.LFB0:
	.cfi_startproc
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %r8
	andl	$15, %r9d
	shrq	$2, %r9
	negl	%r9d
	movq	%r9, %rbx
	andl	$3, %ebx
	andl	$3, %r9d
	je	.L8
	xorl	%eax, %eax
	xorl	%esi, %esi
	movl	$255, %r10d
	.p2align 4,,10
	.p2align 3
.L3:
	leal	1(%rsi), %edx
	movl	%r10d, %ecx
	addl	(%r8), %eax
	subl	%esi, %ecx
	addq	$4, %r8
	cmpl	%edx, %r9d
	movl	%edx, %esi
	ja	.L3
.L2:
	movl	$256, %r11d
	subl	%r9d, %r11d
	movl	%r11d, %r9d
	shrl	$2, %r9d
	leal	0(,%r9,4), %r10d
	testl	%r10d, %r10d
	je	.L9
	pxor	%xmm0, %xmm0
	leaq	(%rdi,%rbx,4), %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L5:
	addl	$1, %esi
	paddd	(%r8), %xmm0
	addq	$16, %r8
	cmpl	%r9d, %esi
	jb	.L5
	movdqa	%xmm0, %xmm1
	addl	%r10d, %edx
	subl	%r10d, %ecx
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, -4(%rsp)
	addl	-4(%rsp), %eax
	cmpl	%r10d, %r11d
	je	.L6
	.p2align 4,,10
	.p2align 3
.L9:
	movl	%edx, %esi
	addl	$1, %edx
	addl	(%rdi,%rsi,4), %eax
	subl	$1, %ecx
	jne	.L9
.L6:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	movl	$256, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	sum32, .-sum32
	.p2align 4,,15
	.globl	sum64
	.type	sum64, @function
sum64:
.LFB1:
	.cfi_startproc
	movq	%rdi, %rsi
	salq	$60, %rsi
	shrq	$63, %rsi
	testq	%rsi, %rsi
	je	.L20
	movq	(%rdi), %rax
	movl	$255, %edx
	movl	$1, %ecx
.L15:
	movl	$256, %r10d
	subq	%rsi, %r10
	movq	%r10, %r9
	shrq	%r9
	movq	%r9, %r11
	addq	%r11, %r11
	je	.L21
	pxor	%xmm0, %xmm0
	leaq	(%rdi,%rsi,8), %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L17:
	addq	$1, %rsi
	paddq	(%r8), %xmm0
	addq	$16, %r8
	cmpq	%r9, %rsi
	jb	.L17
	movdqa	%xmm0, %xmm1
	addq	%r11, %rcx
	subq	%r11, %rdx
	psrldq	$8, %xmm1
	paddq	%xmm1, %xmm0
	movq	%xmm0, -16(%rsp)
	addq	-16(%rsp), %rax
	cmpq	%r11, %r10
	je	.L18
	.p2align 4,,10
	.p2align 3
.L21:
	addq	(%rdi,%rcx,8), %rax
	addq	$1, %rcx
	subq	$1, %rdx
	jne	.L21
.L18:
	rep
	ret
.L20:
	movl	$256, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L15
	.cfi_endproc
.LFE1:
	.size	sum64, .-sum64
	.ident	"GCC: (GNU) 4.6.3 20120306 (Red Hat 4.6.3-2)"
	.section	.note.GNU-stack,"",@progbits
