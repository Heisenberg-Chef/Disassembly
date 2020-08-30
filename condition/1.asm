	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.intel_syntax noprefix
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	cmp	edi, 10
	lea	rax, [rip + L_.str]
	lea	rcx, [rip + L_.str.1]
	cmove	rcx, rax
	mov	rax, rcx
	pop	rbp
	ret
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"yes"

L_.str.1:                               ## @.str.1
	.asciz	"no"


.subsections_via_symbols
