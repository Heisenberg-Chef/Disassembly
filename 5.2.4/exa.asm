	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$640, %rsp              ## imm = 0x280
	xorl	%edx, %edx
	movq	$-1, %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rdi
	movl	$600, %esi              ## imm = 0x258
	leaq	L_.str(%rip), %r8
	movl	$1, %r9d
	movl	$2, (%rsp)
	movl	$3, 8(%rsp)
	movb	$0, %al
	callq	___snprintf_chk
	movq	-616(%rbp), %rdi
	movl	%eax, -620(%rbp)        ## 4-byte Spill
	callq	_puts
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rcx
	jne	LBB0_2
## %bb.1:
	addq	$640, %rsp              ## imm = 0x280
	popq	%rbp
	retq
LBB0_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"hi %d,%d,%d\n"


.subsections_via_symbols
