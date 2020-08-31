	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	lea	rax, [rbp - 32]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], edi
	mov	qword ptr [rbp - 48], rsi
	mov	rcx, rax
	add	rcx, 4
	mov	rsi, rax
	add	rsi, 8
	mov	rdx, rax
	add	rdx, 12
	mov	edi, 1
	mov	qword ptr [rbp - 64], rsi ## 8-byte Spill
	mov	rsi, rax
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 64] ## 8-byte Reload
	mov	r8, qword ptr [rbp - 72] ## 8-byte Reload
	call	_cpuid
	lea	rax, [rbp - 32]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 56]
	mov	edi, dword ptr [rax]
	and	edi, 15
	lea	rax, [rip + L_.str]
	mov	dword ptr [rbp - 76], edi ## 4-byte Spill
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 76] ## 4-byte Reload
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 56]
	mov	esi, dword ptr [rcx]
	shr	esi, 4
	and	esi, 15
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 56]
	mov	esi, dword ptr [rcx]
	shr	esi, 8
	and	esi, 15
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 56]
	mov	esi, dword ptr [rcx]
	shr	esi, 12
	and	esi, 3
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 56]
	mov	esi, dword ptr [rcx]
	shr	esi, 16
	and	esi, 15
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 56]
	mov	esi, dword ptr [rcx]
	shr	esi, 20
	and	esi, 255
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 112
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function cpuid
_cpuid:                                 ## @cpuid
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	rbx
	.cfi_offset rbx, -24
	mov	dword ptr [rbp - 12], edi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	mov	rcx, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 40]
	mov	r8, qword ptr [rbp - 48]
	mov	eax, dword ptr [rbp - 12]
	mov	qword ptr [rbp - 56], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 64], rdx ## 8-byte Spill
	## InlineAsm Start
	cpuid
	## InlineAsm End
	mov	r9, qword ptr [rbp - 56] ## 8-byte Reload
	mov	dword ptr [r9], eax
	mov	r10, qword ptr [rbp - 64] ## 8-byte Reload
	mov	dword ptr [r10], ebx
	mov	dword ptr [rsi], ecx
	mov	dword ptr [r8], edx
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"stepping=%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"model=%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"family_id=%d\n"

L_.str.3:                               ## @.str.3
	.asciz	"processor_type=%d\n"

L_.str.4:                               ## @.str.4
	.asciz	"extended_model_id=%d\n"

L_.str.5:                               ## @.str.5
	.asciz	"extended_family_id=%d\n"


.subsections_via_symbols
