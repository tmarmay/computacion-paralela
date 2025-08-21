	.file	"viz.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_093/lab3/lab1" "viz.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"%f\t%f\t%f\t%f\n"
	.text
	.p2align 4
	.type	idle_func, @function
idle_func:
.LFB15:
	.file 1 "viz.c"
	.loc 1 130 1 view -0
	.cfi_startproc
	.loc 1 132 5 view .LVU1
	.loc 1 130 1 is_stmt 0 view .LVU2
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x70,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	.cfi_escape 0x10,0x3,0x2,0x76,0x60
	.loc 1 132 18 view .LVU3
	movl	switcher(%rip), %eax
	.loc 1 132 8 view .LVU4
	cmpl	$3, %eax
	je	.L25
	.loc 1 147 12 is_stmt 1 view .LVU5
	.loc 1 147 15 is_stmt 0 view .LVU6
	cmpl	$2, %eax
	je	.L26
	.loc 1 175 12 is_stmt 1 view .LVU7
	.loc 1 175 15 is_stmt 0 view .LVU8
	cmpl	$1, %eax
	je	.L27
	.loc 1 200 12 is_stmt 1 view .LVU9
	.loc 1 200 15 is_stmt 0 view .LVU10
	testl	%eax, %eax
	jne	.L3
	.loc 1 202 29 is_stmt 1 view .LVU11
	imull	$652835029, frames(%rip), %eax
	addl	$17179868, %eax
	rorx	$2, %eax, %eax
	cmpl	$8589934, %eax
	jbe	.L14
	vmovsd	.LC12(%rip), %xmm6
	.loc 1 204 13 is_stmt 0 view .LVU12
	movq	vxyz(%rip), %rsi
	leaq	Temp(%rip), %r12
	leaq	Epot(%rip), %rbx
	vmovq	%xmm6, %r14
.L13:
	.loc 1 204 13 is_stmt 1 view .LVU13
	subq	$8, %rsp
	movq	%rbx, %rcx
	leaq	Pres(%rip), %r9
	leaq	Ekin(%rip), %r8
	pushq	%r12
	vmovsd	V(%rip), %xmm1
	vmovsd	box_size(%rip), %xmm2
	vmovsd	Rho(%rip), %xmm0
	movq	fxyz(%rip), %rdx
	movq	rxyz(%rip), %rdi
	call	velocity_verlet@PLT
.LVL0:
	.loc 1 207 13 view .LVU14
	.loc 1 207 18 is_stmt 0 view .LVU15
	vmovq	%r14, %xmm5
	vdivsd	Temp(%rip), %xmm5, %xmm1
.LBB4:
	.loc 1 209 21 view .LVU16
	movq	vxyz(%rip), %rsi
	popq	%rcx
	popq	%rdi
	movq	%rsi, %rax
	leaq	32928(%rsi), %rdx
.LBE4:
	.loc 1 207 18 view .LVU17
	vsqrtsd	%xmm1, %xmm1, %xmm1
	.loc 1 208 13 is_stmt 1 view .LVU18
.LBB5:
	.loc 1 208 18 view .LVU19
.LVL1:
	.loc 1 208 31 discriminator 1 view .LVU20
	vbroadcastsd	%xmm1, %ymm1
.LVL2:
	.loc 1 208 31 is_stmt 0 discriminator 1 view .LVU21
	.p2align 5
	.p2align 4
	.p2align 3
.L12:
	.loc 1 209 17 is_stmt 1 view .LVU22
	.loc 1 209 25 is_stmt 0 view .LVU23
	vmulpd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovupd	%ymm0, -32(%rax)
	.loc 1 208 44 is_stmt 1 discriminator 3 view .LVU24
	.loc 1 208 31 discriminator 1 view .LVU25
	cmpq	%rax, %rdx
	jne	.L12
.LBE5:
	.loc 1 212 13 view .LVU26
	.loc 1 212 19 is_stmt 0 view .LVU27
	movl	frames(%rip), %eax
	incl	%eax
	movl	%eax, frames(%rip)
	.loc 1 202 29 is_stmt 1 view .LVU28
	.loc 1 212 19 is_stmt 0 view .LVU29
	imull	$652835029, %eax, %eax
	addl	$17179868, %eax
	rorx	$2, %eax, %eax
	.loc 1 202 29 view .LVU30
	cmpl	$8589934, %eax
	jbe	.L28
	vzeroupper
.LVL3:
	jmp	.L13
.L27:
	.loc 1 177 9 is_stmt 1 view .LVU31
.LBB6:
	.loc 1 177 14 view .LVU32
	vmovsd	.LC12(%rip), %xmm7
	.loc 1 177 18 is_stmt 0 view .LVU33
	movl	frames(%rip), %r13d
.LVL4:
	.loc 1 177 32 is_stmt 1 discriminator 1 view .LVU34
	leaq	Temp(%rip), %r12
	leaq	Epot(%rip), %rbx
.LBE6:
	.loc 1 204 13 is_stmt 0 view .LVU35
	movq	vxyz(%rip), %rsi
	vmovq	%xmm7, %r14
	.p2align 4
	.p2align 3
.L9:
.LBB9:
	.loc 1 179 13 is_stmt 1 view .LVU36
	subq	$8, %rsp
	leaq	Pres(%rip), %r9
	leaq	Ekin(%rip), %r8
	movq	%rbx, %rcx
	pushq	%r12
	vmovsd	V(%rip), %xmm1
	vmovsd	box_size(%rip), %xmm2
	vmovsd	Rho(%rip), %xmm0
	movq	fxyz(%rip), %rdx
	movq	rxyz(%rip), %rdi
	call	velocity_verlet@PLT
.LVL5:
	.loc 1 182 13 view .LVU37
	.loc 1 182 18 is_stmt 0 view .LVU38
	vmovq	%r14, %xmm4
	vdivsd	Temp(%rip), %xmm4, %xmm1
.LBB7:
	.loc 1 184 21 view .LVU39
	movq	vxyz(%rip), %rsi
	popq	%r8
	popq	%r9
	movq	%rsi, %rax
	leaq	32928(%rsi), %rdx
.LBE7:
	.loc 1 182 18 view .LVU40
	vsqrtsd	%xmm1, %xmm1, %xmm1
	.loc 1 183 13 is_stmt 1 view .LVU41
.LBB8:
	.loc 1 183 18 view .LVU42
.LVL6:
	.loc 1 183 31 discriminator 1 view .LVU43
	vbroadcastsd	%xmm1, %ymm1
.LVL7:
	.loc 1 183 31 is_stmt 0 discriminator 1 view .LVU44
	.p2align 5
	.p2align 4
	.p2align 3
.L8:
	.loc 1 184 17 is_stmt 1 view .LVU45
	.loc 1 184 25 is_stmt 0 view .LVU46
	vmulpd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovupd	%ymm0, -32(%rax)
	.loc 1 183 44 is_stmt 1 discriminator 3 view .LVU47
	.loc 1 183 31 discriminator 1 view .LVU48
	cmpq	%rax, %rdx
	jne	.L8
.LBE8:
	.loc 1 177 48 discriminator 2 view .LVU49
	.loc 1 177 32 is_stmt 0 discriminator 1 view .LVU50
	movl	frames(%rip), %eax
	.loc 1 177 48 discriminator 2 view .LVU51
	incl	%r13d
.LVL8:
	.loc 1 177 32 is_stmt 1 discriminator 1 view .LVU52
	leal	9(%rax), %edx
	cmpl	%r13d, %edx
	jl	.L29
	vzeroupper
.LVL9:
	jmp	.L9
.LVL10:
.L28:
	.loc 1 177 32 is_stmt 0 discriminator 1 view .LVU53
	vzeroupper
.LVL11:
.L14:
.LBE9:
	.loc 1 215 9 is_stmt 1 view .LVU54
	.loc 1 215 13 is_stmt 0 view .LVU55
	movl	$0, mes(%rip)
	.loc 1 216 9 is_stmt 1 view .LVU56
	.loc 1 216 15 is_stmt 0 view .LVU57
	movq	$0x000000000, epotm(%rip)
	.loc 1 217 9 is_stmt 1 view .LVU58
	.loc 1 217 15 is_stmt 0 view .LVU59
	movq	$0x000000000, presm(%rip)
	.loc 1 219 9 is_stmt 1 view .LVU60
	.loc 1 219 18 is_stmt 0 view .LVU61
	movl	$1, switcher(%rip)
.L3:
	.loc 1 221 5 is_stmt 1 view .LVU62
	movl	win_id(%rip), %edi
	call	glutSetWindow@PLT
.LVL12:
	.loc 1 222 5 view .LVU63
	.loc 1 223 1 is_stmt 0 view .LVU64
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	.loc 1 222 5 view .LVU65
	jmp	glutPostRedisplay@PLT
.LVL13:
.L29:
	.cfi_restore_state
	.loc 1 188 9 is_stmt 1 view .LVU66
	.loc 1 188 14 is_stmt 0 view .LVU67
	vmovsd	Epot(%rip), %xmm1
	.loc 1 189 14 view .LVU68
	vmovsd	Pres(%rip), %xmm0
	.loc 1 195 16 view .LVU69
	addl	$10, %eax
	.loc 1 188 14 view .LVU70
	vaddsd	Etail(%rip), %xmm1, %xmm1
	.loc 1 189 14 view .LVU71
	vaddsd	Ptail(%rip), %xmm0, %xmm0
	.loc 1 195 16 view .LVU72
	movl	%eax, frames(%rip)
	imull	$652835029, %eax, %eax
	.loc 1 193 12 view .LVU73
	incl	mes(%rip)
	.loc 1 195 16 view .LVU74
	addl	$17179856, %eax
	rorx	$4, %eax, %eax
	.loc 1 188 14 view .LVU75
	vmovsd	%xmm1, Epot(%rip)
	.loc 1 189 9 is_stmt 1 view .LVU76
	.loc 1 189 14 is_stmt 0 view .LVU77
	vmovsd	%xmm0, Pres(%rip)
	.loc 1 191 9 is_stmt 1 view .LVU78
	.loc 1 191 15 is_stmt 0 view .LVU79
	vaddsd	epotm(%rip), %xmm1, %xmm1
	.loc 1 192 15 view .LVU80
	vaddsd	presm(%rip), %xmm0, %xmm0
	.loc 1 191 15 view .LVU81
	vmovsd	%xmm1, epotm(%rip)
	.loc 1 192 9 is_stmt 1 view .LVU82
	.loc 1 192 15 is_stmt 0 view .LVU83
	vmovsd	%xmm0, presm(%rip)
	.loc 1 193 9 is_stmt 1 view .LVU84
	.loc 1 195 9 view .LVU85
	.loc 1 196 9 view .LVU86
	.loc 1 196 12 is_stmt 0 view .LVU87
	cmpl	$2147482, %eax
	ja	.L21
	.loc 1 197 13 is_stmt 1 view .LVU88
	.loc 1 197 22 is_stmt 0 view .LVU89
	movl	$2, switcher(%rip)
	vzeroupper
.LVL14:
	jmp	.L3
.LVL15:
.L25:
	.loc 1 134 9 is_stmt 1 view .LVU90
	.loc 1 135 11 is_stmt 0 view .LVU91
	movq	.LC1(%rip), %rax
	.loc 1 134 13 view .LVU92
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 142 9 view .LVU93
	leaq	Temp(%rip), %rbx
	.loc 1 141 9 view .LVU94
	movq	rxyz(%rip), %rdi
	.loc 1 135 11 view .LVU95
	movq	%rax, V(%rip)
	.loc 1 136 18 discriminator 1 view .LVU96
	movq	.LC2(%rip), %rax
	movq	%rax, box_size(%rip)
	.loc 1 138 15 view .LVU97
	movq	.LC3(%rip), %rax
	.loc 1 134 13 view .LVU98
	vmovsd	%xmm0, Rho(%rip)
	.loc 1 135 9 is_stmt 1 view .LVU99
	.loc 1 136 9 view .LVU100
	.loc 1 137 9 view .LVU101
	.loc 1 138 9 view .LVU102
	.loc 1 138 15 is_stmt 0 view .LVU103
	movq	%rax, Etail(%rip)
	.loc 1 139 9 is_stmt 1 view .LVU104
	.loc 1 139 15 is_stmt 0 view .LVU105
	movq	.LC4(%rip), %rax
	movq	%rax, Ptail(%rip)
	.loc 1 141 9 is_stmt 1 view .LVU106
	call	init_pos@PLT
.LVL16:
	.loc 1 142 9 view .LVU107
	movq	vxyz(%rip), %rdi
	leaq	Ekin(%rip), %rdx
	movq	%rbx, %rsi
	call	init_vel@PLT
.LVL17:
	.loc 1 143 9 view .LVU108
	vmovsd	box_size(%rip), %xmm2
	movq	%rbx, %r8
	leaq	Pres(%rip), %rcx
	vmovsd	V(%rip), %xmm1
	vmovsd	Rho(%rip), %xmm0
	leaq	Epot(%rip), %rdx
	movq	fxyz(%rip), %rsi
	movq	rxyz(%rip), %rdi
	call	forces@PLT
.LVL18:
	.loc 1 145 9 view .LVU109
	.loc 1 145 18 is_stmt 0 view .LVU110
	movl	$0, switcher(%rip)
	jmp	.L3
.LVL19:
.L21:
	.loc 1 145 18 view .LVU111
	vzeroupper
.LVL20:
	jmp	.L3
.LVL21:
.L26:
	.loc 1 149 9 is_stmt 1 view .LVU112
	vmovsd	presm(%rip), %xmm3
	vmovsd	epotm(%rip), %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	.LC5(%rip), %rdi
	.loc 1 150 24 is_stmt 0 view .LVU113
	vcvtsi2sdl	mes(%rip), %xmm0, %xmm0
	.loc 1 149 9 view .LVU114
	vmovsd	V(%rip), %xmm1
	movl	$4, %eax
	vdivsd	%xmm0, %xmm3, %xmm3
	vdivsd	%xmm0, %xmm2, %xmm2
	vmovsd	Rho(%rip), %xmm0
	call	printf@PLT
.LVL22:
	.loc 1 152 9 is_stmt 1 view .LVU115
	.loc 1 152 14 is_stmt 0 view .LVU116
	vmovsd	Rho(%rip), %xmm2
	.loc 1 153 9 is_stmt 1 view .LVU117
	.loc 1 153 19 is_stmt 0 view .LVU118
	vsubsd	.LC6(%rip), %xmm2, %xmm1
	.loc 1 156 26 view .LVU119
	vmovsd	.LC7(%rip), %xmm6
	.loc 1 153 19 view .LVU120
	vmovsd	%xmm2, -64(%rbp)
	.loc 1 156 26 view .LVU121
	vdivsd	%xmm1, %xmm6, %xmm0
	.loc 1 153 13 view .LVU122
	vmovsd	%xmm1, Rho(%rip)
	.loc 1 156 9 is_stmt 1 view .LVU123
	.loc 1 156 26 is_stmt 0 view .LVU124
	vmovsd	%xmm1, -56(%rbp)
	.loc 1 156 11 view .LVU125
	vmovsd	%xmm0, V(%rip)
	.loc 1 157 9 is_stmt 1 view .LVU126
	.loc 1 157 20 is_stmt 0 view .LVU127
	call	cbrt@PLT
.LVL23:
	.loc 1 158 79 view .LVU128
	vmovsd	-56(%rbp), %xmm1
	.loc 1 157 18 discriminator 1 view .LVU129
	vmovsd	%xmm0, box_size(%rip)
	.loc 1 158 9 is_stmt 1 view .LVU130
	.loc 1 158 79 is_stmt 0 view .LVU131
	vmulsd	.LC8(%rip), %xmm1, %xmm0
	.loc 1 159 9 is_stmt 1 view .LVU132
	.loc 1 162 14 is_stmt 0 view .LVU133
	vmovsd	-64(%rbp), %xmm2
	.loc 1 159 22 view .LVU134
	vmulsd	.LC7(%rip), %xmm0, %xmm3
	.loc 1 160 22 view .LVU135
	vmulsd	%xmm0, %xmm1, %xmm0
	.loc 1 160 15 view .LVU136
	vmovsd	%xmm0, Ptail(%rip)
	.loc 1 162 14 view .LVU137
	vdivsd	%xmm1, %xmm2, %xmm0
	.loc 1 159 15 view .LVU138
	vmovsd	%xmm3, Etail(%rip)
	.loc 1 160 9 is_stmt 1 view .LVU139
	.loc 1 162 9 view .LVU140
	.loc 1 162 14 is_stmt 0 view .LVU141
	call	cbrt@PLT
.LVL24:
	.loc 1 163 9 is_stmt 1 view .LVU142
.LBB10:
	.loc 1 163 14 view .LVU143
	.loc 1 163 27 discriminator 1 view .LVU144
	movq	rxyz(%rip), %rax
	vbroadcastsd	%xmm0, %ymm1
	leaq	32928(%rax), %rdx
.LVL25:
	.loc 1 163 27 is_stmt 0 discriminator 1 view .LVU145
	.p2align 5
	.p2align 4
	.p2align 3
.L5:
	.loc 1 164 13 is_stmt 1 view .LVU146
	.loc 1 164 21 is_stmt 0 view .LVU147
	vmulpd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovupd	%ymm0, -32(%rax)
	.loc 1 163 40 is_stmt 1 discriminator 3 view .LVU148
	.loc 1 163 27 discriminator 1 view .LVU149
	cmpq	%rdx, %rax
	jne	.L5
.LBE10:
	.loc 1 166 9 view .LVU150
	movq	vxyz(%rip), %rdi
	leaq	Temp(%rip), %rbx
	leaq	Ekin(%rip), %rdx
	vzeroupper
.LVL26:
	movq	%rbx, %rsi
	call	init_vel@PLT
.LVL27:
	.loc 1 167 9 view .LVU151
	vmovsd	V(%rip), %xmm1
	movq	%rbx, %r8
	leaq	Pres(%rip), %rcx
	vmovsd	Rho(%rip), %xmm0
	vmovsd	box_size(%rip), %xmm2
	leaq	Epot(%rip), %rdx
	movq	fxyz(%rip), %rsi
	movq	rxyz(%rip), %rdi
	call	forces@PLT
.LVL28:
	.loc 1 169 9 view .LVU152
	.loc 1 170 22 is_stmt 0 view .LVU153
	vmovsd	Rho(%rip), %xmm0
	.loc 1 169 18 view .LVU154
	movl	$0, switcher(%rip)
	.loc 1 170 9 is_stmt 1 view .LVU155
	.loc 1 170 22 is_stmt 0 view .LVU156
	vsubsd	.LC9(%rip), %xmm0, %xmm0
	.loc 1 170 12 view .LVU157
	vmovsd	.LC11(%rip), %xmm1
	.loc 1 170 13 view .LVU158
	vandpd	.LC10(%rip), %xmm0, %xmm0
	.loc 1 170 12 view .LVU159
	vcomisd	%xmm0, %xmm1
	jbe	.L3
	.loc 1 171 13 is_stmt 1 view .LVU160
	movl	$10, %edi
	call	putchar@PLT
.LVL29:
	.loc 1 172 13 view .LVU161
	.loc 1 172 22 is_stmt 0 view .LVU162
	movl	$3, switcher(%rip)
	jmp	.L3
	.cfi_endproc
.LFE15:
	.size	idle_func, .-idle_func
	.p2align 4
	.type	pre_display, @function
pre_display:
.LFB12:
	.loc 1 24 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 25 5 view .LVU164
	.loc 1 24 1 is_stmt 0 view .LVU165
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 25 5 view .LVU166
	movl	$5889, %edi
	call	glMatrixMode@PLT
.LVL30:
	.loc 1 26 5 is_stmt 1 view .LVU167
	call	glLoadIdentity@PLT
.LVL31:
	.loc 1 28 5 view .LVU168
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	.LC14(%rip), %xmm1
	vmovsd	.LC15(%rip), %xmm0
	vmovapd	%xmm1, %xmm2
	call	gluPerspective@PLT
.LVL32:
	.loc 1 29 5 view .LVU169
	vmovsd	.LC14(%rip), %xmm1
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovsd	.LC16(%rip), %xmm3
	pushq	$0
	.cfi_def_cfa_offset 32
	vmovapd	%xmm1, %xmm6
	vmovapd	%xmm1, %xmm2
	vmovapd	%xmm1, %xmm0
	vmovapd	%xmm3, %xmm5
	vmovapd	%xmm3, %xmm4
	call	gluLookAt@PLT
.LVL33:
	.loc 1 31 5 view .LVU170
	movl	$5888, %edi
	call	glMatrixMode@PLT
.LVL34:
	.loc 1 32 5 view .LVU171
	call	glLoadIdentity@PLT
.LVL35:
	.loc 1 34 5 view .LVU172
	vxorps	%xmm2, %xmm2, %xmm2
	vmovss	.LC17(%rip), %xmm3
	vmovaps	%xmm2, %xmm1
	vmovaps	%xmm2, %xmm0
	call	glClearColor@PLT
.LVL36:
	.loc 1 35 5 view .LVU173
	movl	$16384, %edi
	.loc 1 36 1 is_stmt 0 view .LVU174
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	.loc 1 35 5 view .LVU175
	jmp	glClear@PLT
.LVL37:
	.cfi_endproc
.LFE12:
	.size	pre_display, .-pre_display
	.p2align 4
	.type	display_func, @function
display_func:
.LFB16:
	.loc 1 227 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 228 5 view .LVU177
	.loc 1 227 1 is_stmt 0 view .LVU178
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
	.loc 1 228 5 view .LVU179
	call	pre_display
.LVL38:
	.loc 1 229 5 is_stmt 1 view .LVU180
.LBB15:
.LBI15:
	.loc 1 45 13 view .LVU181
.LBB16:
	.loc 1 47 5 view .LVU182
	.loc 1 49 5 view .LVU183
	.loc 1 52 5 view .LVU184
	movl	$1, %edi
	call	glBegin@PLT
.LVL39:
	.loc 1 54 5 view .LVU185
	.loc 1 54 12 is_stmt 0 view .LVU186
	vmovsd	.LC19(%rip), %xmm3
	.loc 1 55 5 view .LVU187
	vxorpd	%xmm1, %xmm1, %xmm1
	.loc 1 54 12 view .LVU188
	vmulsd	box_size(%rip), %xmm3, %xmm7
	.loc 1 55 5 view .LVU189
	vmovsd	.LC14(%rip), %xmm2
	vmovapd	%xmm1, %xmm0
	.loc 1 54 12 view .LVU190
	vmovq	%xmm7, %rbx
.LVL40:
	.loc 1 55 5 is_stmt 1 view .LVU191
	call	glColor3d@PLT
.LVL41:
	.loc 1 57 5 view .LVU192
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL42:
	.loc 1 58 5 view .LVU193
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovq	%rbx, %xmm2
	vmovapd	%xmm1, %xmm0
	call	glVertex3d@PLT
.LVL43:
	.loc 1 60 5 view .LVU194
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL44:
	.loc 1 61 5 view .LVU195
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL45:
	.loc 1 63 5 view .LVU196
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL46:
	.loc 1 64 5 view .LVU197
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm0
	vmovapd	%xmm2, %xmm1
	call	glVertex3d@PLT
.LVL47:
	.loc 1 66 5 view .LVU198
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	call	glVertex3d@PLT
.LVL48:
	.loc 1 67 5 view .LVU199
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	call	glVertex3d@PLT
.LVL49:
	.loc 1 69 5 view .LVU200
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	call	glVertex3d@PLT
.LVL50:
	.loc 1 70 5 view .LVU201
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	call	glVertex3d@PLT
.LVL51:
	.loc 1 72 5 view .LVU202
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	call	glVertex3d@PLT
.LVL52:
	.loc 1 73 5 view .LVU203
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	glVertex3d@PLT
.LVL53:
	.loc 1 75 5 view .LVU204
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL54:
	.loc 1 76 5 view .LVU205
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	call	glVertex3d@PLT
.LVL55:
	.loc 1 78 5 view .LVU206
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	glVertex3d@PLT
.LVL56:
	.loc 1 79 5 view .LVU207
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovq	%rbx, %xmm2
	vmovapd	%xmm1, %xmm0
	call	glVertex3d@PLT
.LVL57:
	.loc 1 81 5 view .LVU208
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	call	glVertex3d@PLT
.LVL58:
	.loc 1 82 5 view .LVU209
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm0
	vmovapd	%xmm2, %xmm1
	call	glVertex3d@PLT
.LVL59:
	.loc 1 84 5 view .LVU210
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	call	glVertex3d@PLT
.LVL60:
	.loc 1 85 5 view .LVU211
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovq	%rbx, %xmm2
	vmovapd	%xmm1, %xmm0
	call	glVertex3d@PLT
.LVL61:
	.loc 1 87 5 view .LVU212
	vmovq	%rbx, %xmm2
	vmovq	%rbx, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	call	glVertex3d@PLT
.LVL62:
	.loc 1 88 5 view .LVU213
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm1
	vmovapd	%xmm2, %xmm0
	call	glVertex3d@PLT
.LVL63:
	.loc 1 90 5 view .LVU214
	vmovq	%rbx, %xmm1
	vmovq	%rbx, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	call	glVertex3d@PLT
.LVL64:
	.loc 1 91 5 view .LVU215
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%rbx, %xmm0
	.loc 1 98 5 is_stmt 0 view .LVU216
	xorl	%ebx, %ebx
.LVL65:
	.loc 1 91 5 view .LVU217
	vmovapd	%xmm2, %xmm1
	call	glVertex3d@PLT
.LVL66:
	.loc 1 93 5 is_stmt 1 view .LVU218
	call	glEnd@PLT
.LVL67:
	.loc 1 98 5 view .LVU219
	xorl	%edi, %edi
	call	glBegin@PLT
.LVL68:
	.loc 1 100 5 view .LVU220
	.loc 1 102 5 view .LVU221
	.loc 1 103 5 view .LVU222
	.loc 1 104 5 view .LVU223
	.loc 1 106 5 view .LVU224
	.loc 1 106 21 discriminator 1 view .LVU225
	.loc 1 98 5 is_stmt 0 view .LVU226
	vmovsd	.LC19(%rip), %xmm3
.LVL69:
	.p2align 4
	.p2align 3
.L33:
	.loc 1 107 9 is_stmt 1 view .LVU227
	.loc 1 107 19 is_stmt 0 view .LVU228
	movq	rxyz(%rip), %rax
	.loc 1 111 9 view .LVU229
	vmovsd	.LC14(%rip), %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovapd	%xmm2, %xmm0
	.loc 1 107 12 view .LVU230
	vmulsd	(%rax,%rbx), %xmm3, %xmm4
	.loc 1 108 12 view .LVU231
	vmulsd	8(%rax,%rbx), %xmm3, %xmm5
	.loc 1 109 12 view .LVU232
	vmulsd	16(%rax,%rbx), %xmm3, %xmm6
	.loc 1 106 21 discriminator 1 view .LVU233
	addq	$24, %rbx
.LVL70:
	.loc 1 107 12 view .LVU234
	vmovq	%xmm4, %rbp
.LVL71:
	.loc 1 108 9 is_stmt 1 view .LVU235
	.loc 1 108 12 is_stmt 0 view .LVU236
	vmovq	%xmm5, %r12
.LVL72:
	.loc 1 109 9 is_stmt 1 view .LVU237
	.loc 1 109 12 is_stmt 0 view .LVU238
	vmovq	%xmm6, %r13
.LVL73:
	.loc 1 111 9 is_stmt 1 view .LVU239
	call	glColor3d@PLT
.LVL74:
	.loc 1 112 9 view .LVU240
	vmovq	%r12, %xmm1
	vmovq	%rbp, %xmm0
	vmovq	%r13, %xmm2
	call	glVertex3d@PLT
.LVL75:
	.loc 1 106 36 discriminator 3 view .LVU241
	.loc 1 106 21 discriminator 1 view .LVU242
	cmpq	$32928, %rbx
	vmovsd	.LC19(%rip), %xmm3
	jne	.L33
	.loc 1 115 5 view .LVU243
	call	glEnd@PLT
.LVL76:
	.loc 1 115 5 is_stmt 0 view .LVU244
.LBE16:
.LBE15:
	.loc 1 230 5 is_stmt 1 view .LVU245
.LBB17:
.LBI17:
	.loc 1 39 13 view .LVU246
.LBB18:
	.loc 1 41 5 view .LVU247
.LBE18:
.LBE17:
	.loc 1 231 1 is_stmt 0 view .LVU248
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
.LBB20:
.LBB19:
	.loc 1 41 5 view .LVU249
	jmp	glutSwapBuffers@PLT
.LVL77:
.LBE19:
.LBE20:
	.cfi_endproc
.LFE16:
	.size	display_func, .-display_func
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC20:
	.string	"# N\303\272mero de part\303\255culas:      %d\n"
	.align 8
.LC21:
	.string	"# Temperatura de referencia: %.2f\n"
	.align 8
.LC22:
	.string	"# Pasos de equilibraci\303\263n:    %d\n"
	.align 8
.LC23:
	.string	"# Pasos de medici\303\263n:         %d\n"
	.section	.rodata.str1.1
.LC24:
	.string	"# (mediciones cada %d pasos)\n"
	.section	.rodata.str1.8
	.align 8
.LC25:
	.string	"tiny molecular dynamics | visualization"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL78:
.LFB18:
	.loc 1 263 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 265 5 view .LVU251
	.loc 1 263 1 is_stmt 0 view .LVU252
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 263 1 view .LVU253
	movl	%edi, 12(%rsp)
	.loc 1 265 5 view .LVU254
	leaq	12(%rsp), %rdi
.LVL79:
	.loc 1 265 5 view .LVU255
	call	glutInit@PLT
.LVL80:
	.loc 1 267 5 is_stmt 1 view .LVU256
	.loc 1 267 21 is_stmt 0 view .LVU257
	movl	$32928, %edi
	call	malloc@PLT
.LVL81:
	.loc 1 268 21 view .LVU258
	movl	$32928, %edi
	.loc 1 267 21 view .LVU259
	movq	%rax, %rbx
	.loc 1 267 10 discriminator 1 view .LVU260
	movq	%rax, rxyz(%rip)
	.loc 1 268 5 is_stmt 1 view .LVU261
	.loc 1 268 21 is_stmt 0 view .LVU262
	call	malloc@PLT
.LVL82:
	.loc 1 269 21 view .LVU263
	movl	$32928, %edi
	.loc 1 268 10 discriminator 1 view .LVU264
	movq	%rax, vxyz(%rip)
	.loc 1 269 5 is_stmt 1 view .LVU265
	.loc 1 269 21 is_stmt 0 view .LVU266
	call	malloc@PLT
.LVL83:
	.loc 1 273 12 view .LVU267
	xorl	%edi, %edi
	.loc 1 269 10 discriminator 1 view .LVU268
	movq	%rax, fxyz(%rip)
	.loc 1 273 5 is_stmt 1 view .LVU269
	.loc 1 273 12 is_stmt 0 view .LVU270
	call	time@PLT
.LVL84:
	.loc 1 273 5 discriminator 1 view .LVU271
	movl	%eax, %edi
	call	srand@PLT
.LVL85:
	.loc 1 274 5 is_stmt 1 view .LVU272
	.loc 1 276 7 is_stmt 0 view .LVU273
	movq	.LC1(%rip), %rax
	.loc 1 282 5 view .LVU274
	movq	%rbx, %rdi
	.loc 1 283 5 view .LVU275
	leaq	Temp(%rip), %rbx
	.loc 1 274 9 view .LVU276
	vmovsd	.LC0(%rip), %xmm0
	.loc 1 276 7 view .LVU277
	movq	%rax, V(%rip)
	.loc 1 277 14 discriminator 1 view .LVU278
	movq	.LC2(%rip), %rax
	movq	%rax, box_size(%rip)
	.loc 1 279 11 view .LVU279
	movq	.LC3(%rip), %rax
	.loc 1 274 9 view .LVU280
	vmovsd	%xmm0, Rho(%rip)
	.loc 1 275 5 is_stmt 1 view .LVU281
	.loc 1 276 5 view .LVU282
	.loc 1 277 5 view .LVU283
	.loc 1 278 5 view .LVU284
	.loc 1 279 5 view .LVU285
	.loc 1 279 11 is_stmt 0 view .LVU286
	movq	%rax, Etail(%rip)
	.loc 1 280 5 is_stmt 1 view .LVU287
	.loc 1 280 11 is_stmt 0 view .LVU288
	movq	.LC4(%rip), %rax
	movq	%rax, Ptail(%rip)
	.loc 1 282 5 is_stmt 1 view .LVU289
	call	init_pos@PLT
.LVL86:
	.loc 1 283 5 view .LVU290
	movq	vxyz(%rip), %rdi
	leaq	Ekin(%rip), %rdx
	movq	%rbx, %rsi
	call	init_vel@PLT
.LVL87:
	.loc 1 284 5 view .LVU291
	vmovsd	box_size(%rip), %xmm2
	movq	%rbx, %r8
	leaq	Pres(%rip), %rcx
	vmovsd	V(%rip), %xmm1
	vmovsd	Rho(%rip), %xmm0
	leaq	Epot(%rip), %rdx
	movq	fxyz(%rip), %rsi
	movq	rxyz(%rip), %rdi
	call	forces@PLT
.LVL88:
	.loc 1 288 5 view .LVU292
	movl	$1372, %esi
	leaq	.LC20(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL89:
	.loc 1 289 5 view .LVU293
	vmovsd	.LC12(%rip), %xmm0
	leaq	.LC21(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.LVL90:
	.loc 1 290 5 view .LVU294
	movl	$500, %esi
	leaq	.LC22(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL91:
	.loc 1 291 5 view .LVU295
	movl	$1500, %esi
	leaq	.LC23(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL92:
	.loc 1 292 5 view .LVU296
	movl	$10, %esi
	leaq	.LC24(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL93:
	.loc 1 294 5 view .LVU297
.LBB23:
.LBI23:
	.loc 1 234 13 view .LVU298
.LBB24:
	.loc 1 236 5 view .LVU299
	movl	$2, %edi
	call	glutInitDisplayMode@PLT
.LVL94:
	.loc 1 238 5 view .LVU300
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	glutInitWindowPosition@PLT
.LVL95:
	.loc 1 239 5 view .LVU301
	movl	$900, %esi
	movl	$900, %edi
	call	glutInitWindowSize@PLT
.LVL96:
	.loc 1 240 5 view .LVU302
	.loc 1 240 14 is_stmt 0 view .LVU303
	leaq	.LC25(%rip), %rdi
	call	glutCreateWindow@PLT
.LVL97:
	.loc 1 242 5 view .LVU304
	vmovss	.LC17(%rip), %xmm3
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%xmm2, %xmm1
	vmovaps	%xmm2, %xmm0
	.loc 1 240 12 discriminator 1 view .LVU305
	movl	%eax, win_id(%rip)
	.loc 1 242 5 is_stmt 1 view .LVU306
	call	glClearColor@PLT
.LVL98:
	.loc 1 243 5 view .LVU307
	movl	$16384, %edi
	call	glClear@PLT
.LVL99:
	.loc 1 244 5 view .LVU308
	call	glutSwapBuffers@PLT
.LVL100:
	.loc 1 245 5 view .LVU309
	movl	$16384, %edi
	call	glClear@PLT
.LVL101:
	.loc 1 246 5 view .LVU310
	call	glutSwapBuffers@PLT
.LVL102:
	.loc 1 248 5 view .LVU311
	call	pre_display
.LVL103:
	.loc 1 255 5 view .LVU312
	leaq	idle_func(%rip), %rdi
	call	glutIdleFunc@PLT
.LVL104:
	.loc 1 256 5 view .LVU313
	leaq	display_func(%rip), %rdi
	call	glutDisplayFunc@PLT
.LVL105:
.LBE24:
.LBE23:
	.loc 1 296 5 view .LVU314
	call	glutMainLoop@PLT
.LVL106:
	.loc 1 299 5 view .LVU315
	movq	rxyz(%rip), %rdi
	call	free@PLT
.LVL107:
	.loc 1 300 5 view .LVU316
	movq	fxyz(%rip), %rdi
	call	free@PLT
.LVL108:
	.loc 1 301 5 view .LVU317
	movq	vxyz(%rip), %rdi
	call	free@PLT
.LVL109:
	.loc 1 303 5 view .LVU318
	xorl	%edi, %edi
	call	exit@PLT
.LVL110:
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.local	win_id
	.comm	win_id,4,4
	.local	mes
	.comm	mes,4,4
	.local	frames
	.comm	frames,4,4
	.local	switcher
	.comm	switcher,4,4
	.local	presm
	.comm	presm,8,8
	.local	epotm
	.comm	epotm,8,8
	.local	fxyz
	.comm	fxyz,8,8
	.local	vxyz
	.comm	vxyz,8,8
	.local	rxyz
	.comm	rxyz,8,8
	.local	Ptail
	.comm	Ptail,8,8
	.local	Etail
	.comm	Etail,8,8
	.local	box_size
	.comm	box_size,8,8
	.local	V
	.comm	V,8,8
	.local	Rho
	.comm	Rho,8,8
	.local	Pres
	.comm	Pres,8,8
	.local	Temp
	.comm	Temp,8,8
	.local	Epot
	.comm	Epot,8,8
	.local	Ekin
	.comm	Ekin,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	858993459
	.long	1072902963
	.align 8
.LC1:
	.long	1431655766
	.long	1083301205
	.align 8
.LC2:
	.long	-314126485
	.long	1076160968
	.align 8
.LC3:
	.long	-1842697066
	.long	-1063550297
	.align 8
.LC4:
	.long	540940927
	.long	-1074224233
	.align 8
.LC6:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC7:
	.long	0
	.long	1083535360
	.align 8
.LC8:
	.long	1688004540
	.long	-1074717627
	.align 8
.LC9:
	.long	1288490188
	.long	1070805811
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC12:
	.long	0
	.long	1073741824
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 8
.LC15:
	.long	0
	.long	1078362112
	.align 8
.LC16:
	.long	0
	.long	1071644672
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC17:
	.long	1065353216
	.section	.rodata.cst8
	.align 8
.LC19:
	.long	-1936127716
	.long	1067514262
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 4 "/usr/include/GL/gl.h"
	.file 5 "/usr/include/GL/glu.h"
	.file 6 "/usr/include/GL/freeglut_std.h"
	.file 7 "core.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/stdio.h"
	.file 11 "/usr/include/time.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x14a7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL15
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.long	.LASF3
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0xa0
	.byte	0x12
	.long	0x69
	.uleb128 0x1e
	.byte	0x8
	.uleb128 0x8
	.long	0x83
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x17
	.long	0x83
	.uleb128 0x9
	.long	.LASF13
	.byte	0x3
	.byte	0xa
	.byte	0x12
	.long	0x70
	.uleb128 0x8
	.long	0x8a
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0x74
	.byte	0x16
	.long	0x4d
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x76
	.byte	0x16
	.long	0x4d
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x80
	.byte	0xf
	.long	0x31
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x81
	.byte	0x10
	.long	0x2a
	.uleb128 0x17
	.long	0x2a
	.uleb128 0x8
	.long	0xda
	.uleb128 0x1f
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.long	.LASF20
	.byte	0xb
	.byte	0xf
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.uleb128 0x5
	.long	.LASF21
	.byte	0xb
	.byte	0x15
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Epot
	.uleb128 0x5
	.long	.LASF22
	.byte	0xb
	.byte	0x1b
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Temp
	.uleb128 0x5
	.long	.LASF23
	.byte	0xb
	.byte	0x21
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.uleb128 0x12
	.string	"Rho"
	.byte	0xc
	.byte	0xf
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Rho
	.uleb128 0x12
	.string	"V"
	.byte	0xc
	.byte	0x14
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	V
	.uleb128 0x5
	.long	.LASF24
	.byte	0xc
	.byte	0x17
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	box_size
	.uleb128 0xa
	.long	.LASF30
	.byte	0xc
	.byte	0x21
	.long	0x2a
	.uleb128 0x5
	.long	.LASF25
	.byte	0xc
	.byte	0x27
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Etail
	.uleb128 0x5
	.long	.LASF26
	.byte	0xc
	.byte	0x2e
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	Ptail
	.uleb128 0x5
	.long	.LASF27
	.byte	0xd
	.byte	0x10
	.long	0x1c4
	.uleb128 0x9
	.byte	0x3
	.quad	rxyz
	.uleb128 0x8
	.long	0x2a
	.uleb128 0x5
	.long	.LASF28
	.byte	0xd
	.byte	0x17
	.long	0x1c4
	.uleb128 0x9
	.byte	0x3
	.quad	vxyz
	.uleb128 0x5
	.long	.LASF29
	.byte	0xd
	.byte	0x1e
	.long	0x1c4
	.uleb128 0x9
	.byte	0x3
	.quad	fxyz
	.uleb128 0xa
	.long	.LASF31
	.byte	0xe
	.byte	0xf
	.long	0x2a
	.uleb128 0xb
	.string	"sf"
	.byte	0xe
	.byte	0x15
	.long	0x2a
	.uleb128 0x5
	.long	.LASF32
	.byte	0xe
	.byte	0x19
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	epotm
	.uleb128 0x5
	.long	.LASF33
	.byte	0xe
	.byte	0x20
	.long	0x2a
	.uleb128 0x9
	.byte	0x3
	.quad	presm
	.uleb128 0x5
	.long	.LASF34
	.byte	0xf
	.byte	0xc
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	switcher
	.uleb128 0x5
	.long	.LASF35
	.byte	0xf
	.byte	0x1a
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	frames
	.uleb128 0x12
	.string	"mes"
	.byte	0xf
	.byte	0x26
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	mes
	.uleb128 0x5
	.long	.LASF36
	.byte	0x13
	.byte	0xc
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	win_id
	.uleb128 0xa
	.long	.LASF37
	.byte	0x14
	.byte	0xc
	.long	0x62
	.uleb128 0xa
	.long	.LASF38
	.byte	0x14
	.byte	0x19
	.long	0x62
	.uleb128 0x4
	.long	.LASF39
	.byte	0x5
	.value	0x136
	.byte	0x2d
	.long	0x2d7
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x5
	.value	0x143
	.byte	0x2d
	.long	0x2f9
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x4
	.value	0x36e
	.byte	0x2d
	.uleb128 0x4
	.long	.LASF41
	.byte	0x4
	.value	0x35d
	.byte	0x2d
	.long	0x315
	.uleb128 0x2
	.long	0xa0
	.byte	0
	.uleb128 0xd
	.long	.LASF43
	.byte	0x6
	.value	0x1bf
	.byte	0x7
	.uleb128 0x4
	.long	.LASF44
	.byte	0x6
	.value	0x1ae
	.byte	0x7
	.long	0x331
	.uleb128 0x2
	.long	0x62
	.byte	0
	.uleb128 0x13
	.long	.LASF55
	.byte	0x8
	.byte	0x9e
	.byte	0xf
	.long	0x2a
	.long	0x347
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x8
	.long	0x384
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0xd0
	.uleb128 0x2
	.long	0xd0
	.uleb128 0x2
	.long	0xd0
	.byte	0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x4
	.value	0x39e
	.byte	0x2d
	.uleb128 0x4
	.long	.LASF47
	.byte	0x4
	.value	0x3a6
	.byte	0x2d
	.long	0x3aa
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF48
	.byte	0x4
	.value	0x3da
	.byte	0x2d
	.long	0x3c7
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.uleb128 0x2
	.long	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x4
	.value	0x39c
	.byte	0x2d
	.long	0x3da
	.uleb128 0x2
	.long	0xa0
	.byte	0
	.uleb128 0x4
	.long	.LASF50
	.byte	0x6
	.value	0x1ef
	.byte	0x7
	.long	0x3ed
	.uleb128 0x2
	.long	0xd5
	.byte	0
	.uleb128 0x4
	.long	.LASF51
	.byte	0x6
	.value	0x1e6
	.byte	0x7
	.long	0x400
	.uleb128 0x2
	.long	0xd5
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x6
	.value	0x1c0
	.byte	0x7
	.uleb128 0x4
	.long	.LASF53
	.byte	0x4
	.value	0x2eb
	.byte	0x2d
	.long	0x41c
	.uleb128 0x2
	.long	0xac
	.byte	0
	.uleb128 0x4
	.long	.LASF54
	.byte	0x4
	.value	0x2e9
	.byte	0x2d
	.long	0x43e
	.uleb128 0x2
	.long	0xb8
	.uleb128 0x2
	.long	0xb8
	.uleb128 0x2
	.long	0xb8
	.uleb128 0x2
	.long	0xb8
	.byte	0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x6
	.value	0x1ab
	.byte	0x6
	.long	0x62
	.long	0x455
	.uleb128 0x2
	.long	0x9b
	.byte	0
	.uleb128 0x4
	.long	.LASF57
	.byte	0x6
	.value	0x19f
	.byte	0x7
	.long	0x46d
	.uleb128 0x2
	.long	0x62
	.uleb128 0x2
	.long	0x62
	.byte	0
	.uleb128 0x4
	.long	.LASF58
	.byte	0x6
	.value	0x19e
	.byte	0x7
	.long	0x485
	.uleb128 0x2
	.long	0x62
	.uleb128 0x2
	.long	0x62
	.byte	0
	.uleb128 0x4
	.long	.LASF59
	.byte	0x6
	.value	0x1a0
	.byte	0x7
	.long	0x498
	.uleb128 0x2
	.long	0x4d
	.byte	0
	.uleb128 0x20
	.long	.LASF60
	.byte	0x9
	.value	0x2f4
	.byte	0xd
	.long	0x4ab
	.uleb128 0x2
	.long	0x62
	.byte	0
	.uleb128 0x4
	.long	.LASF61
	.byte	0x9
	.value	0x2af
	.byte	0xd
	.long	0x4be
	.uleb128 0x2
	.long	0x7c
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.value	0x1a6
	.byte	0x7
	.uleb128 0x14
	.long	.LASF63
	.byte	0xa
	.value	0x16b
	.byte	0xc
	.long	0x62
	.long	0x4df
	.uleb128 0x2
	.long	0x9b
	.uleb128 0x21
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x6
	.long	0x512
	.uleb128 0x2
	.long	0x517
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x512
	.uleb128 0x2
	.long	0xd0
	.uleb128 0x2
	.long	0xd0
	.uleb128 0x2
	.long	0xd0
	.byte	0
	.uleb128 0x8
	.long	0xd0
	.uleb128 0x22
	.long	0x512
	.uleb128 0xf
	.long	.LASF65
	.byte	0x5
	.long	0x536
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0x1c4
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.byte	0x4
	.long	0x54b
	.uleb128 0x2
	.long	0x1c4
	.uleb128 0x2
	.long	0xd0
	.byte	0
	.uleb128 0x13
	.long	.LASF67
	.byte	0x8
	.byte	0xa7
	.byte	0x10
	.long	0x2a
	.long	0x561
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0x4
	.long	.LASF68
	.byte	0x9
	.value	0x23f
	.byte	0xd
	.long	0x574
	.uleb128 0x2
	.long	0x4d
	.byte	0
	.uleb128 0x13
	.long	.LASF69
	.byte	0xb
	.byte	0x4c
	.byte	0xf
	.long	0x8f
	.long	0x58a
	.uleb128 0x2
	.long	0x58a
	.byte	0
	.uleb128 0x8
	.long	0x8f
	.uleb128 0x14
	.long	.LASF70
	.byte	0x9
	.value	0x2a0
	.byte	0xe
	.long	0x7c
	.long	0x5a6
	.uleb128 0x2
	.long	0x38
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x6
	.value	0x19d
	.byte	0x7
	.long	0x5be
	.uleb128 0x2
	.long	0x5be
	.uleb128 0x2
	.long	0x5c3
	.byte	0
	.uleb128 0x8
	.long	0x62
	.uleb128 0x8
	.long	0x7e
	.uleb128 0x23
	.long	.LASF82
	.byte	0x1
	.value	0x106
	.byte	0x5
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x98b
	.uleb128 0x18
	.long	.LASF72
	.byte	0xe
	.long	0x62
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1b
	.long	0x5c3
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x24
	.long	0x98b
	.quad	.LBI23
	.byte	.LVU298
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x1
	.value	0x126
	.byte	0x5
	.long	0x779
	.uleb128 0x3
	.quad	.LVL94
	.long	0x485
	.long	0x64c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3
	.quad	.LVL95
	.long	0x46d
	.long	0x668
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.quad	.LVL96
	.long	0x455
	.long	0x688
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x384
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x384
	.byte	0
	.uleb128 0x3
	.quad	.LVL97
	.long	0x43e
	.long	0x6a7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.byte	0
	.uleb128 0x3
	.quad	.LVL98
	.long	0x41c
	.long	0x6e5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0
	.uleb128 0x3
	.quad	.LVL99
	.long	0x409
	.long	0x6fe
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.uleb128 0x6
	.quad	.LVL100
	.long	0x400
	.uleb128 0x3
	.quad	.LVL101
	.long	0x409
	.long	0x724
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.uleb128 0x6
	.quad	.LVL102
	.long	0x400
	.uleb128 0x6
	.quad	.LVL103
	.long	0x130b
	.uleb128 0x3
	.quad	.LVL104
	.long	0x3ed
	.long	0x75d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	idle_func
	.byte	0
	.uleb128 0x10
	.quad	.LVL105
	.long	0x3da
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	display_func
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL80
	.long	0x5a6
	.long	0x798
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.quad	.LVL81
	.long	0x58f
	.long	0x7b1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x3
	.quad	.LVL82
	.long	0x58f
	.long	0x7ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x3
	.quad	.LVL83
	.long	0x58f
	.long	0x7e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x3
	.quad	.LVL84
	.long	0x574
	.long	0x7fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.quad	.LVL85
	.long	0x561
	.uleb128 0x3
	.quad	.LVL86
	.long	0x536
	.long	0x828
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x33333333
	.long	0x3ff33333
	.byte	0
	.uleb128 0x3
	.quad	.LVL87
	.long	0x51c
	.long	0x84d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.byte	0
	.uleb128 0x3
	.quad	.LVL88
	.long	0x4df
	.long	0x87f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Epot
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL89
	.long	0x4c7
	.long	0x8a5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x55c
	.byte	0
	.uleb128 0x3
	.quad	.LVL90
	.long	0x4c7
	.long	0x8d3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC21
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40000000
	.byte	0
	.uleb128 0x3
	.quad	.LVL91
	.long	0x4c7
	.long	0x8f9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1f4
	.byte	0
	.uleb128 0x3
	.quad	.LVL92
	.long	0x4c7
	.long	0x91f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x5dc
	.byte	0
	.uleb128 0x3
	.quad	.LVL93
	.long	0x4c7
	.long	0x943
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x6
	.quad	.LVL106
	.long	0x4be
	.uleb128 0x6
	.quad	.LVL107
	.long	0x4ab
	.uleb128 0x6
	.quad	.LVL108
	.long	0x4ab
	.uleb128 0x6
	.quad	.LVL109
	.long	0x4ab
	.uleb128 0x10
	.quad	.LVL110
	.long	0x498
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF78
	.byte	0xea
	.uleb128 0x15
	.long	.LASF74
	.byte	0xe2
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1014
	.uleb128 0x25
	.long	0x12ae
	.quad	.LBI15
	.byte	.LVU181
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.byte	0x1
	.byte	0xe5
	.byte	0x5
	.long	0xfdf
	.uleb128 0x1a
	.long	0x12bb
	.byte	0x8
	.long	0x7222c48b
	.long	0x402e297e
	.uleb128 0x1a
	.long	0x12c6
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.uleb128 0xe
	.long	0x12d1
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xe
	.long	0x12dc
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0xe
	.long	0x12e6
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xe
	.long	0x12f0
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0xe
	.long	0x12fa
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x3
	.quad	.LVL39
	.long	0x3c7
	.long	0xa46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3
	.quad	.LVL41
	.long	0x3aa
	.long	0xa85
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.byte	0
	.uleb128 0x3
	.quad	.LVL42
	.long	0x38d
	.long	0xac4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL43
	.long	0x38d
	.long	0xafb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL44
	.long	0x38d
	.long	0xb3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL45
	.long	0x38d
	.long	0xb71
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL46
	.long	0x38d
	.long	0xbb0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL47
	.long	0x38d
	.long	0xbe7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL48
	.long	0x38d
	.long	0xc0e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL49
	.long	0x38d
	.long	0xc3d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL50
	.long	0x38d
	.long	0xc64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL51
	.long	0x38d
	.long	0xc93
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL52
	.long	0x38d
	.long	0xcba
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL53
	.long	0x38d
	.long	0xce9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL54
	.long	0x38d
	.long	0xd20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL55
	.long	0x38d
	.long	0xd4f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL56
	.long	0x38d
	.long	0xd7e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL57
	.long	0x38d
	.long	0xdb5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL58
	.long	0x38d
	.long	0xde4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL59
	.long	0x38d
	.long	0xe1b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL60
	.long	0x38d
	.long	0xe4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL61
	.long	0x38d
	.long	0xe81
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL62
	.long	0x38d
	.long	0xeb0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.quad	.LVL63
	.long	0x38d
	.long	0xee7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL64
	.long	0x38d
	.long	0xf16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x3
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL66
	.long	0x38d
	.long	0xf46
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x6
	.quad	.LVL67
	.long	0x384
	.uleb128 0x3
	.quad	.LVL68
	.long	0x3c7
	.long	0xf6b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3
	.quad	.LVL74
	.long	0x3aa
	.long	0xfaa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL75
	.long	0x38d
	.long	0xfd1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x6
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xc
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2a
	.byte	0
	.uleb128 0x6
	.quad	.LVL76
	.long	0x384
	.byte	0
	.uleb128 0x26
	.long	0x1305
	.quad	.LBI17
	.byte	.LVU246
	.long	.LLRL12
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.long	0x1006
	.uleb128 0x1b
	.quad	.LVL77
	.long	0x400
	.byte	0
	.uleb128 0x6
	.quad	.LVL38
	.long	0x130b
	.byte	0
	.uleb128 0x15
	.long	.LASF75
	.byte	0x81
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ae
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1057
	.uleb128 0x11
	.string	"k"
	.byte	0xa3
	.byte	0x12
	.long	0x62
	.long	.LLST6
	.long	.LVUS6
	.byte	0
	.uleb128 0x16
	.long	.LLRL2
	.long	0x10bb
	.uleb128 0x11
	.string	"i"
	.byte	0xb1
	.byte	0x12
	.long	0x62
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x16
	.long	.LLRL4
	.long	0x108c
	.uleb128 0x11
	.string	"k"
	.byte	0xb7
	.byte	0x16
	.long	0x62
	.long	.LLST5
	.long	.LVUS5
	.byte	0
	.uleb128 0x10
	.quad	.LVL5
	.long	0x347
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LLRL0
	.long	0x10d6
	.uleb128 0x11
	.string	"k"
	.byte	0xd0
	.byte	0x16
	.long	0x62
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.uleb128 0x3
	.quad	.LVL0
	.long	0x347
	.long	0x1108
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.byte	0
	.uleb128 0xc
	.quad	.LVL3
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.quad	.LVL9
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xc
	.quad	.LVL11
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x6
	.quad	.LVL12
	.long	0x31e
	.uleb128 0x1b
	.quad	.LVL13
	.long	0x315
	.uleb128 0xc
	.quad	.LVL14
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.quad	.LVL16
	.long	0x536
	.long	0x116f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x33333333
	.long	0x3ff33333
	.byte	0
	.uleb128 0x3
	.quad	.LVL17
	.long	0x51c
	.long	0x1194
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.byte	0
	.uleb128 0x3
	.quad	.LVL18
	.long	0x4df
	.long	0x11c6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Epot
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.quad	.LVL20
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.quad	.LVL22
	.long	0x4c7
	.long	0x11f0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x3
	.quad	.LVL23
	.long	0x54b
	.long	0x1217
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x11
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40957000
	.byte	0x76
	.sleb128 -56
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.quad	.LVL24
	.long	0x54b
	.long	0x1238
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0x76
	.sleb128 -64
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -56
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.quad	.LVL26
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.quad	.LVL27
	.long	0x51c
	.long	0x1268
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Ekin
	.byte	0
	.uleb128 0x3
	.quad	.LVL28
	.long	0x4df
	.long	0x129a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	Epot
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	Pres
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL29
	.long	0x149f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF83
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.byte	0x1
	.long	0x1305
	.uleb128 0xb
	.string	"glL"
	.byte	0x2f
	.byte	0xc
	.long	0x2a
	.uleb128 0xa
	.long	.LASF76
	.byte	0x31
	.byte	0xc
	.long	0x2a
	.uleb128 0xa
	.long	.LASF77
	.byte	0x36
	.byte	0xc
	.long	0x2a
	.uleb128 0xb
	.string	"di"
	.byte	0x64
	.byte	0x9
	.long	0x62
	.uleb128 0xb
	.string	"dx"
	.byte	0x66
	.byte	0xc
	.long	0x2a
	.uleb128 0xb
	.string	"dy"
	.byte	0x67
	.byte	0xc
	.long	0x2a
	.uleb128 0xb
	.string	"dz"
	.byte	0x68
	.byte	0xc
	.long	0x2a
	.byte	0
	.uleb128 0x19
	.long	.LASF79
	.byte	0x27
	.uleb128 0x15
	.long	.LASF80
	.byte	0x17
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x149f
	.uleb128 0x3
	.quad	.LVL30
	.long	0x302
	.long	0x1340
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x1701
	.byte	0
	.uleb128 0x6
	.quad	.LVL31
	.long	0x2f9
	.uleb128 0x3
	.quad	.LVL32
	.long	0x2d7
	.long	0x139b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40468000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL33
	.long	0x29c
	.long	0x1425
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x64
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x65
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x66
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3fe00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x67
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x3ff00000
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x68
	.uleb128 0xb
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.uleb128 0x3
	.quad	.LVL34
	.long	0x302
	.long	0x143e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x1700
	.byte	0
	.uleb128 0x6
	.quad	.LVL35
	.long	0x2f9
	.uleb128 0x3
	.quad	.LVL36
	.long	0x41c
	.long	0x1489
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x31
	.byte	0x4
	.long	0x3f800000
	.byte	0
	.uleb128 0x29
	.quad	.LVL37
	.long	0x409
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x4000
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF84
	.long	.LASF85
	.byte	0xc
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x18
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
	.uleb128 0xb
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 262
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
.LVUS13:
	.uleb128 0
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU256
.LLST13:
	.byte	0x6
	.quad	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL79-.LVL78
	.uleb128 .LVL80-1-.LVL78
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 0
.LLST14:
	.byte	0x6
	.quad	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL80-1-.LVL78
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL80-1-.LVL78
	.uleb128 .LFE18-.LVL78
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU191
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 .LVU218
.LLST7:
	.byte	0x6
	.quad	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL65-.LVL40
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL65-.LVL40
	.uleb128 .LVL66-1-.LVL40
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS8:
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU242
.LLST8:
	.byte	0x6
	.quad	.LVL68
	.byte	0x4
	.uleb128 .LVL68-.LVL68
	.uleb128 .LVL69-.LVL68
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL69-.LVL68
	.uleb128 .LVL70-.LVL68
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL70-.LVL68
	.uleb128 .LVL75-.LVL68
	.uleb128 0x5
	.byte	0x73
	.sleb128 -24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU235
	.uleb128 .LVU244
.LLST9:
	.byte	0x8
	.quad	.LVL71
	.uleb128 .LVL76-.LVL71
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS10:
	.uleb128 .LVU237
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU244
.LLST10:
	.byte	0x6
	.quad	.LVL72
	.byte	0x4
	.uleb128 .LVL72-.LVL72
	.uleb128 .LVL74-1-.LVL72
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL74-1-.LVL72
	.uleb128 .LVL76-.LVL72
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS11:
	.uleb128 .LVU239
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU244
.LLST11:
	.byte	0x6
	.quad	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL76-.LVL73
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS6:
	.uleb128 .LVU144
	.uleb128 .LVU145
.LLST6:
	.byte	0x8
	.quad	.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU34
	.uleb128 .LVU53
	.uleb128 .LVU66
	.uleb128 .LVU90
	.uleb128 .LVU111
	.uleb128 .LVU112
.LLST3:
	.byte	0x6
	.quad	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL10-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL13-.LVL4
	.uleb128 .LVL15-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL19-.LVL4
	.uleb128 .LVL21-.LVL4
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS5:
	.uleb128 .LVU43
	.uleb128 .LVU44
.LLST5:
	.byte	0x8
	.quad	.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU20
	.uleb128 .LVU21
.LLST1:
	.byte	0x8
	.quad	.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
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
.LLRL0:
	.byte	0x5
	.quad	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL2:
	.byte	0x5
	.quad	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB9-.LBB6
	.uleb128 .LBE9-.LBB6
	.byte	0
.LLRL4:
	.byte	0x5
	.quad	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB8-.LBB7
	.uleb128 .LBE8-.LBB7
	.byte	0
.LLRL12:
	.byte	0x5
	.quad	.LBB17
	.byte	0x4
	.uleb128 .LBB17-.LBB17
	.uleb128 .LBE17-.LBB17
	.byte	0x4
	.uleb128 .LBB20-.LBB17
	.uleb128 .LBE20-.LBB17
	.byte	0
.LLRL15:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"fxyz"
.LASF50:
	.string	"glutDisplayFunc"
.LASF49:
	.string	"glBegin"
.LASF32:
	.string	"epotm"
.LASF35:
	.string	"frames"
.LASF76:
	.string	"resize"
.LASF41:
	.string	"glMatrixMode"
.LASF9:
	.string	"short int"
.LASF70:
	.string	"malloc"
.LASF84:
	.string	"putchar"
.LASF75:
	.string	"idle_func"
.LASF82:
	.string	"main"
.LASF74:
	.string	"display_func"
.LASF52:
	.string	"glutSwapBuffers"
.LASF57:
	.string	"glutInitWindowSize"
.LASF13:
	.string	"time_t"
.LASF71:
	.string	"glutInit"
.LASF58:
	.string	"glutInitWindowPosition"
.LASF81:
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
.LASF65:
	.string	"init_vel"
.LASF61:
	.string	"free"
.LASF22:
	.string	"Temp"
.LASF53:
	.string	"glClear"
.LASF33:
	.string	"presm"
.LASF3:
	.string	"float"
.LASF18:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF10:
	.string	"long int"
.LASF34:
	.string	"switcher"
.LASF26:
	.string	"Ptail"
.LASF42:
	.string	"glLoadIdentity"
.LASF73:
	.string	"argv"
.LASF60:
	.string	"exit"
.LASF30:
	.string	"tail"
.LASF5:
	.string	"unsigned char"
.LASF44:
	.string	"glutSetWindow"
.LASF72:
	.string	"argc"
.LASF39:
	.string	"gluLookAt"
.LASF8:
	.string	"signed char"
.LASF19:
	.string	"long long unsigned int"
.LASF25:
	.string	"Etail"
.LASF47:
	.string	"glVertex3d"
.LASF64:
	.string	"forces"
.LASF54:
	.string	"glClearColor"
.LASF69:
	.string	"time"
.LASF14:
	.string	"GLenum"
.LASF37:
	.string	"win_x"
.LASF38:
	.string	"win_y"
.LASF80:
	.string	"pre_display"
.LASF27:
	.string	"rxyz"
.LASF23:
	.string	"Pres"
.LASF78:
	.string	"open_glut_window"
.LASF20:
	.string	"Ekin"
.LASF63:
	.string	"printf"
.LASF66:
	.string	"init_pos"
.LASF28:
	.string	"vxyz"
.LASF6:
	.string	"short unsigned int"
.LASF77:
	.string	"box_line"
.LASF21:
	.string	"Epot"
.LASF24:
	.string	"box_size"
.LASF85:
	.string	"__builtin_putchar"
.LASF48:
	.string	"glColor3d"
.LASF45:
	.string	"velocity_verlet"
.LASF4:
	.string	"long unsigned int"
.LASF17:
	.string	"GLdouble"
.LASF36:
	.string	"win_id"
.LASF2:
	.string	"double"
.LASF12:
	.string	"__time_t"
.LASF55:
	.string	"sqrt"
.LASF56:
	.string	"glutCreateWindow"
.LASF16:
	.string	"GLclampf"
.LASF83:
	.string	"draw_atoms"
.LASF15:
	.string	"GLbitfield"
.LASF67:
	.string	"cbrt"
.LASF43:
	.string	"glutPostRedisplay"
.LASF31:
	.string	"Rhob"
.LASF62:
	.string	"glutMainLoop"
.LASF51:
	.string	"glutIdleFunc"
.LASF46:
	.string	"glEnd"
.LASF7:
	.string	"unsigned int"
.LASF79:
	.string	"post_display"
.LASF68:
	.string	"srand"
.LASF40:
	.string	"gluPerspective"
.LASF59:
	.string	"glutInitDisplayMode"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/users/cp2025/cp2025_093/lab3/lab1"
.LASF0:
	.string	"viz.c"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
