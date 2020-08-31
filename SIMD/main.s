	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	testl	%edi, %edi
	jle	LBB0_18
## %bb.1:
	movl	%edi, %r8d
	cmpl	$7, %edi
	ja	LBB0_9
## %bb.2:
	xorl	%r11d, %r11d
LBB0_3:
	movq	%r11, %r9
	notq	%r9
	addq	%r8, %r9
	movq	%r8, %rax
	andq	$3, %rax
	je	LBB0_6
## %bb.4:
	negq	%rax
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rdx,%r11,4), %edi
	addl	(%rsi,%r11,4), %edi
	movl	%edi, (%rcx,%r11,4)
	incq	%r11
	incq	%rax
	jne	LBB0_5
LBB0_6:
	cmpq	$3, %r9
	jb	LBB0_18
## %bb.7:
	subq	%r11, %r8
	leaq	12(%rcx,%r11,4), %rax
	leaq	12(%rdx,%r11,4), %rcx
	leaq	12(%rsi,%r11,4), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rcx,%rsi,4), %edi
	addl	-12(%rdx,%rsi,4), %edi
	movl	%edi, -12(%rax,%rsi,4)
	movl	-8(%rcx,%rsi,4), %edi
	addl	-8(%rdx,%rsi,4), %edi
	movl	%edi, -8(%rax,%rsi,4)
	movl	-4(%rcx,%rsi,4), %edi
	addl	-4(%rdx,%rsi,4), %edi
	movl	%edi, -4(%rax,%rsi,4)
	movl	(%rcx,%rsi,4), %edi
	addl	(%rdx,%rsi,4), %edi
	movl	%edi, (%rax,%rsi,4)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	LBB0_8
	jmp	LBB0_18
LBB0_9:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	leaq	(%rcx,%r8,4), %rdi
	leaq	(%rsi,%r8,4), %rax
	cmpq	%rcx, %rax
	seta	%r10b
	leaq	(%rdx,%r8,4), %rax
	cmpq	%rsi, %rdi
	seta	%bl
	cmpq	%rcx, %rax
	seta	%al
	cmpq	%rdx, %rdi
	seta	%r9b
	xorl	%r11d, %r11d
	testb	%bl, %r10b
	popq	%rbx
	popq	%rbp
	jne	LBB0_3
## %bb.10:
	andb	%r9b, %al
	jne	LBB0_3
## %bb.11:
	movl	%r8d, %r11d
	andl	$-8, %r11d
	leaq	-8(%r11), %rdi
	movq	%rdi, %rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, %r9d
	andl	$1, %r9d
	testq	%rdi, %rdi
	je	LBB0_12
## %bb.13:
	movl	$1, %edi
	subq	%rax, %rdi
	leaq	-1(%r9,%rdi), %r10
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%rax,4), %xmm0
	movdqu	16(%rsi,%rax,4), %xmm1
	movdqu	(%rdx,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdx,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm2, (%rcx,%rax,4)
	movdqu	%xmm0, 16(%rcx,%rax,4)
	movdqu	32(%rsi,%rax,4), %xmm0
	movdqu	48(%rsi,%rax,4), %xmm1
	movdqu	32(%rdx,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	48(%rdx,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm2, 32(%rcx,%rax,4)
	movdqu	%xmm0, 48(%rcx,%rax,4)
	addq	$16, %rax
	addq	$2, %r10
	jne	LBB0_14
## %bb.15:
	testq	%r9, %r9
	je	LBB0_17
LBB0_16:
	movdqu	(%rsi,%rax,4), %xmm0
	movdqu	16(%rsi,%rax,4), %xmm1
	movdqu	(%rdx,%rax,4), %xmm2
	paddd	%xmm0, %xmm2
	movdqu	16(%rdx,%rax,4), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm2, (%rcx,%rax,4)
	movdqu	%xmm0, 16(%rcx,%rax,4)
LBB0_17:
	cmpq	%r8, %r11
	jne	LBB0_3
LBB0_18:
	xorl	%eax, %eax
	retq
LBB0_12:
	xorl	%eax, %eax
	testq	%r9, %r9
	jne	LBB0_16
	jmp	LBB0_17
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
