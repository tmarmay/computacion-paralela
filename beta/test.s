	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	fmov	d0, #1.00000000
	str	d0, [sp, #8]
	fmov	d0, #2.00000000
	str	d0, [sp]
	ldr	d0, [sp, #8]
	ldr	d1, [sp]
	bl	_minimum_image
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function minimum_image
_minimum_image:                         ; @minimum_image
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	d0, [sp, #8]
	str	d1, [sp]
	ldr	d0, [sp, #8]
	ldr	d2, [sp]
	fmov	d1, #-0.50000000
	fmul	d1, d1, d2
	fcmp	d0, d1
	cset	w8, hi
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	ldr	d1, [sp]
	ldr	d0, [sp, #8]
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB1_5
LBB1_2:
	ldr	d0, [sp, #8]
	ldr	d2, [sp]
	fmov	d1, #0.50000000
	fmul	d1, d1, d2
	fcmp	d0, d1
	cset	w8, le
	tbnz	w8, #0, LBB1_4
	b	LBB1_3
LBB1_3:
	ldr	d1, [sp]
	ldr	d0, [sp, #8]
	fsub	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB1_4
LBB1_4:
	b	LBB1_5
LBB1_5:
	ldr	d0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
