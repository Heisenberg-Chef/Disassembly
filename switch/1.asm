	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.intel_syntax noprefix
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
## %bb.0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	test	edi, edi
	mov	dword ptr [rbp - 8], edi ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 8] ## 4-byte Reload
	sub	eax, 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	mov	eax, dword ptr [rbp - 8] ## 4-byte Reload
	sub	eax, 2
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	je	LBB0_3
	jmp	LBB0_4
LBB0_1:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_2:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_3:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	add	rsp, 32
	pop	rbp
	ret
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	edi, 2
	call	_f
	xor	eax, eax
	pop	rbp
	ret
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"zero\n"

L_.str.1:                               ## @.str.1
	.asciz	"one\n"

L_.str.2:                               ## @.str.2
	.asciz	"two\n"


.subsections_via_symbols
