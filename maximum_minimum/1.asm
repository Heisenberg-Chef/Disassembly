	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.intel_syntax noprefix
	.globl	_my_max                 ## -- Begin function my_max
	.p2align	4, 0x90
_my_max:                                ## @my_max
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jle	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
                                        ## -- End function
	.globl	_my_min                 ## -- Begin function my_min
	.p2align	4, 0x90
_my_min:                                ## @my_min
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 12]
	jge	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
                                        ## -- End function

.subsections_via_symbols
