	.file	"core.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_093/lab3/lab1" "core.c"
	.p2align 4
	.type	forces._omp_fn.0, @function
forces._omp_fn.0:
.LVL0:
.LFB6566:
	.file 1 "core.c"
	.loc 1 130 9 view -0
	.cfi_startproc
	.loc 1 130 9 is_stmt 0 view .LVU1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.loc 1 130 9 discriminator 2 view .LVU2
	xorl	%esi, %esi
	movl	$32928, %edx
	.loc 1 130 9 view .LVU3
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	andq	$-32, %rsp
	subq	$33088, %rsp
	.loc 1 130 9 discriminator 1 view .LVU4
	vmovsd	40(%rdi), %xmm7
	vmovapd	(%rdi), %ymm2
	.loc 1 130 9 discriminator 2 view .LVU5
	leaq	160(%rsp), %r15
	.loc 1 130 9 discriminator 1 view .LVU6
	movq	32(%rdi), %r14
	leaq	152(%rsp), %r13
	leaq	144(%rsp), %r12
	.loc 1 130 9 discriminator 2 view .LVU7
	movq	%r15, %rdi
.LVL1:
	.loc 1 130 9 discriminator 1 view .LVU8
	vmovsd	%xmm7, 64(%rsp)
.LVL2:
	.loc 1 130 9 discriminator 1 view .LVU9
	vmovapd	%ymm2, 96(%rsp)
.LVL3:
	.loc 1 130 9 discriminator 2 view .LVU10
	vzeroupper
.LVL4:
	call	memset@PLT
.LVL5:
.LBB74:
.LBB75:
	.loc 1 131 10 is_stmt 1 view .LVU11
	xorl	%edi, %edi
	movq	%r13, %r9
	movq	%r12, %r8
	movl	$6, %ecx
	movl	$3, %edx
	movl	$4113, %esi
	call	GOMP_loop_nonmonotonic_dynamic_start@PLT
.LVL6:
	testb	%al, %al
	je	.L10
.LBB76:
.LBB77:
.LBB78:
.LBB79:
.LBB80:
.LBB81:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/14/include/avxintrin.h"
	.loc 2 314 10 is_stmt 0 view .LVU12
	vbroadcastsd	.LC2(%rip), %ymm5
	vmovapd	96(%rsp), %ymm2
.LBE81:
.LBE80:
.LBE79:
.LBE78:
.LBE77:
.LBE76:
.LBE75:
.LBE74:
	.loc 1 130 9 discriminator 1 view .LVU13
	vxorpd	%xmm12, %xmm12, %xmm12
.LBB134:
.LBB130:
.LBB125:
.LBB122:
.LBB115:
.LBB112:
.LBB84:
.LBB85:
	.loc 2 362 10 view .LVU14
	vbroadcastsd	.LC4(%rip), %ymm6
.LBE85:
.LBE84:
.LBE112:
.LBE115:
	.loc 1 154 20 view .LVU15
	vmovsd	.LC5(%rip), %xmm3
.LBE122:
.LBE125:
.LBE130:
.LBE134:
	.loc 1 130 9 discriminator 1 view .LVU16
	vmovapd	%xmm12, %xmm8
.LBB135:
.LBB131:
.LBB126:
.LBB123:
	.loc 1 157 61 view .LVU17
	vmovsd	64(%rsp), %xmm7
.LBB116:
.LBB113:
.LBB88:
.LBB82:
	.loc 2 314 10 view .LVU18
	vmulpd	%ymm5, %ymm2, %ymm5
.LBE82:
.LBE88:
.LBB89:
.LBB86:
	.loc 2 362 10 view .LVU19
	vxorpd	%ymm6, %ymm5, %ymm6
.LVL7:
	.p2align 4
	.p2align 3
.L5:
	.loc 2 362 10 view .LVU20
.LBE86:
.LBE89:
.LBE113:
.LBE116:
	.loc 1 157 61 view .LVU21
	vmovsd	.LC7(%rip), %xmm11
	movq	144(%rsp), %rax
.LVL8:
	.loc 1 157 61 view .LVU22
	movl	152(%rsp), %edi
	leal	3(%rax), %esi
	cltq
	.loc 1 157 61 view .LVU23
	movslq	%esi, %rsi
	leaq	(%r15,%rax,8), %rdx
.LVL9:
	.p2align 4
	.p2align 3
.L4:
	.loc 1 157 61 view .LVU24
.LBE123:
.LBE126:
.LBE131:
.LBE135:
	.loc 1 134 9 is_stmt 1 view .LVU25
.LBB136:
.LBB132:
.LBB127:
.LBI127:
	.loc 2 891 1 view .LVU26
.LBB128:
	.loc 2 893 3 view .LVU27
	movslq	%esi, %rcx
	.loc 2 893 10 is_stmt 0 view .LVU28
	vmovupd	-24(%r14,%rsi,8), %ymm4
.LVL10:
	.loc 2 893 10 view .LVU29
.LBE128:
.LBE127:
.LBE132:
.LBE136:
	.loc 1 136 9 is_stmt 1 view .LVU30
.LBB137:
.LBB133:
.LBB129:
	.loc 1 136 14 view .LVU31
	.loc 1 136 31 discriminator 1 view .LVU32
	leaq	(%r15,%rcx,8), %rax
	cmpl	$4115, %esi
	jg	.L8
.LVL11:
	.p2align 4
	.p2align 3
.L7:
.LBB124:
	.loc 1 138 13 view .LVU33
.LBB117:
.LBI117:
	.loc 2 891 1 view .LVU34
.LBB118:
	.loc 2 893 3 view .LVU35
	.loc 2 893 3 is_stmt 0 view .LVU36
.LBE118:
.LBE117:
	.loc 1 140 13 is_stmt 1 view .LVU37
.LBB119:
.LBI119:
	.loc 2 360 1 view .LVU38
.LBB120:
	.loc 2 362 3 view .LVU39
	.loc 2 362 10 is_stmt 0 view .LVU40
	vsubpd	(%r14,%rcx,8), %ymm4, %ymm0
.LVL12:
	.loc 2 362 10 view .LVU41
.LBE120:
.LBE119:
	.loc 1 142 13 is_stmt 1 view .LVU42
.LBB121:
.LBI78:
	.loc 1 91 16 view .LVU43
.LBB114:
	.loc 1 94 5 view .LVU44
.LBB90:
.LBI80:
	.loc 2 312 1 view .LVU45
.LBB83:
	.loc 2 314 3 view .LVU46
	.loc 2 314 3 is_stmt 0 view .LVU47
.LBE83:
.LBE90:
	.loc 1 97 5 is_stmt 1 view .LVU48
.LBB91:
.LBI84:
	.loc 2 360 1 view .LVU49
.LBB87:
	.loc 2 362 3 view .LVU50
	.loc 2 362 3 is_stmt 0 view .LVU51
.LBE87:
.LBE91:
.LBB92:
.LBI92:
	.loc 2 397 1 is_stmt 1 view .LVU52
.LBB93:
	.loc 2 399 3 view .LVU53
.LBE93:
.LBE92:
.LBB95:
.LBB96:
	.loc 2 143 10 is_stmt 0 view .LVU54
	vaddpd	%ymm0, %ymm2, %ymm13
.LBE96:
.LBE95:
.LBB98:
.LBB94:
	.loc 2 399 20 view .LVU55
	vcmppd	$18, %ymm6, %ymm0, %ymm14
.LVL13:
	.loc 2 399 20 view .LVU56
.LBE94:
.LBE98:
	.loc 1 100 5 is_stmt 1 view .LVU57
.LBB99:
.LBI99:
	.loc 2 397 1 view .LVU58
.LBB100:
	.loc 2 399 3 view .LVU59
	.loc 2 399 20 is_stmt 0 view .LVU60
	vcmppd	$30, %ymm5, %ymm0, %ymm1
.LVL14:
	.loc 2 399 20 view .LVU61
.LBE100:
.LBE99:
	.loc 1 103 5 is_stmt 1 view .LVU62
.LBB101:
.LBI95:
	.loc 2 141 1 view .LVU63
.LBB97:
	.loc 2 143 3 view .LVU64
	.loc 2 143 3 is_stmt 0 view .LVU65
.LBE97:
.LBE101:
	.loc 1 104 5 is_stmt 1 view .LVU66
.LBB102:
.LBI102:
	.loc 2 219 1 view .LVU67
.LBB103:
	.loc 2 221 3 view .LVU68
	.loc 2 221 20 is_stmt 0 view .LVU69
	vblendvpd	%ymm14, %ymm13, %ymm0, %ymm0
.LVL15:
	.loc 2 221 20 view .LVU70
.LBE103:
.LBE102:
	.loc 1 107 5 is_stmt 1 view .LVU71
.LBB104:
.LBI104:
	.loc 2 360 1 view .LVU72
.LBB105:
	.loc 2 362 3 view .LVU73
	.loc 2 362 3 is_stmt 0 view .LVU74
.LBE105:
.LBE104:
	.loc 1 108 5 is_stmt 1 view .LVU75
.LBB107:
.LBI107:
	.loc 2 219 1 view .LVU76
.LBB108:
	.loc 2 221 3 view .LVU77
.LBE108:
.LBE107:
.LBB110:
.LBB106:
	.loc 2 362 10 is_stmt 0 view .LVU78
	vsubpd	%ymm2, %ymm0, %ymm13
.LVL16:
	.loc 2 362 10 view .LVU79
.LBE106:
.LBE110:
.LBB111:
.LBB109:
	.loc 2 221 20 view .LVU80
	vblendvpd	%ymm1, %ymm13, %ymm0, %ymm0
.LVL17:
	.loc 2 221 20 view .LVU81
.LBE109:
.LBE111:
	.loc 1 110 5 is_stmt 1 view .LVU82
	.loc 1 110 5 is_stmt 0 view .LVU83
.LBE114:
.LBE121:
	.loc 1 144 13 is_stmt 1 view .LVU84
	vunpckhpd	%xmm0, %xmm0, %xmm13
.LVL18:
	.loc 1 144 13 is_stmt 0 view .LVU85
	vmovapd	%xmm0, %xmm14
.LVL19:
	.loc 1 145 13 is_stmt 1 view .LVU86
	.loc 1 146 13 view .LVU87
	vextractf128	$0x1, %ymm0, %xmm0
.LVL20:
	.loc 1 148 13 view .LVU88
	.loc 1 148 40 is_stmt 0 view .LVU89
	vmulsd	%xmm13, %xmm13, %xmm9
	.loc 1 148 35 view .LVU90
	vfmadd231sd	%xmm14, %xmm14, %xmm9
	.loc 1 148 20 view .LVU91
	vfmadd231sd	%xmm0, %xmm0, %xmm9
.LVL21:
	.loc 1 151 13 is_stmt 1 view .LVU92
	.loc 1 151 16 is_stmt 0 view .LVU93
	vcomisd	%xmm7, %xmm9
	ja	.L6
	.loc 1 154 13 is_stmt 1 view .LVU94
	.loc 1 154 20 is_stmt 0 view .LVU95
	vdivsd	%xmm9, %xmm3, %xmm1
.LVL22:
	.loc 1 155 13 is_stmt 1 view .LVU96
	.loc 1 157 61 is_stmt 0 view .LVU97
	vmovsd	.LC6(%rip), %xmm10
	.loc 1 167 19 view .LVU98
	vaddsd	.LC10(%rip), %xmm8, %xmm8
	.loc 1 155 20 view .LVU99
	vmulsd	%xmm1, %xmm1, %xmm15
	vmulsd	%xmm1, %xmm15, %xmm15
.LVL23:
	.loc 1 157 13 is_stmt 1 view .LVU100
	.loc 1 157 20 is_stmt 0 view .LVU101
	vmulsd	.LC8(%rip), %xmm1, %xmm1
.LVL24:
	.loc 1 157 61 view .LVU102
	vfmadd132sd	%xmm15, %xmm11, %xmm10
	.loc 1 157 20 view .LVU103
	vmulsd	%xmm15, %xmm10, %xmm10
	vmulsd	%xmm10, %xmm1, %xmm1
.LVL25:
	.loc 1 159 13 is_stmt 1 view .LVU104
	.loc 1 159 25 is_stmt 0 view .LVU105
	vmovapd	%xmm1, %xmm10
	vfmadd213sd	(%rdx), %xmm14, %xmm10
	.loc 1 168 22 view .LVU106
	vfmadd231sd	%xmm9, %xmm1, %xmm12
	.loc 1 159 25 view .LVU107
	vmovsd	%xmm10, (%rdx)
	.loc 1 160 13 is_stmt 1 view .LVU108
	.loc 1 160 25 is_stmt 0 view .LVU109
	vmovapd	%xmm1, %xmm10
	vfmadd213sd	8(%rdx), %xmm13, %xmm10
	vmovsd	%xmm10, 8(%rdx)
	.loc 1 161 13 is_stmt 1 view .LVU110
	.loc 1 161 25 is_stmt 0 view .LVU111
	vmovapd	%xmm1, %xmm10
	vfmadd213sd	16(%rdx), %xmm0, %xmm10
	vmovsd	%xmm10, 16(%rdx)
	.loc 1 163 13 is_stmt 1 view .LVU112
	.loc 1 165 25 is_stmt 0 view .LVU113
	vfnmadd213sd	16(%rax), %xmm1, %xmm0
.LVL26:
	.loc 1 163 25 view .LVU114
	vfnmadd213sd	(%rax), %xmm1, %xmm14
.LVL27:
	.loc 1 164 25 view .LVU115
	vfnmadd213sd	8(%rax), %xmm1, %xmm13
.LVL28:
	.loc 1 165 25 view .LVU116
	vmovsd	%xmm0, 16(%rax)
	.loc 1 167 43 view .LVU117
	vsubsd	%xmm3, %xmm15, %xmm0
	.loc 1 167 19 view .LVU118
	vmulsd	.LC9(%rip), %xmm15, %xmm15
.LVL29:
	.loc 1 163 25 view .LVU119
	vmovsd	%xmm14, (%rax)
	.loc 1 164 13 is_stmt 1 view .LVU120
	.loc 1 164 25 is_stmt 0 view .LVU121
	vmovsd	%xmm13, 8(%rax)
	.loc 1 165 13 is_stmt 1 view .LVU122
	.loc 1 167 13 view .LVU123
.LVL30:
	.loc 1 167 19 is_stmt 0 view .LVU124
	vfmadd231sd	%xmm15, %xmm0, %xmm8
.LVL31:
	.loc 1 168 13 is_stmt 1 view .LVU125
.L6:
	.loc 1 168 13 is_stmt 0 view .LVU126
.LBE124:
	.loc 1 136 45 is_stmt 1 discriminator 2 view .LVU127
	.loc 1 136 31 discriminator 1 view .LVU128
	addq	$3, %rcx
.LVL32:
	.loc 1 136 31 is_stmt 0 discriminator 1 view .LVU129
	addq	$24, %rax
	cmpl	$4115, %ecx
	jle	.L7
.LVL33:
.L8:
	.loc 1 136 31 discriminator 1 view .LVU130
	addq	$3, %rsi
.LVL34:
	.loc 1 136 31 discriminator 1 view .LVU131
	addq	$24, %rdx
	leal	-3(%rsi), %eax
	cmpl	%eax, %edi
	jg	.L4
	vmovsd	%xmm12, 24(%rsp)
	vmovsd	%xmm8, 128(%rsp)
	vmovsd	%xmm7, 136(%rsp)
	movq	%r13, %rsi
.LVL35:
	.loc 1 136 31 discriminator 1 view .LVU132
	vmovapd	%ymm2, 32(%rsp)
	vmovapd	%ymm5, 64(%rsp)
	vmovapd	%ymm6, 96(%rsp)
	movq	%r12, %rdi
	vzeroupper
.LVL36:
	call	GOMP_loop_nonmonotonic_dynamic_next@PLT
.LVL37:
	.loc 1 136 31 discriminator 1 view .LVU133
	vmovapd	96(%rsp), %ymm6
	testb	%al, %al
	vmovapd	64(%rsp), %ymm5
	vmovapd	32(%rsp), %ymm2
	vmovsd	136(%rsp), %xmm7
	vmovsd	128(%rsp), %xmm8
	vmovsd	24(%rsp), %xmm12
	vmovsd	.LC5(%rip), %xmm3
	jne	.L5
	vzeroupper
.LVL38:
	jmp	.L2
.LVL39:
.L10:
	.loc 1 136 31 discriminator 1 view .LVU134
.LBE129:
.LBE133:
.LBE137:
	.loc 1 130 9 discriminator 1 view .LVU135
	vxorpd	%xmm12, %xmm12, %xmm12
	vmovapd	%xmm12, %xmm8
.LVL40:
.L2:
	.loc 1 130 9 discriminator 1 view .LVU136
	vunpcklpd	%xmm8, %xmm12, %xmm0
	vmovapd	%xmm0, 96(%rsp)
.LVL41:
	.loc 1 130 9 discriminator 1 view .LVU137
	call	GOMP_loop_end_nowait@PLT
.LVL42:
	.loc 1 130 9 view .LVU138
	movq	64(%rbx), %r12
	call	GOMP_atomic_start@PLT
.LVL43:
	vmovapd	96(%rsp), %xmm0
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
.L9:
	.loc 1 130 35 view .LVU139
	vmovupd	(%r12,%rax), %ymm1
	.loc 1 130 9 view .LVU140
	vaddpd	(%r15,%rax), %ymm1, %ymm1
	vmovupd	%ymm1, (%r12,%rax)
	addq	$32, %rax
	cmpq	$32928, %rax
	jne	.L9
	vaddpd	48(%rbx), %xmm0, %xmm0
	vmovapd	%xmm0, 48(%rbx)
	vzeroupper
.LVL44:
	call	GOMP_atomic_end@PLT
.LVL45:
	leaq	-40(%rbp), %rsp
	popq	%rbx
.LVL46:
	.loc 1 130 9 view .LVU141
	popq	%r12
	popq	%r13
	popq	%r14
.LVL47:
	.loc 1 130 9 view .LVU142
	popq	%r15
.LVL48:
	.loc 1 130 9 view .LVU143
	popq	%rbp
	.cfi_def_cfa 7, 8
.LVL49:
	.loc 1 130 9 view .LVU144
	ret
	.cfi_endproc
.LFE6566:
	.size	forces._omp_fn.0, .-forces._omp_fn.0
	.p2align 4
	.globl	init_pos
	.type	init_pos, @function
init_pos:
.LVL50:
.LFB6560:
	.loc 1 13 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 16 5 view .LVU146
	.loc 1 16 16 is_stmt 0 view .LVU147
	vmovsd	.LC9(%rip), %xmm1
	.loc 1 13 1 view .LVU148
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	.loc 1 13 1 view .LVU149
	movq	%rdi, %rbx
	.loc 1 16 16 view .LVU150
	vdivsd	%xmm0, %xmm1, %xmm0
.LVL51:
	.loc 1 16 16 view .LVU151
	call	cbrt@PLT
.LVL52:
	.loc 1 16 16 view .LVU152
	vmovsd	.LC2(%rip), %xmm5
	movq	%rbx, %rdi
.LBB138:
	.loc 1 20 14 view .LVU153
	xorl	%r9d, %r9d
.LBE138:
	.loc 1 16 16 view .LVU154
	vmovapd	%xmm0, %xmm3
.LVL53:
	.loc 1 17 5 is_stmt 1 view .LVU155
	.loc 1 18 5 view .LVU156
	.loc 1 20 5 view .LVU157
.LBB142:
	.loc 1 20 10 view .LVU158
	.loc 1 20 23 discriminator 1 view .LVU159
.LBE142:
	.loc 1 18 9 is_stmt 0 view .LVU160
	xorl	%r8d, %r8d
	vxorps	%xmm6, %xmm6, %xmm6
.LVL54:
	.p2align 4
	.p2align 3
.L20:
.LBB143:
.LBB139:
	.loc 1 21 27 is_stmt 1 discriminator 1 view .LVU161
.LBB140:
	.loc 1 23 35 is_stmt 0 view .LVU162
	vcvtsi2sdl	%r9d, %xmm6, %xmm9
	vmulsd	%xmm3, %xmm9, %xmm10
	.loc 1 27 36 view .LVU163
	vaddsd	%xmm5, %xmm9, %xmm9
	.loc 1 27 43 view .LVU164
	movq	%rdi, %rsi
.LBE140:
	.loc 1 21 18 view .LVU165
	xorl	%ecx, %ecx
.LBB141:
	.loc 1 27 43 view .LVU166
	vmulsd	%xmm3, %xmm9, %xmm9
.LVL55:
	.p2align 4
	.p2align 3
.L24:
	.loc 1 22 31 is_stmt 1 discriminator 1 view .LVU167
	.loc 1 24 35 is_stmt 0 view .LVU168
	vcvtsi2sdl	%ecx, %xmm6, %xmm8
	vmulsd	%xmm3, %xmm8, %xmm4
	.loc 1 28 36 view .LVU169
	vaddsd	%xmm5, %xmm8, %xmm8
	.loc 1 28 43 view .LVU170
	movq	%rsi, %rax
	.loc 1 22 22 view .LVU171
	xorl	%edx, %edx
	.loc 1 28 43 view .LVU172
	vmulsd	%xmm3, %xmm8, %xmm8
	vunpcklpd	%xmm4, %xmm10, %xmm7
	vunpcklpd	%xmm4, %xmm9, %xmm4
.LVL56:
	.p2align 4
	.p2align 3
.L21:
	.loc 1 23 17 is_stmt 1 view .LVU173
	.loc 1 24 17 view .LVU174
	.loc 1 25 17 view .LVU175
	.loc 1 25 35 is_stmt 0 view .LVU176
	vcvtsi2sdl	%edx, %xmm6, %xmm0
	vmulsd	%xmm3, %xmm0, %xmm1
	.loc 1 27 17 is_stmt 1 view .LVU177
	.loc 1 28 17 view .LVU178
	.loc 1 29 17 view .LVU179
	.loc 1 31 17 view .LVU180
	.loc 1 32 17 view .LVU181
	.loc 1 33 17 view .LVU182
	.loc 1 33 36 is_stmt 0 view .LVU183
	vaddsd	%xmm5, %xmm0, %xmm0
	.loc 1 22 43 discriminator 3 view .LVU184
	incl	%edx
.LVL57:
	.loc 1 22 31 discriminator 1 view .LVU185
	addq	$96, %rax
	.loc 1 33 43 view .LVU186
	vmulsd	%xmm3, %xmm0, %xmm0
	.loc 1 35 17 is_stmt 1 view .LVU187
	.loc 1 36 17 view .LVU188
	.loc 1 37 17 view .LVU189
	.loc 1 23 31 is_stmt 0 view .LVU190
	vunpcklpd	%xmm9, %xmm1, %xmm2
	vunpcklpd	%xmm1, %xmm8, %xmm1
	vinsertf128	$0x1, %xmm4, %ymm1, %ymm1
	vinsertf128	$0x1, %xmm2, %ymm7, %ymm2
	vmovupd	%ymm1, -64(%rax)
	vmovupd	%ymm2, -96(%rax)
	vunpcklpd	%xmm0, %xmm8, %xmm1
	vunpcklpd	%xmm10, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmovupd	%ymm0, -32(%rax)
	.loc 1 39 17 is_stmt 1 view .LVU191
.LVL58:
	.loc 1 22 43 discriminator 3 view .LVU192
	.loc 1 22 31 discriminator 1 view .LVU193
	cmpl	$7, %edx
	jne	.L21
.LBE141:
	.loc 1 21 39 discriminator 2 view .LVU194
	incl	%ecx
.LVL59:
	.loc 1 21 27 discriminator 1 view .LVU195
	addq	$672, %rsi
	cmpl	$7, %ecx
	jne	.L24
	addl	$588, %r8d
.LBE139:
	.loc 1 20 35 discriminator 2 view .LVU196
	incl	%r9d
.LVL60:
	.loc 1 20 23 discriminator 1 view .LVU197
	addq	$4704, %rdi
	cmpl	$4116, %r8d
	jne	.L20
	vzeroupper
.LVL61:
.LBE143:
	.loc 1 43 1 is_stmt 0 view .LVU198
	popq	%rbx
.LVL62:
	.loc 1 43 1 view .LVU199
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6560:
	.size	init_pos, .-init_pos
	.p2align 4
	.globl	init_vel
	.type	init_vel, @function
init_vel:
.LVL63:
.LFB6561:
	.loc 1 47 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 50 5 view .LVU201
	.loc 1 52 5 view .LVU202
.LBB144:
	.loc 1 52 10 view .LVU203
	.loc 1 52 23 discriminator 1 view .LVU204
.LBE144:
	.loc 1 47 1 is_stmt 0 view .LVU205
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	32928(%rdi), %r15
	movq	%rdi, %rbx
	andq	$-32, %rsp
	movq	%rdi, %r12
	.loc 1 50 55 view .LVU206
	xorl	%r14d, %r14d
	.loc 1 50 29 view .LVU207
	xorl	%r13d, %r13d
	.loc 1 47 1 view .LVU208
	subq	$32, %rsp
	.loc 1 47 1 view .LVU209
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.loc 1 50 42 view .LVU210
	movq	$0x000000000, 16(%rsp)
	.loc 1 50 16 view .LVU211
	movq	$0x000000000, 24(%rsp)
.LVL64:
	.p2align 4
	.p2align 3
.L29:
.LBB145:
	.loc 1 53 9 is_stmt 1 view .LVU212
	.loc 1 53 23 is_stmt 0 view .LVU213
	call	rand@PLT
.LVL65:
	.loc 1 53 30 discriminator 1 view .LVU214
	vxorpd	%xmm7, %xmm7, %xmm7
	.loc 1 52 23 discriminator 1 view .LVU215
	addq	$24, %r12
.LVL66:
	.loc 1 53 48 discriminator 1 view .LVU216
	vmovsd	.LC12(%rip), %xmm5
	.loc 1 53 30 discriminator 1 view .LVU217
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	.loc 1 53 48 discriminator 1 view .LVU218
	vfmadd132sd	.LC11(%rip), %xmm5, %xmm0
	.loc 1 53 21 discriminator 1 view .LVU219
	vmovsd	%xmm0, -24(%r12)
	.loc 1 54 9 is_stmt 1 view .LVU220
	.loc 1 54 23 is_stmt 0 view .LVU221
	call	rand@PLT
.LVL67:
	.loc 1 54 30 discriminator 1 view .LVU222
	vxorpd	%xmm7, %xmm7, %xmm7
	.loc 1 54 48 discriminator 1 view .LVU223
	vmovsd	.LC12(%rip), %xmm6
	.loc 1 54 30 discriminator 1 view .LVU224
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	.loc 1 54 48 discriminator 1 view .LVU225
	vfmadd132sd	.LC11(%rip), %xmm6, %xmm0
	.loc 1 54 21 discriminator 1 view .LVU226
	vmovsd	%xmm0, -16(%r12)
	.loc 1 55 9 is_stmt 1 view .LVU227
	.loc 1 55 23 is_stmt 0 view .LVU228
	call	rand@PLT
.LVL68:
	.loc 1 55 30 discriminator 1 view .LVU229
	vxorpd	%xmm7, %xmm7, %xmm7
	.loc 1 55 48 discriminator 1 view .LVU230
	vmovsd	.LC12(%rip), %xmm3
	.loc 1 57 22 view .LVU231
	vmovsd	-24(%r12), %xmm2
	.loc 1 55 30 discriminator 1 view .LVU232
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	.loc 1 55 48 discriminator 1 view .LVU233
	vfmadd132sd	.LC11(%rip), %xmm3, %xmm0
	.loc 1 57 15 view .LVU234
	vaddsd	24(%rsp), %xmm2, %xmm5
	.loc 1 58 15 view .LVU235
	vmovq	%r13, %xmm3
	.loc 1 58 22 view .LVU236
	vmovsd	-16(%r12), %xmm1
	.loc 1 58 15 view .LVU237
	vaddsd	%xmm1, %xmm3, %xmm4
	.loc 1 57 15 view .LVU238
	vmovsd	%xmm5, 24(%rsp)
.LVL69:
	.loc 1 59 15 view .LVU239
	vaddsd	16(%rsp), %xmm0, %xmm5
	.loc 1 55 21 discriminator 1 view .LVU240
	vmovsd	%xmm0, -8(%r12)
	.loc 1 57 9 is_stmt 1 view .LVU241
.LVL70:
	.loc 1 58 9 view .LVU242
	.loc 1 61 27 is_stmt 0 view .LVU243
	vmulsd	%xmm0, %xmm0, %xmm0
	.loc 1 58 15 view .LVU244
	vmovq	%xmm4, %r13
.LVL71:
	.loc 1 59 9 is_stmt 1 view .LVU245
	vmovq	%r14, %xmm4
.LVL72:
	.loc 1 59 9 is_stmt 0 view .LVU246
	vfmadd132sd	%xmm2, %xmm4, %xmm2
	vfmadd132sd	%xmm1, %xmm0, %xmm1
	.loc 1 60 15 view .LVU247
	vaddsd	%xmm1, %xmm2, %xmm3
	.loc 1 59 15 view .LVU248
	vmovsd	%xmm5, 16(%rsp)
.LVL73:
	.loc 1 60 9 is_stmt 1 view .LVU249
	.loc 1 60 15 is_stmt 0 view .LVU250
	vmovq	%xmm3, %r14
.LVL74:
	.loc 1 52 37 is_stmt 1 discriminator 3 view .LVU251
	.loc 1 52 23 discriminator 1 view .LVU252
	cmpq	%r15, %r12
	jne	.L29
.LBE145:
	.loc 1 64 5 view .LVU253
	.loc 1 64 11 is_stmt 0 view .LVU254
	vmovsd	.LC13(%rip), %xmm0
	.loc 1 65 11 view .LVU255
	vmovq	%r13, %xmm5
.LVL75:
	.loc 1 67 19 view .LVU256
	vmovq	%r14, %xmm4
	.loc 1 67 11 view .LVU257
	movq	8(%rsp), %rax
	.loc 1 64 11 view .LVU258
	vmulsd	24(%rsp), %xmm0, %xmm3
.LVL76:
	.loc 1 65 5 is_stmt 1 view .LVU259
	.loc 1 66 11 is_stmt 0 view .LVU260
	vmulsd	16(%rsp), %xmm0, %xmm1
	.loc 1 68 11 view .LVU261
	movq	(%rsp), %rcx
	.loc 1 65 11 view .LVU262
	vmulsd	%xmm0, %xmm5, %xmm2
.LVL77:
	.loc 1 66 5 is_stmt 1 view .LVU263
	.loc 1 67 5 view .LVU264
	.loc 1 67 19 is_stmt 0 view .LVU265
	vmulsd	.LC14(%rip), %xmm4, %xmm0
	vunpcklpd	%xmm1, %xmm2, %xmm6
	.loc 1 67 11 view .LVU266
	vmovsd	%xmm0, (%rax)
	.loc 1 68 5 is_stmt 1 view .LVU267
	.loc 1 68 17 is_stmt 0 view .LVU268
	vmulsd	.LC2(%rip), %xmm4, %xmm0
	.loc 1 68 11 view .LVU269
	vmovsd	%xmm0, (%rcx)
	.loc 1 69 5 is_stmt 1 view .LVU270
	.loc 1 69 10 is_stmt 0 view .LVU271
	vmovsd	.LC6(%rip), %xmm0
	vdivsd	(%rax), %xmm0, %xmm4
.LVL78:
	.loc 1 69 10 view .LVU272
	vunpcklpd	%xmm3, %xmm1, %xmm0
	vunpcklpd	%xmm2, %xmm3, %xmm3
.LVL79:
	.loc 1 69 10 view .LVU273
	vinsertf128	$0x1, %xmm6, %ymm0, %ymm5
	vinsertf128	$0x1, %xmm3, %ymm6, %ymm6
	vinsertf128	$0x1, %xmm0, %ymm3, %ymm3
	vsqrtsd	%xmm4, %xmm4, %xmm4
.LVL80:
	.loc 1 71 5 is_stmt 1 view .LVU274
.LBB146:
	.loc 1 71 10 view .LVU275
	.loc 1 71 23 discriminator 1 view .LVU276
	vbroadcastsd	%xmm4, %ymm4
.LVL81:
	.loc 1 71 23 is_stmt 0 discriminator 1 view .LVU277
	.p2align 6
	.p2align 4
	.p2align 3
.L30:
	.loc 1 73 9 is_stmt 1 view .LVU278
	.loc 1 73 28 is_stmt 0 view .LVU279
	vmovupd	32(%rbx), %ymm1
	vmovupd	64(%rbx), %ymm0
	addq	$96, %rbx
	vmovupd	-96(%rbx), %ymm2
	.loc 1 73 36 view .LVU280
	vsubpd	%ymm6, %ymm1, %ymm1
	vsubpd	%ymm5, %ymm0, %ymm0
	vsubpd	%ymm3, %ymm2, %ymm2
	.loc 1 73 45 view .LVU281
	vmulpd	%ymm4, %ymm1, %ymm1
	vmulpd	%ymm4, %ymm0, %ymm0
	.loc 1 74 9 is_stmt 1 view .LVU282
	.loc 1 75 9 view .LVU283
	.loc 1 73 45 is_stmt 0 view .LVU284
	vmulpd	%ymm4, %ymm2, %ymm2
	.loc 1 73 21 view .LVU285
	vmovupd	%ymm1, -64(%rbx)
	vmovupd	%ymm0, -32(%rbx)
	.loc 1 71 37 is_stmt 1 discriminator 3 view .LVU286
	.loc 1 71 23 discriminator 1 view .LVU287
	.loc 1 73 21 is_stmt 0 view .LVU288
	vmovupd	%ymm2, -96(%rbx)
	cmpq	%r15, %rbx
	jne	.L30
	vzeroupper
.LVL82:
.LBE146:
	.loc 1 77 1 view .LVU289
	leaq	-40(%rbp), %rsp
.LVL83:
	.loc 1 77 1 view .LVU290
	popq	%rbx
	popq	%r12
	popq	%r13
.LVL84:
	.loc 1 77 1 view .LVU291
	popq	%r14
.LVL85:
	.loc 1 77 1 view .LVU292
	popq	%r15
.LVL86:
	.loc 1 77 1 view .LVU293
	popq	%rbp
	.cfi_def_cfa 7, 8
.LVL87:
	.loc 1 77 1 view .LVU294
	ret
	.cfi_endproc
.LFE6561:
	.size	init_vel, .-init_vel
	.p2align 4
	.globl	forces
	.type	forces, @function
forces:
.LVL88:
.LFB6563:
	.loc 1 115 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 117 5 view .LVU296
.LBB147:
.LBI147:
	.loc 2 1320 1 view .LVU297
.LBB148:
	.loc 2 1322 3 view .LVU298
.LBE148:
.LBE147:
	.loc 1 115 1 is_stmt 0 view .LVU299
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
.LBB151:
.LBB149:
	.loc 2 1322 10 view .LVU300
	vbroadcastsd	%xmm2, %ymm2
.LVL89:
	.loc 2 1322 10 view .LVU301
.LBE149:
.LBE151:
	.loc 1 115 1 view .LVU302
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rsi, %r15
	movq	%rdi, %r13
	andq	$-32, %rsp
.LBB152:
	.loc 1 121 17 view .LVU303
	xorl	%esi, %esi
.LVL90:
	.loc 1 121 17 view .LVU304
.LBE152:
	.loc 1 115 1 view .LVU305
	movq	%rdx, %r14
.LBB153:
	.loc 1 121 17 view .LVU306
	movq	%r15, %rdi
.LVL91:
	.loc 1 121 17 view .LVU307
.LBE153:
	.loc 1 115 1 view .LVU308
	subq	$160, %rsp
.LBB154:
	.loc 1 121 17 view .LVU309
	movl	$32928, %edx
.LVL92:
	.loc 1 121 17 view .LVU310
.LBE154:
	.loc 1 115 1 view .LVU311
	movq	%rcx, %rbx
	movq	%r8, %r12
	vmovsd	%xmm1, 48(%rsp)
	vmovsd	%xmm0, 56(%rsp)
.LBB155:
.LBB150:
	.loc 2 1322 10 view .LVU312
	vmovapd	%ymm2, (%rsp)
.LVL93:
	.loc 2 1322 10 view .LVU313
.LBE150:
.LBE155:
	.loc 1 120 5 is_stmt 1 view .LVU314
.LBB156:
	.loc 1 120 10 view .LVU315
	.loc 1 120 23 discriminator 1 view .LVU316
	.loc 1 121 17 is_stmt 0 view .LVU317
	vzeroupper
.LVL94:
	call	memset@PLT
.LVL95:
	.loc 1 121 17 view .LVU318
.LBE156:
	.loc 1 124 5 is_stmt 1 view .LVU319
	.loc 1 125 5 view .LVU320
	.loc 1 126 5 view .LVU321
	.loc 1 126 11 is_stmt 0 view .LVU322
	movq	$0x000000000, (%r14)
	.loc 1 127 5 is_stmt 1 view .LVU323
.LVL96:
	.loc 1 129 5 view .LVU324
	movl	$4, %edi
	call	omp_set_num_threads@PLT
.LVL97:
.LBB157:
	.loc 1 130 9 is_stmt 0 view .LVU325
	movq	%r15, 128(%rsp)
	movq	%r13, 96(%rsp)
	movq	$0x000000000, 120(%rsp)
	leaq	64(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	vmovq	.LC15(%rip), %xmm0
	vmovapd	(%rsp), %ymm2
	leaq	forces._omp_fn.0(%rip), %rdi
	vmovupd	%xmm0, 104(%rsp)
	vmovapd	%ymm2, 64(%rsp)
	vzeroupper
.LVL98:
	call	GOMP_parallel@PLT
.LVL99:
	.loc 1 130 9 view .LVU326
.LBE157:
	.loc 1 171 5 is_stmt 1 view .LVU327
	.loc 1 172 5 view .LVU328
	.loc 1 172 14 is_stmt 0 view .LVU329
	vmovsd	.LC16(%rip), %xmm0
	.loc 1 173 25 view .LVU330
	vmovsd	56(%rsp), %xmm3
	.loc 1 172 14 view .LVU331
	vmulsd	112(%rsp), %xmm0, %xmm0
.LVL100:
	.loc 1 173 5 is_stmt 1 view .LVU332
	.loc 1 172 14 is_stmt 0 view .LVU333
	vdivsd	48(%rsp), %xmm0, %xmm0
.LVL101:
	.loc 1 173 25 view .LVU334
	vfmadd132sd	(%r12), %xmm0, %xmm3
	.loc 1 173 11 view .LVU335
	vmovsd	%xmm3, (%rbx)
.LVL102:
	.loc 1 174 1 view .LVU336
	leaq	-40(%rbp), %rsp
.LVL103:
	.loc 1 174 1 view .LVU337
	popq	%rbx
.LVL104:
	.loc 1 174 1 view .LVU338
	popq	%r12
.LVL105:
	.loc 1 174 1 view .LVU339
	popq	%r13
.LVL106:
	.loc 1 174 1 view .LVU340
	popq	%r14
	popq	%r15
.LVL107:
	.loc 1 174 1 view .LVU341
	popq	%rbp
	.cfi_def_cfa 7, 8
.LVL108:
	.loc 1 174 1 view .LVU342
	ret
	.cfi_endproc
.LFE6563:
	.size	forces, .-forces
	.p2align 4
	.globl	velocity_verlet
	.type	velocity_verlet, @function
velocity_verlet:
.LVL109:
.LFB6565:
	.loc 1 192 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 194 5 view .LVU344
.LBB158:
	.loc 1 194 10 view .LVU345
	.loc 1 194 23 discriminator 1 view .LVU346
.LBE158:
	.loc 1 192 1 is_stmt 0 view .LVU347
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	movq	%rdx, %rsi
.LVL110:
	.loc 1 192 1 view .LVU348
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r10
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	vmovsd	.LC17(%rip), %xmm8
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	vmovsd	.LC18(%rip), %xmm7
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rdx
.LVL111:
	.loc 1 192 1 view .LVU349
	movq	%r8, %rbx
	vmovsd	.LC19(%rip), %xmm5
	movq	48(%rsp), %rbp
	movq	%r14, %r12
	movq	%rsi, %r13
	leaq	32928(%rdi), %r8
.LVL112:
	.loc 1 192 1 view .LVU350
	movq	%rsi, %rcx
.LVL113:
	.loc 1 192 1 view .LVU351
	movq	%r14, %rax
.LBB185:
.LBB159:
.LBB160:
	.loc 1 180 8 view .LVU352
	vxorpd	%xmm6, %xmm6, %xmm6
	jmp	.L49
.LVL114:
	.p2align 4
	.p2align 3
.L59:
	.loc 1 182 12 is_stmt 1 view .LVU353
	.loc 1 183 15 is_stmt 0 view .LVU354
	vsubsd	%xmm2, %xmm4, %xmm10
	vcmpltsd	%xmm4, %xmm2, %xmm11
.LBE160:
.LBE159:
.LBB164:
.LBB165:
	.loc 1 180 8 view .LVU355
	vcomisd	%xmm3, %xmm6
.LBE165:
.LBE164:
.LBB170:
.LBB161:
	.loc 1 183 15 view .LVU356
	vblendvpd	%xmm11, %xmm10, %xmm4, %xmm4
.LVL115:
	.loc 1 185 5 is_stmt 1 view .LVU357
	.loc 1 185 5 is_stmt 0 view .LVU358
.LBE161:
.LBE170:
	.loc 1 199 21 discriminator 1 view .LVU359
	vmovsd	%xmm4, (%rdx)
	.loc 1 200 9 is_stmt 1 view .LVU360
.LVL116:
.LBB171:
.LBI164:
	.loc 1 177 15 view .LVU361
.LBB166:
	.loc 1 180 5 view .LVU362
	.loc 1 180 8 is_stmt 0 view .LVU363
	jnb	.L63
.L60:
	.loc 1 182 12 is_stmt 1 view .LVU364
	.loc 1 183 15 is_stmt 0 view .LVU365
	vsubsd	%xmm2, %xmm3, %xmm4
	vcmpltsd	%xmm3, %xmm2, %xmm10
.LBE166:
.LBE171:
.LBB172:
.LBB173:
	.loc 1 180 8 view .LVU366
	vcomisd	%xmm9, %xmm6
.LBE173:
.LBE172:
.LBB177:
.LBB167:
	.loc 1 183 15 view .LVU367
	vblendvpd	%xmm10, %xmm4, %xmm3, %xmm3
.LVL117:
	.loc 1 185 5 is_stmt 1 view .LVU368
	.loc 1 185 5 is_stmt 0 view .LVU369
.LBE167:
.LBE177:
	.loc 1 200 21 discriminator 1 view .LVU370
	vmovsd	%xmm3, 8(%rdx)
	.loc 1 201 9 is_stmt 1 view .LVU371
.LVL118:
.LBB178:
.LBI172:
	.loc 1 177 15 view .LVU372
.LBB174:
	.loc 1 180 5 view .LVU373
	.loc 1 180 8 is_stmt 0 view .LVU374
	jnb	.L64
.L61:
	.loc 1 182 12 is_stmt 1 view .LVU375
	.loc 1 183 15 is_stmt 0 view .LVU376
	vsubsd	%xmm2, %xmm9, %xmm3
	vcmpltsd	%xmm9, %xmm2, %xmm4
	vblendvpd	%xmm4, %xmm3, %xmm9, %xmm9
.LVL119:
.L47:
	.loc 1 185 5 is_stmt 1 view .LVU377
	.loc 1 185 5 is_stmt 0 view .LVU378
.LBE174:
.LBE178:
	.loc 1 201 21 discriminator 1 view .LVU379
	vmovsd	%xmm9, 16(%rdx)
	.loc 1 203 9 is_stmt 1 view .LVU380
	.loc 1 203 21 is_stmt 0 view .LVU381
	vmovsd	(%rcx), %xmm3
	.loc 1 194 23 discriminator 1 view .LVU382
	addq	$24, %rdx
	addq	$24, %rax
	.loc 1 203 21 view .LVU383
	vfmadd213sd	-24(%rax), %xmm5, %xmm3
	.loc 1 194 23 discriminator 1 view .LVU384
	addq	$24, %rcx
	.loc 1 203 21 view .LVU385
	vmovsd	%xmm3, -24(%rax)
	.loc 1 204 9 is_stmt 1 view .LVU386
	.loc 1 204 21 is_stmt 0 view .LVU387
	vmovsd	-16(%rcx), %xmm3
	vfmadd213sd	-16(%rax), %xmm5, %xmm3
	vmovsd	%xmm3, -16(%rax)
	.loc 1 205 9 is_stmt 1 view .LVU388
	.loc 1 205 21 is_stmt 0 view .LVU389
	vmovsd	-8(%rcx), %xmm3
	vfmadd213sd	-8(%rax), %xmm5, %xmm3
	vmovsd	%xmm3, -8(%rax)
	.loc 1 194 37 is_stmt 1 discriminator 3 view .LVU390
	.loc 1 194 23 discriminator 1 view .LVU391
	cmpq	%r8, %rdx
	je	.L65
.L49:
	.loc 1 195 9 view .LVU392
	.loc 1 195 21 is_stmt 0 view .LVU393
	vmovsd	(%rax), %xmm4
	vfmadd213sd	(%rdx), %xmm8, %xmm4
	vfmadd231sd	(%rcx), %xmm7, %xmm4
	vmovsd	%xmm4, (%rdx)
	.loc 1 196 9 is_stmt 1 view .LVU394
	.loc 1 196 21 is_stmt 0 view .LVU395
	vmovsd	8(%rax), %xmm3
.LBB179:
.LBB162:
	.loc 1 180 8 view .LVU396
	vcomisd	%xmm4, %xmm6
.LBE162:
.LBE179:
	.loc 1 196 21 view .LVU397
	vfmadd213sd	8(%rdx), %xmm8, %xmm3
	vfmadd231sd	8(%rcx), %xmm7, %xmm3
	vmovsd	%xmm3, 8(%rdx)
	.loc 1 197 9 is_stmt 1 view .LVU398
	.loc 1 197 21 is_stmt 0 view .LVU399
	vmovsd	16(%rax), %xmm9
	vfmadd213sd	16(%rdx), %xmm8, %xmm9
	vfmadd231sd	16(%rcx), %xmm7, %xmm9
	.loc 1 199 9 is_stmt 1 view .LVU400
.LVL120:
.LBB180:
.LBI159:
	.loc 1 177 15 view .LVU401
.LBB163:
	.loc 1 180 5 view .LVU402
	.loc 1 180 8 is_stmt 0 view .LVU403
	jb	.L59
	.loc 1 181 9 is_stmt 1 view .LVU404
	.loc 1 181 15 is_stmt 0 view .LVU405
	vaddsd	%xmm2, %xmm4, %xmm4
.LVL121:
	.loc 1 185 5 is_stmt 1 view .LVU406
	.loc 1 185 5 is_stmt 0 view .LVU407
.LBE163:
.LBE180:
.LBB181:
.LBB168:
	.loc 1 180 8 view .LVU408
	vcomisd	%xmm3, %xmm6
.LBE168:
.LBE181:
	.loc 1 199 21 discriminator 1 view .LVU409
	vmovsd	%xmm4, (%rdx)
	.loc 1 200 9 is_stmt 1 view .LVU410
.LVL122:
.LBB182:
	.loc 1 177 15 view .LVU411
.LBB169:
	.loc 1 180 5 view .LVU412
	.loc 1 180 8 is_stmt 0 view .LVU413
	jb	.L60
.L63:
	.loc 1 181 9 is_stmt 1 view .LVU414
	.loc 1 181 15 is_stmt 0 view .LVU415
	vaddsd	%xmm2, %xmm3, %xmm3
.LVL123:
	.loc 1 185 5 is_stmt 1 view .LVU416
	.loc 1 185 5 is_stmt 0 view .LVU417
.LBE169:
.LBE182:
.LBB183:
.LBB175:
	.loc 1 180 8 view .LVU418
	vcomisd	%xmm9, %xmm6
.LBE175:
.LBE183:
	.loc 1 200 21 discriminator 1 view .LVU419
	vmovsd	%xmm3, 8(%rdx)
	.loc 1 201 9 is_stmt 1 view .LVU420
.LVL124:
.LBB184:
	.loc 1 177 15 view .LVU421
.LBB176:
	.loc 1 180 5 view .LVU422
	.loc 1 180 8 is_stmt 0 view .LVU423
	jb	.L61
.L64:
	.loc 1 181 9 is_stmt 1 view .LVU424
	.loc 1 181 15 is_stmt 0 view .LVU425
	vaddsd	%xmm2, %xmm9, %xmm9
.LVL125:
	.loc 1 181 15 view .LVU426
	jmp	.L47
.LVL126:
.L65:
	.loc 1 181 15 view .LVU427
.LBE176:
.LBE184:
.LBE185:
	.loc 1 208 5 is_stmt 1 view .LVU428
	movq	%rbp, %r8
	movq	%r9, %rcx
	movq	%r10, %rdx
	addq	$32928, %r14
	call	forces
.LVL127:
	.loc 1 210 5 view .LVU429
	.loc 1 211 5 view .LVU430
.LBB186:
	.loc 1 211 10 view .LVU431
	.loc 1 211 23 discriminator 1 view .LVU432
.LBE186:
	.loc 1 210 12 is_stmt 0 view .LVU433
	vmovsd	.LC19(%rip), %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
.LVL128:
	.p2align 4
	.p2align 3
.L50:
.LBB187:
	.loc 1 212 9 is_stmt 1 view .LVU434
	.loc 1 212 21 is_stmt 0 view .LVU435
	vmovsd	0(%r13), %xmm2
	.loc 1 211 23 discriminator 1 view .LVU436
	addq	$24, %r12
.LVL129:
	.loc 1 211 23 discriminator 1 view .LVU437
	addq	$24, %r13
	.loc 1 212 21 view .LVU438
	vfmadd213sd	-24(%r12), %xmm5, %xmm2
	vmovsd	%xmm2, -24(%r12)
	.loc 1 213 9 is_stmt 1 view .LVU439
	.loc 1 213 21 is_stmt 0 view .LVU440
	vmovsd	-16(%r13), %xmm3
	vfmadd213sd	-16(%r12), %xmm5, %xmm3
	vmovsd	%xmm3, -16(%r12)
	.loc 1 214 9 is_stmt 1 view .LVU441
	.loc 1 214 21 is_stmt 0 view .LVU442
	vmovsd	-8(%r13), %xmm0
	.loc 1 216 58 view .LVU443
	vmulsd	%xmm3, %xmm3, %xmm3
	.loc 1 214 21 view .LVU444
	vfmadd213sd	-8(%r12), %xmm5, %xmm0
	vfmadd132sd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm0, -8(%r12)
	.loc 1 216 9 is_stmt 1 view .LVU445
	vfmadd132sd	%xmm0, %xmm1, %xmm0
	.loc 1 216 15 is_stmt 0 view .LVU446
	vaddsd	%xmm0, %xmm2, %xmm1
.LVL130:
	.loc 1 211 37 is_stmt 1 discriminator 3 view .LVU447
	.loc 1 211 23 discriminator 1 view .LVU448
	cmpq	%r14, %r12
	jne	.L50
.LBE187:
	.loc 1 220 5 view .LVU449
	.loc 1 220 17 is_stmt 0 view .LVU450
	vmulsd	.LC2(%rip), %xmm1, %xmm0
	.loc 1 221 19 view .LVU451
	vmulsd	.LC14(%rip), %xmm1, %xmm1
.LVL131:
	.loc 1 220 11 view .LVU452
	vmovsd	%xmm0, (%rbx)
	.loc 1 221 5 is_stmt 1 view .LVU453
	.loc 1 221 11 is_stmt 0 view .LVU454
	vmovsd	%xmm1, 0(%rbp)
	.loc 1 222 1 view .LVU455
	popq	%rbx
	.cfi_def_cfa_offset 40
.LVL132:
	.loc 1 222 1 view .LVU456
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
.LVL133:
	.loc 1 222 1 view .LVU457
	ret
	.cfi_endproc
.LFE6565:
	.size	velocity_verlet, .-velocity_verlet
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	-2147483648
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	-1074790400
	.align 8
.LC8:
	.long	0
	.long	1077411840
	.align 8
.LC9:
	.long	0
	.long	1074790400
	.align 8
.LC10:
	.long	120897443
	.long	1066448224
	.align 8
.LC11:
	.long	2097152
	.long	1040187392
	.align 8
.LC12:
	.long	0
	.long	-1075838976
	.align 8
.LC13:
	.long	1364872989
	.long	1061675557
	.align 8
.LC14:
	.long	-1043480879
	.long	1060100145
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC15:
	.long	0
	.long	1075380224
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	1431655765
	.long	1070945621
	.align 8
.LC17:
	.long	1202590843
	.long	1064598241
	.align 8
.LC18:
	.long	-350469331
	.long	1055536866
	.align 8
.LC19:
	.long	1202590843
	.long	1063549665
	.text
.Letext0:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 4 "<built-in>"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/14/include/omp.h"
	.file 6 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe55
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x25
	.long	.LASF79
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x18
	.long	0x5f
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x18
	.long	0x2e
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.long	.LASF13
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x29
	.long	0xa4
	.uleb128 0x1d
	.long	0x2e
	.long	0xaf
	.uleb128 0x1e
	.byte	0
	.uleb128 0x1c
	.long	.LASF16
	.byte	0x3b
	.long	0xbe
	.uleb128 0x18
	.long	0xaf
	.uleb128 0x1d
	.long	0x2e
	.long	0xc9
	.uleb128 0x1e
	.byte	0
	.uleb128 0x27
	.long	.LASF80
	.byte	0x2
	.byte	0x45
	.byte	0x10
	.long	0xbe
	.byte	0x1
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.long	.LASF17
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.long	.LASF18
	.uleb128 0x28
	.long	.LASF81
	.byte	0x5
	.byte	0xd5
	.byte	0xd
	.long	0xf6
	.uleb128 0x19
	.long	0x5f
	.byte	0
	.uleb128 0x15
	.long	.LASF35
	.byte	0x71
	.quad	.LFB6563
	.quad	.LFE6563-.LFB6563
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e9
	.uleb128 0x6
	.long	.LASF19
	.byte	0x71
	.byte	0x24
	.long	0x7ee
	.long	.LLST76
	.long	.LVUS76
	.uleb128 0x6
	.long	.LASF20
	.byte	0x71
	.byte	0x32
	.long	0x7f3
	.long	.LLST77
	.long	.LVUS77
	.uleb128 0x6
	.long	.LASF21
	.byte	0x71
	.byte	0x40
	.long	0x7f3
	.long	.LLST78
	.long	.LVUS78
	.uleb128 0x6
	.long	.LASF22
	.byte	0x71
	.byte	0x4e
	.long	0x7f3
	.long	.LLST79
	.long	.LVUS79
	.uleb128 0x6
	.long	.LASF23
	.byte	0x72
	.byte	0x1b
	.long	0x7e9
	.long	.LLST80
	.long	.LVUS80
	.uleb128 0xa
	.string	"rho"
	.byte	0x72
	.byte	0x2e
	.long	0x80
	.long	.LLST81
	.long	.LVUS81
	.uleb128 0xa
	.string	"V"
	.byte	0x72
	.byte	0x40
	.long	0x80
	.long	.LLST82
	.long	.LVUS82
	.uleb128 0xa
	.string	"L"
	.byte	0x72
	.byte	0x50
	.long	0x80
	.long	.LLST83
	.long	.LVUS83
	.uleb128 0x29
	.long	.LASF40
	.quad	.LFB6566
	.quad	.LFE6566-.LFB6566
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e0
	.uleb128 0x2a
	.long	0x84d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x71
	.byte	0x24
	.long	0x7ee
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x3
	.long	.LASF24
	.byte	0x75
	.byte	0xd
	.long	0xaf
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7d
	.byte	0xc
	.long	0x2e
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7c
	.byte	0xc
	.long	0x2e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7f
	.byte	0xc
	.long	0x2e
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x3
	.long	.LASF20
	.byte	0x71
	.byte	0x32
	.long	0x7f3
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xb
	.long	.LLRL7
	.long	0x616
	.uleb128 0x4
	.string	"i"
	.byte	0x83
	.byte	0xe
	.long	0x5f
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x16
	.long	.LLRL7
	.uleb128 0x3
	.long	.LASF28
	.byte	0x86
	.byte	0x11
	.long	0xaf
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xb
	.long	.LLRL10
	.long	0x5e6
	.uleb128 0x4
	.string	"j"
	.byte	0x88
	.byte	0x12
	.long	0x5f
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x16
	.long	.LLRL12
	.uleb128 0x3
	.long	.LASF29
	.byte	0x8a
	.byte	0x15
	.long	0xaf
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0xc
	.long	.LASF45
	.byte	0x8c
	.byte	0x15
	.long	0xaf
	.uleb128 0x4
	.string	"rx"
	.byte	0x90
	.byte	0x14
	.long	0x2e
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x4
	.string	"ry"
	.byte	0x91
	.byte	0x14
	.long	0x2e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x4
	.string	"rz"
	.byte	0x92
	.byte	0x14
	.long	0x2e
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x3
	.long	.LASF30
	.byte	0x94
	.byte	0x14
	.long	0x2e
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x3
	.long	.LASF31
	.byte	0x9a
	.byte	0x14
	.long	0x2e
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x3
	.long	.LASF32
	.byte	0x9b
	.byte	0x14
	.long	0x2e
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x4
	.string	"fr"
	.byte	0x9d
	.byte	0x14
	.long	0x2e
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x7
	.long	0xa6d
	.quad	.LBI78
	.byte	.LVU43
	.long	.LLRL21
	.byte	0x8e
	.byte	0x15
	.long	0x577
	.uleb128 0x1
	.long	0xa7e
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x1
	.long	0xa89
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x16
	.long	.LLRL21
	.uleb128 0x2b
	.long	0xa94
	.uleb128 0x11
	.long	0xa9f
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x11
	.long	0xaaa
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x11
	.long	0xab5
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x11
	.long	0xac0
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x11
	.long	0xacb
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x7
	.long	0xd9c
	.quad	.LBI80
	.byte	.LVU45
	.long	.LLRL29
	.byte	0x5e
	.byte	0x22
	.long	0x3e0
	.uleb128 0x1
	.long	0xdab
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x1
	.long	0xdb7
	.long	.LLST31
	.long	.LVUS31
	.byte	0
	.uleb128 0x7
	.long	0xd74
	.quad	.LBI84
	.byte	.LVU49
	.long	.LLRL32
	.byte	0x61
	.byte	0x15
	.long	0x40b
	.uleb128 0x1
	.long	0xd83
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0xe
	.long	0xd8f
	.byte	0
	.uleb128 0x7
	.long	0xd40
	.quad	.LBI92
	.byte	.LVU52
	.long	.LLRL34
	.byte	0x61
	.byte	0x15
	.long	0x443
	.uleb128 0x1
	.long	0xd4f
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0xe
	.long	0xd5b
	.uleb128 0x1
	.long	0xd67
	.long	.LLST36
	.long	.LVUS36
	.byte	0
	.uleb128 0x7
	.long	0xdf4
	.quad	.LBI95
	.byte	.LVU63
	.long	.LLRL37
	.byte	0x67
	.byte	0x17
	.long	0x476
	.uleb128 0x1
	.long	0xe02
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x1
	.long	0xe0d
	.long	.LLST39
	.long	.LVUS39
	.byte	0
	.uleb128 0x1a
	.long	0xd40
	.quad	.LBI99
	.byte	.LVU58
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.byte	0x64
	.byte	0x15
	.long	0x4ba
	.uleb128 0x1
	.long	0xd4f
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0xe
	.long	0xd5b
	.uleb128 0x1
	.long	0xd67
	.long	.LLST41
	.long	.LVUS41
	.byte	0
	.uleb128 0x1a
	.long	0xdc4
	.quad	.LBI102
	.byte	.LVU67
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.byte	0x68
	.byte	0x1c
	.long	0x506
	.uleb128 0x1
	.long	0xdd2
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x1
	.long	0xddd
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x1
	.long	0xde8
	.long	.LLST44
	.long	.LVUS44
	.byte	0
	.uleb128 0x7
	.long	0xd74
	.quad	.LBI104
	.byte	.LVU72
	.long	.LLRL45
	.byte	0x6b
	.byte	0x17
	.long	0x539
	.uleb128 0x1
	.long	0xd83
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x1
	.long	0xd8f
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.uleb128 0x1f
	.long	0xdc4
	.quad	.LBI107
	.byte	.LVU76
	.long	.LLRL48
	.byte	0x6c
	.byte	0x14
	.uleb128 0x1
	.long	0xdd2
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x1
	.long	0xddd
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x1
	.long	0xde8
	.long	.LLST51
	.long	.LVUS51
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0xd24
	.quad	.LBI117
	.byte	.LVU34
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x8a
	.byte	0x1d
	.long	0x5a9
	.uleb128 0x1
	.long	0xd33
	.long	.LLST52
	.long	.LVUS52
	.byte	0
	.uleb128 0x20
	.long	0xd74
	.quad	.LBI119
	.byte	.LVU38
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.byte	0x8c
	.byte	0x1d
	.uleb128 0x1
	.long	0xd83
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x1
	.long	0xd8f
	.long	.LLST54
	.long	.LVUS54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xd24
	.quad	.LBI127
	.byte	.LVU26
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x86
	.byte	0x19
	.uleb128 0x1
	.long	0xd33
	.long	.LLST55
	.long	.LVUS55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.quad	.LVL5
	.long	0xe19
	.long	0x645
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x12
	.quad	.LVL6
	.long	0xe22
	.long	0x679
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1011
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL36
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.quad	.LVL37
	.long	0xe2b
	.long	0x6a2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.quad	.LVL38
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.quad	.LVL42
	.long	0xe34
	.uleb128 0xf
	.quad	.LVL43
	.long	0xe3d
	.uleb128 0x9
	.quad	.LVL44
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xf
	.quad	.LVL45
	.long	0xe46
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x75
	.byte	0xd
	.long	0xaf
	.long	.LLST84
	.long	.LVUS84
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7c
	.byte	0xc
	.long	0x2e
	.long	.LLST85
	.long	.LVUS85
	.uleb128 0x2c
	.long	.LASF25
	.byte	0x1
	.byte	0x7d
	.byte	0xc
	.long	0x2e
	.byte	0x8
	.long	0
	.long	0x40190000
	.uleb128 0x3
	.long	.LASF27
	.byte	0x7f
	.byte	0xc
	.long	0x2e
	.long	.LLST86
	.long	.LVUS86
	.uleb128 0xb
	.long	.LLRL89
	.long	0x774
	.uleb128 0x4
	.string	"i"
	.byte	0x78
	.byte	0xe
	.long	0x5f
	.long	.LLST90
	.long	.LVUS90
	.uleb128 0x9
	.quad	.LVL94
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.quad	.LVL95
	.long	0xe19
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xcfa
	.quad	.LBI147
	.byte	.LVU297
	.long	.LLRL87
	.byte	0x75
	.byte	0x14
	.long	0x79a
	.uleb128 0x1
	.long	0xd09
	.long	.LLST88
	.long	.LVUS88
	.byte	0
	.uleb128 0x12
	.quad	.LVL97
	.long	0xe4
	.long	0x7b1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.quad	.LVL98
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.quad	.LVL99
	.long	0xe4f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	forces._omp_fn.0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x77
	.sleb128 64
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x80
	.uleb128 0x22
	.long	0x7e9
	.uleb128 0x21
	.long	0x2e
	.uleb128 0x2d
	.byte	0x60
	.long	0x847
	.uleb128 0x10
	.long	.LASF24
	.byte	0x75
	.byte	0xd
	.long	0xaf
	.byte	0
	.uleb128 0x10
	.long	.LASF19
	.byte	0x71
	.byte	0x24
	.long	0x7e9
	.byte	0x20
	.uleb128 0x10
	.long	.LASF25
	.byte	0x7d
	.byte	0xc
	.long	0x2e
	.byte	0x28
	.uleb128 0x10
	.long	.LASF26
	.byte	0x7c
	.byte	0xc
	.long	0x2e
	.byte	0x30
	.uleb128 0x10
	.long	.LASF27
	.byte	0x7f
	.byte	0xc
	.long	0x2e
	.byte	0x38
	.uleb128 0x10
	.long	.LASF20
	.byte	0x71
	.byte	0x32
	.long	0x7f3
	.byte	0x40
	.byte	0
	.uleb128 0x2e
	.byte	0x8
	.long	0x7f8
	.uleb128 0x22
	.long	0x847
	.uleb128 0x23
	.long	.LASF33
	.byte	0x9e
	.byte	0xf
	.long	0x2e
	.long	0x867
	.uleb128 0x19
	.long	0x2e
	.byte	0
	.uleb128 0x2f
	.long	.LASF82
	.byte	0x6
	.value	0x23d
	.byte	0xc
	.long	0x5f
	.uleb128 0x23
	.long	.LASF34
	.byte	0xa7
	.byte	0x10
	.long	0x2e
	.long	0x889
	.uleb128 0x19
	.long	0x2e
	.byte	0
	.uleb128 0x15
	.long	.LASF36
	.byte	0xbd
	.quad	.LFB6565
	.quad	.LFE6565-.LFB6565
	.uleb128 0x1
	.byte	0x9c
	.long	0xa45
	.uleb128 0x6
	.long	.LASF19
	.byte	0xbd
	.byte	0x1e
	.long	0x7f3
	.long	.LLST91
	.long	.LVUS91
	.uleb128 0x6
	.long	.LASF37
	.byte	0xbd
	.byte	0x2c
	.long	0x7f3
	.long	.LLST92
	.long	.LVUS92
	.uleb128 0x6
	.long	.LASF20
	.byte	0xbd
	.byte	0x3a
	.long	0x7f3
	.long	.LLST93
	.long	.LVUS93
	.uleb128 0x6
	.long	.LASF21
	.byte	0xbd
	.byte	0x48
	.long	0x7f3
	.long	.LLST94
	.long	.LVUS94
	.uleb128 0x6
	.long	.LASF38
	.byte	0xbe
	.byte	0x1e
	.long	0x7f3
	.long	.LLST95
	.long	.LVUS95
	.uleb128 0x6
	.long	.LASF22
	.byte	0xbe
	.byte	0x2c
	.long	0x7f3
	.long	.LLST96
	.long	.LVUS96
	.uleb128 0x30
	.long	.LASF23
	.byte	0x1
	.byte	0xbe
	.byte	0x3a
	.long	0x7f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"rho"
	.byte	0xbe
	.byte	0x4d
	.long	0x80
	.long	.LLST97
	.long	.LVUS97
	.uleb128 0xa
	.string	"V"
	.byte	0xbf
	.byte	0x23
	.long	0x80
	.long	.LLST98
	.long	.LVUS98
	.uleb128 0xa
	.string	"L"
	.byte	0xbf
	.byte	0x33
	.long	0x80
	.long	.LLST99
	.long	.LVUS99
	.uleb128 0x3
	.long	.LASF39
	.byte	0xd2
	.byte	0xc
	.long	0x2e
	.long	.LLST100
	.long	.LVUS100
	.uleb128 0xb
	.long	.LLRL101
	.long	0xa06
	.uleb128 0x4
	.string	"i"
	.byte	0xc2
	.byte	0xe
	.long	0x5f
	.long	.LLST102
	.long	.LVUS102
	.uleb128 0x7
	.long	0xa45
	.quad	.LBI159
	.byte	.LVU401
	.long	.LLRL103
	.byte	0xc7
	.byte	0x17
	.long	0x9b3
	.uleb128 0x1
	.long	0xa56
	.long	.LLST104
	.long	.LVUS104
	.uleb128 0xe
	.long	0xa61
	.byte	0
	.uleb128 0x7
	.long	0xa45
	.quad	.LBI164
	.byte	.LVU361
	.long	.LLRL105
	.byte	0xc8
	.byte	0x17
	.long	0x9de
	.uleb128 0x1
	.long	0xa56
	.long	.LLST106
	.long	.LVUS106
	.uleb128 0xe
	.long	0xa61
	.byte	0
	.uleb128 0x1f
	.long	0xa45
	.quad	.LBI172
	.byte	.LVU372
	.long	.LLRL107
	.byte	0xc9
	.byte	0x17
	.uleb128 0x1
	.long	0xa56
	.long	.LLST108
	.long	.LVUS108
	.uleb128 0xe
	.long	0xa61
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LLRL109
	.long	0xa21
	.uleb128 0x4
	.string	"i"
	.byte	0xd3
	.byte	0xe
	.long	0x5f
	.long	.LLST110
	.long	.LVUS110
	.byte	0
	.uleb128 0x1b
	.quad	.LVL127
	.long	0xf6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.string	"pbc"
	.byte	0x1
	.byte	0xb1
	.byte	0xf
	.long	0x2e
	.byte	0x1
	.long	0xa6d
	.uleb128 0x17
	.long	.LASF41
	.byte	0xb1
	.byte	0x1a
	.long	0x2e
	.uleb128 0x17
	.long	.LASF42
	.byte	0xb1
	.byte	0x2e
	.long	0x80
	.byte	0
	.uleb128 0x32
	.long	.LASF43
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.long	0xaf
	.byte	0x1
	.long	0xad7
	.uleb128 0x17
	.long	.LASF44
	.byte	0x5b
	.byte	0x26
	.long	0xaf
	.uleb128 0x17
	.long	.LASF42
	.byte	0x5b
	.byte	0x3d
	.long	0xb9
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5e
	.byte	0xd
	.long	0xaf
	.uleb128 0xc
	.long	.LASF47
	.byte	0x61
	.byte	0xd
	.long	0xaf
	.uleb128 0xc
	.long	.LASF48
	.byte	0x64
	.byte	0xd
	.long	0xaf
	.uleb128 0xc
	.long	.LASF49
	.byte	0x67
	.byte	0xd
	.long	0xaf
	.uleb128 0xc
	.long	.LASF50
	.byte	0x68
	.byte	0xd
	.long	0xaf
	.uleb128 0xc
	.long	.LASF51
	.byte	0x6b
	.byte	0xd
	.long	0xaf
	.byte	0
	.uleb128 0x15
	.long	.LASF52
	.byte	0x2e
	.quad	.LFB6561
	.quad	.LFE6561-.LFB6561
	.uleb128 0x1
	.byte	0x9c
	.long	0xbff
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2e
	.byte	0x17
	.long	0x7f3
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2e
	.byte	0x25
	.long	0x7f3
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x6
	.long	.LASF38
	.byte	0x2e
	.byte	0x33
	.long	0x7f3
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x4
	.string	"sf"
	.byte	0x32
	.byte	0xc
	.long	0x2e
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x3
	.long	.LASF53
	.byte	0x32
	.byte	0x10
	.long	0x2e
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x3
	.long	.LASF54
	.byte	0x32
	.byte	0x1d
	.long	0x2e
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x3
	.long	.LASF55
	.byte	0x32
	.byte	0x2a
	.long	0x2e
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x3
	.long	.LASF39
	.byte	0x32
	.byte	0x37
	.long	0x2e
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0xb
	.long	.LLRL73
	.long	0xbcc
	.uleb128 0x4
	.string	"i"
	.byte	0x34
	.byte	0xe
	.long	0x5f
	.long	.LLST74
	.long	.LVUS74
	.uleb128 0xf
	.quad	.LVL65
	.long	0x867
	.uleb128 0xf
	.quad	.LVL67
	.long	0x867
	.uleb128 0xf
	.quad	.LVL68
	.long	0x867
	.byte	0
	.uleb128 0x33
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.long	0xbf3
	.uleb128 0x4
	.string	"i"
	.byte	0x47
	.byte	0xe
	.long	0x5f
	.long	.LLST75
	.long	.LVUS75
	.byte	0
	.uleb128 0x9
	.quad	.LVL82
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0xc
	.quad	.LFB6560
	.quad	.LFE6560-.LFB6560
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfa
	.uleb128 0x6
	.long	.LASF19
	.byte	0xc
	.byte	0x17
	.long	0x7f3
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0xa
	.string	"rho"
	.byte	0xc
	.byte	0x2a
	.long	0x80
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x4
	.string	"a"
	.byte	0x10
	.byte	0xc
	.long	0x2e
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x34
	.long	.LASF57
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.long	0x5f
	.byte	0x7
	.uleb128 0x4
	.string	"idx"
	.byte	0x12
	.byte	0x9
	.long	0x5f
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0xb
	.long	.LLRL60
	.long	0xcc7
	.uleb128 0x4
	.string	"i"
	.byte	0x14
	.byte	0xe
	.long	0x5f
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x35
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x4
	.string	"j"
	.byte	0x15
	.byte	0x12
	.long	0x5f
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x16
	.long	.LLRL63
	.uleb128 0x4
	.string	"k"
	.byte	0x16
	.byte	0x16
	.long	0x5f
	.long	.LLST64
	.long	.LVUS64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.quad	.LVL52
	.long	0x874
	.long	0xcee
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x11
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0
	.long	0x40100000
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.quad	.LVL61
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LASF58
	.value	0x528
	.long	0xaf
	.long	0xd16
	.uleb128 0x8
	.string	"__A"
	.value	0x528
	.byte	0x18
	.long	0x2e
	.byte	0
	.uleb128 0x36
	.long	.LASF83
	.byte	0x2
	.value	0x4d6
	.byte	0x1
	.long	0xaf
	.byte	0x3
	.uleb128 0x13
	.long	.LASF59
	.value	0x37b
	.long	0xaf
	.long	0xd40
	.uleb128 0x8
	.string	"__P"
	.value	0x37b
	.byte	0x20
	.long	0x7e9
	.byte	0
	.uleb128 0x13
	.long	.LASF60
	.value	0x18d
	.long	0xaf
	.long	0xd74
	.uleb128 0x8
	.string	"__X"
	.value	0x18d
	.byte	0x18
	.long	0xaf
	.uleb128 0x8
	.string	"__Y"
	.value	0x18d
	.byte	0x25
	.long	0xaf
	.uleb128 0x8
	.string	"__P"
	.value	0x18d
	.byte	0x34
	.long	0x66
	.byte	0
	.uleb128 0x13
	.long	.LASF61
	.value	0x168
	.long	0xaf
	.long	0xd9c
	.uleb128 0x8
	.string	"__A"
	.value	0x168
	.byte	0x18
	.long	0xaf
	.uleb128 0x8
	.string	"__B"
	.value	0x168
	.byte	0x25
	.long	0xaf
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.value	0x138
	.long	0xaf
	.long	0xdc4
	.uleb128 0x8
	.string	"__A"
	.value	0x138
	.byte	0x18
	.long	0xaf
	.uleb128 0x8
	.string	"__B"
	.value	0x138
	.byte	0x25
	.long	0xaf
	.byte	0
	.uleb128 0x24
	.long	.LASF63
	.byte	0xdb
	.long	0xaf
	.long	0xdf4
	.uleb128 0x14
	.string	"__X"
	.byte	0xdb
	.byte	0x1b
	.long	0xaf
	.uleb128 0x14
	.string	"__Y"
	.byte	0xdb
	.byte	0x28
	.long	0xaf
	.uleb128 0x14
	.string	"__M"
	.byte	0xdb
	.byte	0x35
	.long	0xaf
	.byte	0
	.uleb128 0x24
	.long	.LASF64
	.byte	0x8d
	.long	0xaf
	.long	0xe19
	.uleb128 0x14
	.string	"__A"
	.byte	0x8d
	.byte	0x18
	.long	0xaf
	.uleb128 0x14
	.string	"__B"
	.byte	0x8d
	.byte	0x25
	.long	0xaf
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.long	.LASF67
	.uleb128 0xd
	.long	.LASF66
	.long	.LASF68
	.uleb128 0xd
	.long	.LASF69
	.long	.LASF70
	.uleb128 0xd
	.long	.LASF71
	.long	.LASF72
	.uleb128 0xd
	.long	.LASF73
	.long	.LASF74
	.uleb128 0xd
	.long	.LASF75
	.long	.LASF76
	.uleb128 0xd
	.long	.LASF77
	.long	.LASF78
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS76:
	.uleb128 0
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 0
.LLST76:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL106-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS77:
	.uleb128 0
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 0
.LLST77:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL107-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS78:
	.uleb128 0
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 0
.LLST78:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1819
	.sleb128 0
	.byte	0
.LVUS79:
	.uleb128 0
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 0
.LLST79:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 .LVL104-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL104-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS80:
	.uleb128 0
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU339
	.uleb128 .LVU339
	.uleb128 0
.LLST80:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS81:
	.uleb128 0
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 0
.LLST81:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 56
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x8
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x68
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x8
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x68
	.byte	0x1c
	.byte	0
.LVUS82:
	.uleb128 0
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 0
.LLST82:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x8
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x8
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0
.LVUS83:
	.uleb128 0
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 0
.LLST83:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LFE6566-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU142
.LLST1:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS2:
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU20
	.uleb128 .LVU134
	.uleb128 .LVU136
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 96
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 96
	.byte	0
.LVUS3:
	.uleb128 .LVU9
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU20
	.uleb128 .LVU134
	.uleb128 .LVU136
.LLST3:
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 64
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 64
	.byte	0
.LVUS4:
	.uleb128 .LVU1
	.uleb128 .LVU20
	.uleb128 .LVU134
	.uleb128 .LVU136
.LLST4:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0
.LVUS5:
	.uleb128 .LVU1
	.uleb128 .LVU20
	.uleb128 .LVU125
	.uleb128 .LVU126
	.uleb128 .LVU134
	.uleb128 .LVU136
.LLST5:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x69
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0
.LVUS6:
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL5-1-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0xa
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0xa
	.value	0x80a0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LFE6566-.Ltext0
	.uleb128 0xa
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0xa
	.value	0x80a0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU132
.LLST8:
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x3
	.byte	0x74
	.sleb128 -3
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU29
	.uleb128 .LVU133
.LLST9:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL37-1-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS11:
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU130
.LLST11:
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS13:
	.uleb128 .LVU36
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU130
.LLST13:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 -3
	.byte	0x33
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0
.LVUS14:
	.uleb128 .LVU86
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU115
.LLST14:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0
.LVUS15:
	.uleb128 .LVU87
	.uleb128 .LVU116
.LLST15:
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS16:
	.uleb128 .LVU88
	.uleb128 .LVU114
.LLST16:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS17:
	.uleb128 .LVU92
	.uleb128 .LVU130
.LLST17:
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0
.LVUS18:
	.uleb128 .LVU96
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU126
.LLST18:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x8
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU100
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU126
.LLST19:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x20
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x12
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x12
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU104
	.uleb128 .LVU126
.LLST20:
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS22:
	.uleb128 .LVU43
	.uleb128 .LVU70
.LLST22:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS23:
	.uleb128 .LVU43
	.uleb128 .LVU83
.LLST23:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS24:
	.uleb128 .LVU56
	.uleb128 .LVU86
.LLST24:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0
.LVUS25:
	.uleb128 .LVU61
	.uleb128 .LVU96
.LLST25:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS26:
	.uleb128 .LVU65
	.uleb128 .LVU79
.LLST26:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS27:
	.uleb128 .LVU70
	.uleb128 .LVU88
.LLST27:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS28:
	.uleb128 .LVU79
	.uleb128 .LVU85
.LLST28:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS30:
	.uleb128 .LVU45
	.uleb128 .LVU47
.LLST30:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS31:
	.uleb128 .LVU45
	.uleb128 .LVU47
.LLST31:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x30
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3fe00000
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3fe00000
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3fe00000
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0x3fe00000
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS33:
	.uleb128 .LVU49
	.uleb128 .LVU51
.LLST33:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x30
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS35:
	.uleb128 .LVU51
	.uleb128 .LVU56
.LLST35:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS36:
	.uleb128 .LVU51
	.uleb128 .LVU56
.LLST36:
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x2
	.byte	0x42
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU63
	.uleb128 .LVU65
.LLST38:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS39:
	.uleb128 .LVU63
	.uleb128 .LVU65
.LLST39:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS40:
	.uleb128 .LVU58
	.uleb128 .LVU61
.LLST40:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS41:
	.uleb128 .LVU58
	.uleb128 .LVU61
.LLST41:
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x2
	.byte	0x4e
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST42:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS43:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST43:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS44:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST44:
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0
.LVUS46:
	.uleb128 .LVU72
	.uleb128 .LVU74
.LLST46:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS47:
	.uleb128 .LVU72
	.uleb128 .LVU74
.LLST47:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS49:
	.uleb128 .LVU76
	.uleb128 .LVU81
.LLST49:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS50:
	.uleb128 .LVU79
	.uleb128 .LVU81
.LLST50:
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS51:
	.uleb128 .LVU76
	.uleb128 .LVU81
.LLST51:
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS52:
	.uleb128 .LVU34
	.uleb128 .LVU36
.LLST52:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xa0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS53:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST53:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS54:
	.uleb128 .LVU38
	.uleb128 .LVU41
.LLST54:
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0
.LVUS55:
	.uleb128 .LVU26
	.uleb128 .LVU29
.LLST55:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xa0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS84:
	.uleb128 .LVU313
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU337
	.uleb128 .LVU337
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 0
.LLST84:
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL95-1-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x8
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xa0
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x8
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xa0
	.byte	0x1c
	.byte	0
.LVUS85:
	.uleb128 .LVU320
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 0
.LLST85:
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 112
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0xa
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x77
	.sleb128 48
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS86:
	.uleb128 .LVU324
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU336
.LLST86:
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x3
	.byte	0x77
	.sleb128 120
	.byte	0
.LVUS90:
	.uleb128 .LVU316
	.uleb128 .LVU318
.LLST90:
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS88:
	.uleb128 .LVU297
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU313
.LLST88:
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS91:
	.uleb128 0
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST91:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS92:
	.uleb128 0
	.uleb128 .LVU348
	.uleb128 .LVU348
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU457
	.uleb128 .LVU457
	.uleb128 0
.LLST92:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL133-.Ltext0
	.uleb128 0x5
	.byte	0x7e
	.sleb128 -32928
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS93:
	.uleb128 0
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 0
.LLST93:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS94:
	.uleb128 0
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST94:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS95:
	.uleb128 0
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 0
.LLST95:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL132-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL132-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS96:
	.uleb128 0
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST96:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.byte	0
.LVUS97:
	.uleb128 0
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST97:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS98:
	.uleb128 0
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST98:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS99:
	.uleb128 0
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST99:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL127-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS100:
	.uleb128 .LVU430
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU452
.LLST100:
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS102:
	.uleb128 .LVU346
	.uleb128 .LVU353
.LLST102:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS104:
	.uleb128 .LVU353
	.uleb128 .LVU358
	.uleb128 .LVU401
	.uleb128 .LVU407
.LLST104:
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL121-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS106:
	.uleb128 .LVU361
	.uleb128 .LVU369
	.uleb128 .LVU411
	.uleb128 .LVU417
.LLST106:
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL123-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS108:
	.uleb128 .LVU372
	.uleb128 .LVU378
	.uleb128 .LVU421
	.uleb128 .LVU427
.LLST108:
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LVL126-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0
.LVUS110:
	.uleb128 .LVU432
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU437
	.uleb128 .LVU437
	.uleb128 .LVU448
.LLST110:
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL128-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0xc
	.byte	0x7c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x80a0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0xc
	.byte	0x7c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8088
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x5
	.byte	0x7f
	.sleb128 -32928
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0
.LVUS67:
	.uleb128 0
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 0
.LLST67:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x8
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x8
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0
.LVUS68:
	.uleb128 .LVU274
	.uleb128 .LVU277
.LLST68:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS69:
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU239
	.uleb128 .LVU242
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 0
.LLST69:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 24
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x12
	.byte	0x77
	.sleb128 24
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x17
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x17
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU291
.LLST70:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x10
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 0
.LLST71:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x12
	.byte	0x77
	.sleb128 16
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x17
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL87-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x17
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x8
	.long	0x515a4f1d
	.long	0x3f47e225
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU292
.LLST72:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS74:
	.uleb128 .LVU204
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU252
.LLST74:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0x8
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0xa
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x48
	.byte	0x1c
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS75:
	.uleb128 .LVU276
	.uleb128 .LVU277
.LLST75:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST56:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL52-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL52-1-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 0
.LLST57:
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 .LVU155
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST58:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS59:
	.uleb128 .LVU157
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU167
	.uleb128 .LVU197
	.uleb128 0
.LLST59:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS61:
	.uleb128 .LVU159
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 0
.LLST61:
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS62:
	.uleb128 .LVU161
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST62:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL55-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS64:
	.uleb128 .LVU167
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL7:
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0x4
	.uleb128 .LBB134-.Ltext0
	.uleb128 .LBE134-.Ltext0
	.byte	0x4
	.uleb128 .LBB135-.Ltext0
	.uleb128 .LBE135-.Ltext0
	.byte	0x4
	.uleb128 .LBB136-.Ltext0
	.uleb128 .LBE136-.Ltext0
	.byte	0x4
	.uleb128 .LBB137-.Ltext0
	.uleb128 .LBE137-.Ltext0
	.byte	0
.LLRL10:
	.byte	0x4
	.uleb128 .LBB76-.Ltext0
	.uleb128 .LBE76-.Ltext0
	.byte	0x4
	.uleb128 .LBB125-.Ltext0
	.uleb128 .LBE125-.Ltext0
	.byte	0x4
	.uleb128 .LBB126-.Ltext0
	.uleb128 .LBE126-.Ltext0
	.byte	0x4
	.uleb128 .LBB129-.Ltext0
	.uleb128 .LBE129-.Ltext0
	.byte	0
.LLRL12:
	.byte	0x4
	.uleb128 .LBB77-.Ltext0
	.uleb128 .LBE77-.Ltext0
	.byte	0x4
	.uleb128 .LBB122-.Ltext0
	.uleb128 .LBE122-.Ltext0
	.byte	0x4
	.uleb128 .LBB123-.Ltext0
	.uleb128 .LBE123-.Ltext0
	.byte	0x4
	.uleb128 .LBB124-.Ltext0
	.uleb128 .LBE124-.Ltext0
	.byte	0
.LLRL21:
	.byte	0x4
	.uleb128 .LBB78-.Ltext0
	.uleb128 .LBE78-.Ltext0
	.byte	0x4
	.uleb128 .LBB115-.Ltext0
	.uleb128 .LBE115-.Ltext0
	.byte	0x4
	.uleb128 .LBB116-.Ltext0
	.uleb128 .LBE116-.Ltext0
	.byte	0x4
	.uleb128 .LBB121-.Ltext0
	.uleb128 .LBE121-.Ltext0
	.byte	0
.LLRL29:
	.byte	0x4
	.uleb128 .LBB80-.Ltext0
	.uleb128 .LBE80-.Ltext0
	.byte	0x4
	.uleb128 .LBB88-.Ltext0
	.uleb128 .LBE88-.Ltext0
	.byte	0x4
	.uleb128 .LBB90-.Ltext0
	.uleb128 .LBE90-.Ltext0
	.byte	0
.LLRL32:
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0x4
	.uleb128 .LBB89-.Ltext0
	.uleb128 .LBE89-.Ltext0
	.byte	0x4
	.uleb128 .LBB91-.Ltext0
	.uleb128 .LBE91-.Ltext0
	.byte	0
.LLRL34:
	.byte	0x4
	.uleb128 .LBB92-.Ltext0
	.uleb128 .LBE92-.Ltext0
	.byte	0x4
	.uleb128 .LBB98-.Ltext0
	.uleb128 .LBE98-.Ltext0
	.byte	0
.LLRL37:
	.byte	0x4
	.uleb128 .LBB95-.Ltext0
	.uleb128 .LBE95-.Ltext0
	.byte	0x4
	.uleb128 .LBB101-.Ltext0
	.uleb128 .LBE101-.Ltext0
	.byte	0
.LLRL45:
	.byte	0x4
	.uleb128 .LBB104-.Ltext0
	.uleb128 .LBE104-.Ltext0
	.byte	0x4
	.uleb128 .LBB110-.Ltext0
	.uleb128 .LBE110-.Ltext0
	.byte	0
.LLRL48:
	.byte	0x4
	.uleb128 .LBB107-.Ltext0
	.uleb128 .LBE107-.Ltext0
	.byte	0x4
	.uleb128 .LBB111-.Ltext0
	.uleb128 .LBE111-.Ltext0
	.byte	0
.LLRL60:
	.byte	0x4
	.uleb128 .LBB138-.Ltext0
	.uleb128 .LBE138-.Ltext0
	.byte	0x4
	.uleb128 .LBB142-.Ltext0
	.uleb128 .LBE142-.Ltext0
	.byte	0x4
	.uleb128 .LBB143-.Ltext0
	.uleb128 .LBE143-.Ltext0
	.byte	0
.LLRL63:
	.byte	0x4
	.uleb128 .LBB140-.Ltext0
	.uleb128 .LBE140-.Ltext0
	.byte	0x4
	.uleb128 .LBB141-.Ltext0
	.uleb128 .LBE141-.Ltext0
	.byte	0
.LLRL73:
	.byte	0x4
	.uleb128 .LBB144-.Ltext0
	.uleb128 .LBE144-.Ltext0
	.byte	0x4
	.uleb128 .LBB145-.Ltext0
	.uleb128 .LBE145-.Ltext0
	.byte	0
.LLRL87:
	.byte	0x4
	.uleb128 .LBB147-.Ltext0
	.uleb128 .LBE147-.Ltext0
	.byte	0x4
	.uleb128 .LBB151-.Ltext0
	.uleb128 .LBE151-.Ltext0
	.byte	0x4
	.uleb128 .LBB155-.Ltext0
	.uleb128 .LBE155-.Ltext0
	.byte	0
.LLRL89:
	.byte	0x4
	.uleb128 .LBB152-.Ltext0
	.uleb128 .LBE152-.Ltext0
	.byte	0x4
	.uleb128 .LBB153-.Ltext0
	.uleb128 .LBE153-.Ltext0
	.byte	0x4
	.uleb128 .LBB154-.Ltext0
	.uleb128 .LBE154-.Ltext0
	.byte	0x4
	.uleb128 .LBB156-.Ltext0
	.uleb128 .LBE156-.Ltext0
	.byte	0
.LLRL101:
	.byte	0x4
	.uleb128 .LBB158-.Ltext0
	.uleb128 .LBE158-.Ltext0
	.byte	0x4
	.uleb128 .LBB185-.Ltext0
	.uleb128 .LBE185-.Ltext0
	.byte	0
.LLRL103:
	.byte	0x4
	.uleb128 .LBB159-.Ltext0
	.uleb128 .LBE159-.Ltext0
	.byte	0x4
	.uleb128 .LBB170-.Ltext0
	.uleb128 .LBE170-.Ltext0
	.byte	0x4
	.uleb128 .LBB179-.Ltext0
	.uleb128 .LBE179-.Ltext0
	.byte	0x4
	.uleb128 .LBB180-.Ltext0
	.uleb128 .LBE180-.Ltext0
	.byte	0
.LLRL105:
	.byte	0x4
	.uleb128 .LBB164-.Ltext0
	.uleb128 .LBE164-.Ltext0
	.byte	0x4
	.uleb128 .LBB171-.Ltext0
	.uleb128 .LBE171-.Ltext0
	.byte	0x4
	.uleb128 .LBB177-.Ltext0
	.uleb128 .LBE177-.Ltext0
	.byte	0x4
	.uleb128 .LBB181-.Ltext0
	.uleb128 .LBE181-.Ltext0
	.byte	0x4
	.uleb128 .LBB182-.Ltext0
	.uleb128 .LBE182-.Ltext0
	.byte	0
.LLRL107:
	.byte	0x4
	.uleb128 .LBB172-.Ltext0
	.uleb128 .LBE172-.Ltext0
	.byte	0x4
	.uleb128 .LBB178-.Ltext0
	.uleb128 .LBE178-.Ltext0
	.byte	0x4
	.uleb128 .LBB183-.Ltext0
	.uleb128 .LBE183-.Ltext0
	.byte	0x4
	.uleb128 .LBB184-.Ltext0
	.uleb128 .LBE184-.Ltext0
	.byte	0
.LLRL109:
	.byte	0x4
	.uleb128 .LBB186-.Ltext0
	.uleb128 .LBE186-.Ltext0
	.byte	0x4
	.uleb128 .LBB187-.Ltext0
	.uleb128 .LBE187-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"fxyz"
.LASF34:
	.string	"cbrt"
.LASF72:
	.string	"__builtin_GOMP_loop_end_nowait"
.LASF45:
	.string	"r_xyz"
.LASF30:
	.string	"rij2"
.LASF68:
	.string	"__builtin_GOMP_loop_nonmonotonic_dynamic_start"
.LASF57:
	.string	"nucells"
.LASF23:
	.string	"temp"
.LASF8:
	.string	"short int"
.LASF75:
	.string	"GOMP_atomic_end"
.LASF81:
	.string	"omp_set_num_threads"
.LASF77:
	.string	"GOMP_parallel"
.LASF60:
	.string	"_mm256_cmp_pd"
.LASF13:
	.string	"long double"
.LASF31:
	.string	"r2inv"
.LASF43:
	.string	"minimum_image"
.LASF32:
	.string	"r6inv"
.LASF67:
	.string	"__builtin_memset"
.LASF79:
	.ascii	"GNU C11 14.2.0 -march=znver3 -mmmx -mpopcnt -msse -msse2 -ms"
	.ascii	"se3 -mssse3 -msse4.1 -msse4.2 -mavx2 -msse4a -mno-fma4 -mno-"
	.ascii	"xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx5"
	.ascii	"12vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vb"
	.ascii	"mi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mn"
	.ascii	"o-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-a"
	.ascii	"vx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mn"
	.ascii	"o-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -"
	.ascii	"mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mm"
	.ascii	"ovbe -mno-movdir64b -mno-movdiri -mmwaitx -mno-pconfig -mpku"
	.ascii	" -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mn"
	.ascii	"o-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -m"
	.ascii	"vaes -mno-waitpkg -mwbnoinvd -mxsave -mxsavec -mxsaveopt -mx"
	.ascii	"saves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -"
	.ascii	"mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 "
	.ascii	"-mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxa"
	.ascii	"dd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex"
	.ascii	" -mno-avxv"
	.string	"nniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -mavx -g -O2 -std=c11 -funsafe-math-optimizations -fopenmp -ffast-math -fasynchronous-unwind-tables"
.LASF82:
	.string	"rand"
.LASF37:
	.string	"vxyz"
.LASF52:
	.string	"init_vel"
.LASF16:
	.string	"__m256d"
.LASF39:
	.string	"sumv2"
.LASF59:
	.string	"_mm256_loadu_pd"
.LASF11:
	.string	"float"
.LASF12:
	.string	"long long int"
.LASF4:
	.string	"unsigned char"
.LASF62:
	.string	"_mm256_mul_pd"
.LASF10:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF3:
	.string	"long unsigned int"
.LASF64:
	.string	"_mm256_add_pd"
.LASF66:
	.string	"GOMP_loop_nonmonotonic_dynamic_start"
.LASF78:
	.string	"__builtin_GOMP_parallel"
.LASF70:
	.string	"__builtin_GOMP_loop_nonmonotonic_dynamic_next"
.LASF41:
	.string	"cordi"
.LASF49:
	.string	"result1"
.LASF51:
	.string	"result2"
.LASF58:
	.string	"_mm256_set1_pd"
.LASF73:
	.string	"GOMP_atomic_start"
.LASF7:
	.string	"signed char"
.LASF14:
	.string	"long long unsigned int"
.LASF6:
	.string	"unsigned int"
.LASF53:
	.string	"sumvx"
.LASF54:
	.string	"sumvy"
.LASF55:
	.string	"sumvz"
.LASF63:
	.string	"_mm256_blendv_pd"
.LASF26:
	.string	"pres_vir"
.LASF50:
	.string	"result_cordi"
.LASF15:
	.string	"__v4df"
.LASF28:
	.string	"xyz_i"
.LASF29:
	.string	"xyz_j"
.LASF76:
	.string	"__builtin_GOMP_atomic_end"
.LASF40:
	.string	"forces._omp_fn.0"
.LASF83:
	.string	"_mm256_setzero_pd"
.LASF61:
	.string	"_mm256_sub_pd"
.LASF5:
	.string	"short unsigned int"
.LASF36:
	.string	"velocity_verlet"
.LASF71:
	.string	"GOMP_loop_end_nowait"
.LASF2:
	.string	"double"
.LASF56:
	.string	"init_pos"
.LASF44:
	.string	"v_cordi"
.LASF33:
	.string	"sqrt"
.LASF27:
	.string	"epot2"
.LASF17:
	.string	"_Float16"
.LASF25:
	.string	"rcut2"
.LASF80:
	.string	"__m256d_u"
.LASF74:
	.string	"__builtin_GOMP_atomic_start"
.LASF42:
	.string	"cell_length"
.LASF65:
	.string	"memset"
.LASF47:
	.string	"mask1"
.LASF48:
	.string	"mask2"
.LASF18:
	.string	"__bf16"
.LASF19:
	.string	"rxyz"
.LASF69:
	.string	"GOMP_loop_nonmonotonic_dynamic_next"
.LASF22:
	.string	"pres"
.LASF38:
	.string	"ekin"
.LASF24:
	.string	"L256"
.LASF35:
	.string	"forces"
.LASF21:
	.string	"epot"
.LASF46:
	.string	"v_half_cell_length"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"core.c"
.LASF1:
	.string	"/users/cp2025/cp2025_093/lab3/lab1"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
