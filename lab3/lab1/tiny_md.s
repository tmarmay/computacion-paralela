	.file	"tiny_md.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_093/lab3/lab1" "tiny_md.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"w"
.LC4:
	.string	"trajectory.xyz"
.LC5:
	.string	"thermo.log"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"# N\303\272mero de part\303\255culas:      %d\n"
	.align 8
.LC8:
	.string	"# Temperatura de referencia: %.2f\n"
	.align 8
.LC9:
	.string	"# Pasos de equilibraci\303\263n:    %d\n"
	.align 8
.LC10:
	.string	"# Pasos de medici\303\263n:         %d\n"
	.section	.rodata.str1.1
.LC11:
	.string	"# (mediciones cada %d pasos)\n"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"# densidad, volumen, energ\303\255a potencial media, presi\303\263n media"
	.section	.rodata.str1.1
.LC13:
	.string	"# t Temp Pres Epot Etot\n"
.LC18:
	.string	"%f %f %f %f %f\n"
.LC19:
	.string	"%d\n\n"
.LC20:
	.string	"Ar %e %e %e\n"
.LC22:
	.string	"%f\t%f\t%f\t%f\n"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"# Tiempo total de simulaci\303\263n = %f segundos\n"
	.section	.rodata.str1.1
.LC25:
	.string	"# Tiempo simulado = %f [fs]\n"
.LC28:
	.string	"# ns/day = %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB12:
	.file 1 "tiny_md.c"
	.loc 1 18 1 view -0
	.cfi_startproc
	.loc 1 19 5 view .LVU1
	.loc 1 20 5 view .LVU2
	.loc 1 18 1 is_stmt 0 view .LVU3
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	.loc 1 20 16 view .LVU4
	leaq	.LC4(%rip), %rdi
	.loc 1 18 1 view .LVU5
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.loc 1 20 16 view .LVU6
	leaq	.LC3(%rip), %rbx
	.loc 1 18 1 view .LVU7
	subq	$99072, %rsp
	.loc 1 20 16 view .LVU8
	movq	%rbx, %rsi
	leaq	.LC20(%rip), %r13
	call	fopen@PLT
.LVL0:
	.loc 1 21 19 view .LVU9
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	.loc 1 20 16 view .LVU10
	movq	%rax, %r12
.LVL1:
	.loc 1 21 5 is_stmt 1 view .LVU11
	.loc 1 21 19 is_stmt 0 view .LVU12
	call	fopen@PLT
.LVL2:
	.loc 1 27 5 view .LVU13
	movl	$1372, %esi
	leaq	.LC6(%rip), %rdi
	.loc 1 21 19 view .LVU14
	movq	%rax, %rbx
	movq	%rax, -99088(%rbp)
.LVL3:
	.loc 1 22 5 is_stmt 1 view .LVU15
	.loc 1 23 5 view .LVU16
	.loc 1 25 5 view .LVU17
	.loc 1 27 5 view .LVU18
	xorl	%eax, %eax
.LVL4:
	.loc 1 27 5 is_stmt 0 view .LVU19
	call	printf@PLT
.LVL5:
	.loc 1 28 5 is_stmt 1 view .LVU20
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	vmovsd	.LC7(%rip), %xmm0
	call	printf@PLT
.LVL6:
	.loc 1 29 5 view .LVU21
	movl	$500, %esi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL7:
	.loc 1 30 5 view .LVU22
	movl	$1500, %esi
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL8:
	.loc 1 31 5 view .LVU23
	movl	$10, %esi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL9:
	.loc 1 32 5 view .LVU24
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.LVL10:
	.loc 1 33 5 view .LVU25
	movq	%rbx, %rcx
	movl	$24, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	leaq	-66000(%rbp), %rbx
.LVL11:
	.loc 1 33 5 is_stmt 0 view .LVU26
	call	fwrite@PLT
.LVL12:
	.loc 1 35 5 is_stmt 1 view .LVU27
	.loc 1 35 12 is_stmt 0 view .LVU28
	xorl	%edi, %edi
	call	time@PLT
.LVL13:
	.loc 1 35 5 discriminator 1 view .LVU29
	movl	%eax, %edi
	call	srand@PLT
.LVL14:
	.loc 1 36 5 is_stmt 1 view .LVU30
	.loc 1 37 5 view .LVU31
	.loc 1 38 5 view .LVU32
	.loc 1 41 5 view .LVU33
	vmovsd	.LC14(%rip), %xmm0
	leaq	-98928(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -98984(%rbp)
	call	init_pos@PLT
.LVL15:
	.loc 1 42 5 view .LVU34
	leaq	-65968(%rbp), %rax
	leaq	-98960(%rbp), %rdx
	leaq	-98944(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -99056(%rbp)
	movq	%rdx, -99024(%rbp)
	movq	%rsi, -99048(%rbp)
	call	init_vel@PLT
.LVL16:
	.loc 1 44 5 view .LVU35
	.loc 1 44 20 is_stmt 0 view .LVU36
	call	wtime@PLT
.LVL17:
	leaq	-98936(%rbp), %rax
.LBB2:
	.loc 1 45 14 view .LVU37
	movl	$0, -99060(%rbp)
.LBE2:
	.loc 1 36 12 view .LVU38
	movq	$0x000000000, -98976(%rbp)
	movq	%rax, -99016(%rbp)
	leaq	-98952(%rbp), %rax
	.loc 1 44 20 view .LVU39
	vmovsd	%xmm0, -99096(%rbp)
.LVL18:
	.loc 1 45 5 is_stmt 1 view .LVU40
.LBB11:
	.loc 1 45 10 view .LVU41
	.loc 1 45 23 discriminator 1 view .LVU42
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%rax, -99008(%rbp)
	leaq	-33008(%rbp), %rax
.LBE11:
	.loc 1 44 20 is_stmt 0 view .LVU43
	vmovsd	.LC1(%rip), %xmm6
	movq	%rax, -99000(%rbp)
	vmovsd	.LC0(%rip), %xmm1
	vmovsd	%xmm6, -99040(%rbp)
.LVL19:
.L10:
.LBB12:
.LBB3:
	.loc 1 46 9 is_stmt 1 view .LVU44
	.loc 1 47 9 view .LVU45
	.loc 1 47 13 is_stmt 0 view .LVU46
	vmovsd	.LC14(%rip), %xmm3
	vmovapd	%xmm2, %xmm5
	vbroadcastsd	%xmm1, %ymm1
	vfnmadd132sd	.LC15(%rip), %xmm3, %xmm5
	.loc 1 48 16 view .LVU47
	vmovsd	.LC16(%rip), %xmm3
	.loc 1 52 15 view .LVU48
	movq	-98984(%rbp), %rax
	.loc 1 48 16 view .LVU49
	vdivsd	%xmm5, %xmm3, %xmm6
	.loc 1 47 13 view .LVU50
	vmovsd	%xmm5, -98968(%rbp)
	.loc 1 48 9 is_stmt 1 view .LVU51
	.loc 1 48 16 is_stmt 0 view .LVU52
	vmovsd	%xmm6, -98992(%rbp)
.LVL20:
	.loc 1 49 9 is_stmt 1 view .LVU53
	.loc 1 50 9 view .LVU54
	.loc 1 50 14 is_stmt 0 view .LVU55
	vmovsd	.LC17(%rip), %xmm6
.LVL21:
	.loc 1 50 14 view .LVU56
	vmulsd	%xmm5, %xmm6, %xmm0
.LVL22:
	.loc 1 51 9 is_stmt 1 view .LVU57
	.loc 1 51 15 is_stmt 0 view .LVU58
	vmulsd	%xmm3, %xmm0, %xmm3
	.loc 1 52 15 view .LVU59
	vmulsd	%xmm5, %xmm0, %xmm6
	.loc 1 51 15 view .LVU60
	vmovsd	%xmm3, -99104(%rbp)
.LVL23:
	.loc 1 52 9 is_stmt 1 view .LVU61
	.loc 1 52 15 is_stmt 0 view .LVU62
	vmovsd	%xmm6, -99112(%rbp)
.LVL24:
	.loc 1 54 9 is_stmt 1 view .LVU63
	.loc 1 55 9 view .LVU64
	.loc 1 56 9 view .LVU65
.LBB4:
	.loc 1 56 14 view .LVU66
	.loc 1 56 27 discriminator 1 view .LVU67
.L2:
	.loc 1 57 13 view .LVU68
	addq	$32, %rax
	.loc 1 57 28 is_stmt 0 view .LVU69
	vmulpd	-32(%rax), %ymm1, %ymm0
	vmovapd	%ymm0, -32(%rax)
	.loc 1 56 40 is_stmt 1 discriminator 3 view .LVU70
	.loc 1 56 27 discriminator 1 view .LVU71
	cmpq	%rbx, %rax
	jne	.L2
.LBE4:
	.loc 1 61 9 view .LVU72
	vmovsd	-99040(%rbp), %xmm2
	vmovsd	-98992(%rbp), %xmm1
	movl	$499, %r15d
	vmovsd	-98968(%rbp), %xmm0
	movq	-98984(%rbp), %r14
	movq	-99048(%rbp), %r8
	movq	-99016(%rbp), %rcx
	movq	-99008(%rbp), %rdx
	movq	-99000(%rbp), %rsi
	vzeroupper
.LVL25:
	movq	%r14, %rdi
	leaq	65888(%r14), %r14
	call	forces@PLT
.LVL26:
	.loc 1 63 9 view .LVU73
	.loc 1 63 23 discriminator 1 view .LVU74
	vmovsd	-99040(%rbp), %xmm2
	movq	%r12, -99072(%rbp)
	movq	%rbx, -99080(%rbp)
	movq	-99056(%rbp), %r12
	movq	-99048(%rbp), %rbx
.LVL27:
.L4:
	.loc 1 65 13 view .LVU75
	vmovsd	-98992(%rbp), %xmm1
	vmovsd	-98968(%rbp), %xmm0
	subq	$8, %rsp
	movq	%r12, %rsi
	movq	-99008(%rbp), %rcx
	movq	-99016(%rbp), %r9
	pushq	%rbx
	vmovsd	%xmm2, -99032(%rbp)
	movq	-99024(%rbp), %r8
	movq	-99000(%rbp), %rdx
	movq	-98984(%rbp), %rdi
	call	velocity_verlet@PLT
.LVL28:
	.loc 1 67 13 view .LVU76
	.loc 1 67 18 is_stmt 0 view .LVU77
	vmovsd	.LC7(%rip), %xmm7
	movq	%r12, %rax
	vdivsd	-98944(%rbp), %xmm7, %xmm1
	vmovsd	-99032(%rbp), %xmm2
	popq	%rcx
	popq	%rsi
	vsqrtsd	%xmm1, %xmm1, %xmm1
.LVL29:
	.loc 1 68 13 is_stmt 1 view .LVU78
.LBB5:
	.loc 1 68 18 view .LVU79
	.loc 1 68 31 discriminator 1 view .LVU80
	vbroadcastsd	%xmm1, %ymm1
.LVL30:
	.loc 1 68 31 is_stmt 0 discriminator 1 view .LVU81
	.p2align 5
	.p2align 4
	.p2align 3
.L3:
	.loc 1 69 17 is_stmt 1 view .LVU82
	.loc 1 69 32 is_stmt 0 view .LVU83
	vmulpd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovapd	%ymm0, -32(%rax)
	.loc 1 68 44 is_stmt 1 discriminator 3 view .LVU84
	.loc 1 68 31 discriminator 1 view .LVU85
	cmpq	%r14, %rax
	jne	.L3
.LBE5:
	.loc 1 63 31 discriminator 2 view .LVU86
	.loc 1 63 23 discriminator 1 view .LVU87
	decl	%r15d
	je	.L21
	vzeroupper
.LVL31:
	.loc 1 63 23 is_stmt 0 discriminator 1 view .LVU88
	jmp	.L4
.LVL32:
.L21:
	.loc 1 74 29 view .LVU89
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	-99072(%rbp), %r12
	movq	-99080(%rbp), %rbx
	.loc 1 73 13 view .LVU90
	movl	$0, -99064(%rbp)
	.loc 1 75 16 view .LVU91
	vmovsd	%xmm6, -99072(%rbp)
	vmovsd	%xmm6, -99080(%rbp)
	movl	$500, %r10d
	movq	%r14, %r15
	vzeroupper
.LVL33:
.L8:
	.loc 1 77 13 view .LVU92
	vmovsd	-98992(%rbp), %xmm1
	vmovsd	-99040(%rbp), %xmm2
	subq	$8, %rsp
	movl	%r10d, -99032(%rbp)
.LVL34:
	.loc 1 77 13 is_stmt 1 view .LVU93
	vmovsd	-98968(%rbp), %xmm0
	movq	-99056(%rbp), %r14
	pushq	-99048(%rbp)
	movq	-99000(%rbp), %rdx
	movq	-99016(%rbp), %r9
	movq	-99024(%rbp), %r8
	movq	-99008(%rbp), %rcx
	movq	-98984(%rbp), %rdi
	movq	%r14, %rsi
	call	velocity_verlet@PLT
.LVL35:
	.loc 1 79 13 view .LVU94
	.loc 1 79 18 is_stmt 0 view .LVU95
	vmovsd	-98944(%rbp), %xmm1
	vmovsd	.LC7(%rip), %xmm5
	popq	%rax
	movq	%r14, %rax
	popq	%rdx
	movl	-99032(%rbp), %r10d
	vdivsd	%xmm1, %xmm5, %xmm4
	vsqrtsd	%xmm4, %xmm4, %xmm4
.LVL36:
	.loc 1 80 13 is_stmt 1 view .LVU96
.LBB6:
	.loc 1 80 18 view .LVU97
	.loc 1 80 31 discriminator 1 view .LVU98
	vbroadcastsd	%xmm4, %ymm4
.LVL37:
	.loc 1 80 31 is_stmt 0 discriminator 1 view .LVU99
	.p2align 5
	.p2align 4
	.p2align 3
.L5:
	.loc 1 81 17 is_stmt 1 view .LVU100
	.loc 1 81 32 is_stmt 0 view .LVU101
	vmulpd	(%rax), %ymm4, %ymm0
	addq	$32, %rax
	vmovapd	%ymm0, -32(%rax)
	.loc 1 80 44 is_stmt 1 discriminator 3 view .LVU102
	.loc 1 80 31 discriminator 1 view .LVU103
	cmpq	%r15, %rax
	jne	.L5
.LBE6:
	.loc 1 84 13 view .LVU104
.LBB7:
	imull	$-858993459, %r10d, %eax
	rorx	$1, %eax, %eax
.LBE7:
	.loc 1 84 16 is_stmt 0 view .LVU105
	cmpl	$429496729, %eax
	jbe	.L22
	vzeroupper
.LVL38:
.L6:
	.loc 1 99 13 is_stmt 1 view .LVU106
	.loc 1 99 15 is_stmt 0 view .LVU107
	vmovsd	.LC21(%rip), %xmm3
	.loc 1 75 34 discriminator 2 view .LVU108
	incl	%r10d
	.loc 1 99 15 view .LVU109
	vaddsd	-98976(%rbp), %xmm3, %xmm6
	vmovsd	%xmm6, -98976(%rbp)
.LVL39:
	.loc 1 75 34 is_stmt 1 discriminator 2 view .LVU110
	.loc 1 75 25 discriminator 1 view .LVU111
	cmpl	$2000, %r10d
	jne	.L8
	.loc 1 101 78 is_stmt 0 view .LVU112
	vmovsd	-99072(%rbp), %xmm5
	vmovsd	-99080(%rbp), %xmm6
.LVL40:
	.loc 1 101 9 is_stmt 1 view .LVU113
	.loc 1 101 78 is_stmt 0 view .LVU114
	vxorpd	%xmm3, %xmm3, %xmm3
	.loc 1 101 9 view .LVU115
	leaq	.LC22(%rip), %rdi
	.loc 1 101 78 view .LVU116
	vcvtsi2sdl	-99064(%rbp), %xmm3, %xmm0
	.loc 1 101 9 view .LVU117
	vmovsd	-98992(%rbp), %xmm1
	movl	$4, %eax
	vdivsd	%xmm0, %xmm6, %xmm3
	vdivsd	%xmm0, %xmm5, %xmm2
	vmovsd	-98968(%rbp), %xmm0
	call	printf@PLT
.LVL41:
	.loc 1 101 9 view .LVU118
.LBE3:
	.loc 1 45 29 is_stmt 1 discriminator 2 view .LVU119
	incl	-99060(%rbp)
.LVL42:
	.loc 1 45 29 is_stmt 0 discriminator 2 view .LVU120
	movl	-99060(%rbp), %eax
.LVL43:
	.loc 1 45 23 is_stmt 1 discriminator 1 view .LVU121
	cmpl	$9, %eax
	je	.L9
.LBB10:
	.loc 1 47 27 is_stmt 0 view .LVU122
	vxorpd	%xmm3, %xmm3, %xmm3
	.loc 1 47 13 view .LVU123
	vmovsd	.LC15(%rip), %xmm1
	.loc 1 47 27 view .LVU124
	vcvtsi2sdl	%eax, %xmm3, %xmm2
	.loc 1 47 13 view .LVU125
	vfnmadd213sd	.LC14(%rip), %xmm2, %xmm1
	.loc 1 48 16 view .LVU126
	vmovsd	.LC16(%rip), %xmm3
	.loc 1 47 13 view .LVU127
	vmovsd	%xmm2, -99032(%rbp)
	.loc 1 48 16 view .LVU128
	vdivsd	%xmm1, %xmm3, %xmm0
	vmovsd	%xmm1, -98992(%rbp)
.LVL44:
	.loc 1 49 18 view .LVU129
	call	cbrt@PLT
.LVL45:
	.loc 1 55 14 view .LVU130
	vmovsd	-98992(%rbp), %xmm1
	vmovsd	-98968(%rbp), %xmm6
	.loc 1 49 18 view .LVU131
	vmovsd	%xmm0, -99040(%rbp)
	.loc 1 55 14 view .LVU132
	vdivsd	%xmm1, %xmm6, %xmm0
	call	cbrt@PLT
.LVL46:
	vmovsd	-99032(%rbp), %xmm2
	vmovapd	%xmm0, %xmm1
	jmp	.L10
.LVL47:
.L22:
	.loc 1 86 22 view .LVU133
	vmovsd	-99112(%rbp), %xmm6
	.loc 1 85 22 view .LVU134
	vmovsd	-99104(%rbp), %xmm3
	movl	%r10d, -99032(%rbp)
.LVL48:
	.loc 1 85 17 is_stmt 1 view .LVU135
	.loc 1 92 17 is_stmt 0 view .LVU136
	leaq	.LC18(%rip), %rsi
	.loc 1 85 22 view .LVU137
	vaddsd	-98952(%rbp), %xmm3, %xmm3
	.loc 1 92 17 view .LVU138
	movl	$5, %eax
	.loc 1 86 22 view .LVU139
	vaddsd	-98936(%rbp), %xmm6, %xmm2
	.loc 1 92 17 view .LVU140
	vmovsd	-98976(%rbp), %xmm0
	.loc 1 90 20 view .LVU141
	incl	-99064(%rbp)
.LVL49:
	.loc 1 92 17 view .LVU142
	movq	-99088(%rbp), %rdi
	.loc 1 88 23 view .LVU143
	vaddsd	-99072(%rbp), %xmm3, %xmm6
	.loc 1 92 17 view .LVU144
	vaddsd	-98960(%rbp), %xmm3, %xmm4
	.loc 1 89 23 view .LVU145
	vaddsd	-99080(%rbp), %xmm2, %xmm5
.LVL50:
	.loc 1 85 22 view .LVU146
	vmovsd	%xmm3, -98952(%rbp)
	.loc 1 86 17 is_stmt 1 view .LVU147
	.loc 1 86 22 is_stmt 0 view .LVU148
	vmovsd	%xmm2, -98936(%rbp)
	.loc 1 88 17 is_stmt 1 view .LVU149
	.loc 1 88 23 is_stmt 0 view .LVU150
	vmovsd	%xmm6, -99072(%rbp)
.LVL51:
	.loc 1 89 17 is_stmt 1 view .LVU151
	.loc 1 89 23 is_stmt 0 view .LVU152
	vmovsd	%xmm5, -99080(%rbp)
.LVL52:
	.loc 1 90 17 is_stmt 1 view .LVU153
	.loc 1 92 17 view .LVU154
	vzeroupper
.LVL53:
	call	fprintf@PLT
.LVL54:
	.loc 1 93 17 view .LVU155
	movl	$1372, %edx
	leaq	.LC19(%rip), %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	fprintf@PLT
.LVL55:
	.loc 1 94 17 view .LVU156
.LBB8:
	.loc 1 94 22 view .LVU157
	.loc 1 94 35 discriminator 1 view .LVU158
.LBE8:
	.loc 1 93 17 is_stmt 0 view .LVU159
	movq	-98984(%rbp), %r14
.LVL56:
	.p2align 4
	.p2align 3
.L7:
.LBB9:
	.loc 1 95 21 is_stmt 1 view .LVU160
	vmovsd	(%r14), %xmm0
	vmovsd	16(%r14), %xmm2
	movq	%r13, %rsi
	movq	%r12, %rdi
	vmovsd	8(%r14), %xmm1
	movl	$3, %eax
	.loc 1 94 35 is_stmt 0 discriminator 1 view .LVU161
	addq	$24, %r14
.LVL57:
	.loc 1 95 21 view .LVU162
	call	fprintf@PLT
.LVL58:
	.loc 1 94 49 is_stmt 1 discriminator 3 view .LVU163
	.loc 1 94 35 discriminator 1 view .LVU164
	cmpq	%rbx, %r14
	jne	.L7
	movl	-99032(%rbp), %r10d
	jmp	.L6
.LVL59:
.L9:
	.loc 1 94 35 is_stmt 0 discriminator 1 view .LVU165
.LBE9:
.LBE10:
.LBE12:
	.loc 1 104 5 is_stmt 1 view .LVU166
	.loc 1 104 22 is_stmt 0 view .LVU167
	call	wtime@PLT
.LVL60:
	.loc 1 104 12 discriminator 1 view .LVU168
	vsubsd	-99096(%rbp), %xmm0, %xmm1
.LVL61:
	.loc 1 105 5 is_stmt 1 view .LVU169
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm1, -98968(%rbp)
.LVL62:
	.loc 1 105 5 is_stmt 0 view .LVU170
	call	printf@PLT
.LVL63:
	.loc 1 106 5 is_stmt 1 view .LVU171
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	vmovsd	-98976(%rbp), %xmm6
	vmulsd	.LC24(%rip), %xmm6, %xmm0
	call	printf@PLT
.LVL64:
	.loc 1 107 5 view .LVU172
	.loc 1 107 39 is_stmt 0 view .LVU173
	vmovsd	-98976(%rbp), %xmm6
	.loc 1 107 5 view .LVU174
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	.loc 1 107 39 view .LVU175
	vmulsd	.LC26(%rip), %xmm6, %xmm0
	.loc 1 107 44 view .LVU176
	vmovsd	-98968(%rbp), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	.loc 1 107 5 view .LVU177
	vmulsd	.LC27(%rip), %xmm0, %xmm0
	call	printf@PLT
.LVL65:
	.loc 1 111 5 is_stmt 1 view .LVU178
	movq	-99088(%rbp), %rdi
	call	fclose@PLT
.LVL66:
	.loc 1 112 5 view .LVU179
	movq	%r12, %rdi
	call	fclose@PLT
.LVL67:
	.loc 1 114 5 view .LVU180
	.loc 1 115 1 is_stmt 0 view .LVU181
	leaq	-48(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LVL68:
	.loc 1 115 1 view .LVU182
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
.LVL69:
	.loc 1 115 1 view .LVU183
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	-314126485
	.long	1076160968
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 8
.LC14:
	.long	858993459
	.long	1072902963
	.align 8
.LC15:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC16:
	.long	0
	.long	1083535360
	.align 8
.LC17:
	.long	1688004540
	.long	-1074717627
	.align 8
.LC21:
	.long	1202590843
	.long	1064598241
	.align 8
.LC24:
	.long	-1717986918
	.long	1073322393
	.align 8
.LC26:
	.long	-1698910392
	.long	1052432370
	.align 8
.LC27:
	.long	0
	.long	1089804288
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 8 "core.h"
	.file 9 "/usr/include/stdlib.h"
	.file 10 "/usr/include/time.h"
	.file 11 "<built-in>"
	.file 12 "wtime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbe9
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL24
	.quad	0
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
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x9
	.long	.LASF10
	.byte	0x2
	.byte	0x98
	.byte	0x12
	.long	0x62
	.uleb128 0x9
	.long	.LASF11
	.byte	0x2
	.byte	0x99
	.byte	0x12
	.long	0x62
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0xa0
	.byte	0x12
	.long	0x62
	.uleb128 0x1d
	.byte	0x8
	.uleb128 0x6
	.long	0x94
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x14
	.long	0x94
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.byte	0xa
	.byte	0x12
	.long	0x81
	.uleb128 0x6
	.long	0x9b
	.uleb128 0x15
	.long	0xac
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x14
	.long	0x2a
	.uleb128 0x1e
	.long	.LASF85
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x22c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x33
	.byte	0x7
	.long	0x5b
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x36
	.byte	0x9
	.long	0x8f
	.byte	0x8
	.uleb128 0x3
	.long	.LASF18
	.byte	0x37
	.byte	0x9
	.long	0x8f
	.byte	0x10
	.uleb128 0x3
	.long	.LASF19
	.byte	0x38
	.byte	0x9
	.long	0x8f
	.byte	0x18
	.uleb128 0x3
	.long	.LASF20
	.byte	0x39
	.byte	0x9
	.long	0x8f
	.byte	0x20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x3a
	.byte	0x9
	.long	0x8f
	.byte	0x28
	.uleb128 0x3
	.long	.LASF22
	.byte	0x3b
	.byte	0x9
	.long	0x8f
	.byte	0x30
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3c
	.byte	0x9
	.long	0x8f
	.byte	0x38
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3d
	.byte	0x9
	.long	0x8f
	.byte	0x40
	.uleb128 0x3
	.long	.LASF25
	.byte	0x40
	.byte	0x9
	.long	0x8f
	.byte	0x48
	.uleb128 0x3
	.long	.LASF26
	.byte	0x41
	.byte	0x9
	.long	0x8f
	.byte	0x50
	.uleb128 0x3
	.long	.LASF27
	.byte	0x42
	.byte	0x9
	.long	0x8f
	.byte	0x58
	.uleb128 0x3
	.long	.LASF28
	.byte	0x44
	.byte	0x16
	.long	0x245
	.byte	0x60
	.uleb128 0x3
	.long	.LASF29
	.byte	0x46
	.byte	0x14
	.long	0x24a
	.byte	0x68
	.uleb128 0x3
	.long	.LASF30
	.byte	0x48
	.byte	0x7
	.long	0x5b
	.byte	0x70
	.uleb128 0x3
	.long	.LASF31
	.byte	0x49
	.byte	0x7
	.long	0x5b
	.byte	0x74
	.uleb128 0x3
	.long	.LASF32
	.byte	0x4a
	.byte	0xb
	.long	0x69
	.byte	0x78
	.uleb128 0x3
	.long	.LASF33
	.byte	0x4d
	.byte	0x12
	.long	0x3f
	.byte	0x80
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4e
	.byte	0xf
	.long	0x4d
	.byte	0x82
	.uleb128 0x3
	.long	.LASF35
	.byte	0x4f
	.byte	0x8
	.long	0x24f
	.byte	0x83
	.uleb128 0x3
	.long	.LASF36
	.byte	0x51
	.byte	0xf
	.long	0x25f
	.byte	0x88
	.uleb128 0x3
	.long	.LASF37
	.byte	0x59
	.byte	0xd
	.long	0x75
	.byte	0x90
	.uleb128 0x3
	.long	.LASF38
	.byte	0x5b
	.byte	0x17
	.long	0x269
	.byte	0x98
	.uleb128 0x3
	.long	.LASF39
	.byte	0x5c
	.byte	0x19
	.long	0x273
	.byte	0xa0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x5d
	.byte	0x14
	.long	0x24a
	.byte	0xa8
	.uleb128 0x3
	.long	.LASF41
	.byte	0x5e
	.byte	0x9
	.long	0x8d
	.byte	0xb0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x5f
	.byte	0x15
	.long	0x278
	.byte	0xb8
	.uleb128 0x3
	.long	.LASF43
	.byte	0x60
	.byte	0x7
	.long	0x5b
	.byte	0xc0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x62
	.byte	0x8
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xc2
	.uleb128 0x1f
	.long	.LASF86
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF46
	.uleb128 0x6
	.long	0x240
	.uleb128 0x6
	.long	0xc2
	.uleb128 0xf
	.long	0x94
	.long	0x25f
	.uleb128 0x16
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x238
	.uleb128 0xe
	.long	.LASF47
	.uleb128 0x6
	.long	0x264
	.uleb128 0xe
	.long	.LASF48
	.uleb128 0x6
	.long	0x26e
	.uleb128 0x6
	.long	0x24a
	.uleb128 0xf
	.long	0x94
	.long	0x28d
	.uleb128 0x16
	.long	0x31
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x22c
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x20
	.long	0x18240
	.byte	0x40
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.long	0x2d6
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.long	0x2d6
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.long	0x2d6
	.byte	0x40
	.value	0x80c0
	.uleb128 0x23
	.string	"f"
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.long	0x2d6
	.byte	0x40
	.long	0x10180
	.byte	0
	.uleb128 0xf
	.long	0x2a
	.long	0x2e7
	.uleb128 0x24
	.long	0x31
	.value	0x1013
	.byte	0
	.uleb128 0x25
	.long	.LASF87
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.long	0x2a0
	.byte	0x40
	.uleb128 0xc
	.long	.LASF51
	.byte	0x6
	.byte	0xb8
	.byte	0xc
	.long	0x5b
	.long	0x30a
	.uleb128 0x2
	.long	0x28d
	.byte	0
	.uleb128 0x10
	.long	.LASF52
	.value	0x165
	.byte	0xc
	.long	0x5b
	.long	0x326
	.uleb128 0x2
	.long	0x28d
	.uleb128 0x2
	.long	0xac
	.uleb128 0x17
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x7
	.byte	0x9e
	.byte	0xf
	.long	0x2a
	.long	0x33c
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x8
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x6
	.long	0x2a
	.uleb128 0xd
	.long	.LASF55
	.byte	0x6
	.long	0x3b1
	.uleb128 0x2
	.long	0x3b6
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x3b1
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x6
	.long	0xbd
	.uleb128 0x15
	.long	0x3b1
	.uleb128 0xc
	.long	.LASF56
	.byte	0x7
	.byte	0xa7
	.byte	0x10
	.long	0x2a
	.long	0x3d1
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0x26
	.long	.LASF88
	.byte	0xc
	.byte	0x2
	.byte	0x8
	.long	0x2a
	.uleb128 0xd
	.long	.LASF57
	.byte	0x5
	.long	0x3f7
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0x379
	.byte	0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x4
	.long	0x40c
	.uleb128 0x2
	.long	0x379
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x27
	.long	.LASF59
	.byte	0x9
	.value	0x23f
	.byte	0xd
	.long	0x41f
	.uleb128 0x2
	.long	0x46
	.byte	0
	.uleb128 0xc
	.long	.LASF60
	.byte	0xa
	.byte	0x4c
	.byte	0xf
	.long	0xa0
	.long	0x435
	.uleb128 0x2
	.long	0x435
	.byte	0
	.uleb128 0x6
	.long	0xa0
	.uleb128 0x10
	.long	.LASF61
	.value	0x16b
	.byte	0xc
	.long	0x5b
	.long	0x451
	.uleb128 0x2
	.long	0xac
	.uleb128 0x17
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.value	0x108
	.byte	0xe
	.long	0x28d
	.long	0x46c
	.uleb128 0x2
	.long	0xb1
	.uleb128 0x2
	.long	0xb1
	.byte	0
	.uleb128 0x28
	.long	.LASF89
	.byte	0x1
	.byte	0x11
	.byte	0x5
	.long	0x5b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbda
	.uleb128 0x7
	.long	.LASF63
	.byte	0x13
	.byte	0xb
	.long	0x28d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.long	.LASF64
	.byte	0x13
	.byte	0x16
	.long	0x28d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xa
	.long	.LASF65
	.byte	0x16
	.byte	0xc
	.long	0x2a
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98960
	.uleb128 0xa
	.long	.LASF66
	.byte	0x16
	.byte	0x12
	.long	0x2a
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98952
	.uleb128 0xa
	.long	.LASF67
	.byte	0x16
	.byte	0x18
	.long	0x2a
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98944
	.uleb128 0xa
	.long	.LASF68
	.byte	0x16
	.byte	0x1e
	.long	0x2a
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98936
	.uleb128 0x8
	.string	"Rho"
	.byte	0x17
	.byte	0xc
	.long	0x2a
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x7
	.long	.LASF69
	.byte	0x17
	.byte	0x11
	.long	0x2a
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x18
	.long	.LASF74
	.byte	0x17
	.byte	0x19
	.long	0x2a
	.uleb128 0x7
	.long	.LASF70
	.byte	0x17
	.byte	0x21
	.long	0x2a
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x7
	.long	.LASF71
	.byte	0x17
	.byte	0x27
	.long	0x2a
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x7
	.long	.LASF72
	.byte	0x17
	.byte	0x2e
	.long	0x2a
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xa
	.long	.LASF73
	.byte	0x19
	.byte	0xf
	.long	0x2e7
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98928
	.uleb128 0x8
	.string	"t"
	.byte	0x24
	.byte	0xc
	.long	0x2a
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x8
	.string	"sf"
	.byte	0x24
	.byte	0x15
	.long	0x2a
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x18
	.long	.LASF75
	.byte	0x25
	.byte	0xc
	.long	0x2a
	.uleb128 0x7
	.long	.LASF76
	.byte	0x2c
	.byte	0xc
	.long	0x2a
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x7
	.long	.LASF77
	.byte	0x68
	.byte	0xc
	.long	0x2a
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x11
	.long	.LLRL11
	.long	0x8eb
	.uleb128 0x8
	.string	"m"
	.byte	0x2d
	.byte	0xe
	.long	0x5b
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x29
	.long	.LLRL13
	.uleb128 0x8
	.string	"i"
	.byte	0x36
	.byte	0xd
	.long	0x5b
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x8
	.string	"mes"
	.byte	0x49
	.byte	0xd
	.long	0x5b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x7
	.long	.LASF78
	.byte	0x4a
	.byte	0x10
	.long	0x2a
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x7
	.long	.LASF79
	.byte	0x4a
	.byte	0x1d
	.long	0x2a
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x19
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x652
	.uleb128 0x8
	.string	"k"
	.byte	0x38
	.byte	0x12
	.long	0x5b
	.long	.LLST18
	.long	.LVUS18
	.byte	0
	.uleb128 0x19
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x679
	.uleb128 0x8
	.string	"k"
	.byte	0x44
	.byte	0x16
	.long	0x5b
	.long	.LLST19
	.long	.LVUS19
	.byte	0
	.uleb128 0x11
	.long	.LLRL20
	.long	0x694
	.uleb128 0x8
	.string	"k"
	.byte	0x50
	.byte	0x16
	.long	0x5b
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.uleb128 0x11
	.long	.LLRL22
	.long	0x6c9
	.uleb128 0x8
	.string	"k"
	.byte	0x5e
	.byte	0x1a
	.long	0x5b
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x12
	.quad	.LVL58
	.long	0x30a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.quad	.LVL25
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.quad	.LVL26
	.long	0x37e
	.long	0x734
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -98984
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99000
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99008
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99048
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x7
	.byte	0x76
	.sleb128 -99040
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL28
	.long	0x33c
	.long	0x79a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -98984
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99000
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99008
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99024
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x7
	.byte	0x76
	.sleb128 -99032
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL35
	.long	0x33c
	.long	0x800
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -98984
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99000
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99008
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99024
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99016
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x7
	.byte	0x76
	.sleb128 -99040
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL41
	.long	0x43a
	.long	0x835
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL45
	.long	0x3bb
	.long	0x85e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x13
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40957000
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.quad	.LVL46
	.long	0x3bb
	.long	0x883
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xf
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -98992
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.quad	.LVL53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.quad	.LVL54
	.long	0x30a
	.long	0x8c1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99088
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98976
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x12
	.quad	.LVL55
	.long	0x30a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC19
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x55c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL0
	.long	0x451
	.long	0x910
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL2
	.long	0x451
	.long	0x935
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL5
	.long	0x43a
	.long	0x95b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x55c
	.byte	0
	.uleb128 0x4
	.quad	.LVL6
	.long	0x43a
	.long	0x989
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
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
	.uleb128 0x4
	.quad	.LVL7
	.long	0x43a
	.long	0x9af
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1f4
	.byte	0
	.uleb128 0x4
	.quad	.LVL8
	.long	0x43a
	.long	0x9d5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x5dc
	.byte	0
	.uleb128 0x4
	.quad	.LVL9
	.long	0x43a
	.long	0x9f9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x4
	.quad	.LVL10
	.long	0xbda
	.long	0xa18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x4
	.quad	.LVL12
	.long	0xbe3
	.long	0xa4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99088
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.quad	.LVL13
	.long	0x41f
	.long	0xa61
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.quad	.LVL14
	.long	0x40c
	.uleb128 0x4
	.quad	.LVL15
	.long	0x3f7
	.long	0xa98
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -98984
	.byte	0x6
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
	.uleb128 0x4
	.quad	.LVL16
	.long	0x3dd
	.long	0xac5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99056
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99048
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99024
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.quad	.LVL17
	.long	0x3d1
	.uleb128 0xb
	.quad	.LVL31
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.quad	.LVL33
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.quad	.LVL38
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x13
	.quad	.LVL60
	.long	0x3d1
	.uleb128 0x4
	.quad	.LVL63
	.long	0x43a
	.long	0xb2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL64
	.long	0x43a
	.long	0xb60
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x13
	.byte	0x76
	.sleb128 -98976
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x9999999a
	.long	0x3ff99999
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.quad	.LVL65
	.long	0x43a
	.long	0xbaa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x27
	.byte	0x76
	.sleb128 -98976
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x9abcaf48
	.long	0x3ebad7f2
	.byte	0x1e
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40f51800
	.byte	0x1e
	.byte	0
	.uleb128 0x4
	.quad	.LVL66
	.long	0x2f4
	.long	0xbc5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x76
	.sleb128 -99088
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.quad	.LVL67
	.long	0x2f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF80
	.long	.LASF82
	.uleb128 0x1a
	.long	.LASF81
	.long	.LASF83
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x4
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
.LVUS0:
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU44
.LLST0:
	.byte	0x6
	.quad	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LVL19-.LVL1
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS1:
	.uleb128 .LVU15
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL11-.LVL3
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.LVL3
	.uleb128 .LVL12-1-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL12-1-.LVL3
	.uleb128 .LVL68-.LVL3
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99088
	.byte	0x4
	.uleb128 .LVL68-.LVL3
	.uleb128 .LVL69-.LVL3
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99096
	.byte	0x4
	.uleb128 .LVL69-.LVL3
	.uleb128 .LFE12-.LVL3
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18320
	.byte	0x1c
	.byte	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU44
.LLST2:
	.byte	0x8
	.quad	.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x33333333
	.long	0x3ff33333
	.byte	0
.LVUS3:
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LVL44-.LVL20
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98992
	.byte	0x4
	.uleb128 .LVL44-.LVL20
	.uleb128 .LVL45-1-.LVL20
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-1-.LVL20
	.uleb128 .LVL47-.LVL20
	.uleb128 0x14
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40957000
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.LVL20
	.uleb128 .LVL68-.LVL20
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98992
	.byte	0x4
	.uleb128 .LVL68-.LVL20
	.uleb128 .LVL69-.LVL20
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99000
	.byte	0x4
	.uleb128 .LVL69-.LVL20
	.uleb128 .LFE12-.LVL20
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x182c0
	.byte	0x1c
	.byte	0
.LVUS4:
	.uleb128 .LVU57
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU170
.LLST4:
	.byte	0x6
	.quad	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-.LVL22
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL24-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x10
	.byte	0xa5
	.uleb128 0x16
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x649ce7bc
	.long	0xbff11c45
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL62-.LVL22
	.uleb128 0x14
	.byte	0x76
	.sleb128 -98968
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0x649ce7bc
	.long	0xbff11c45
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU61
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL23
	.byte	0x4
	.uleb128 .LVL23-.LVL23
	.uleb128 .LVL26-1-.LVL23
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL26-1-.LVL23
	.uleb128 .LVL68-.LVL23
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99104
	.byte	0x4
	.uleb128 .LVL68-.LVL23
	.uleb128 .LVL69-.LVL23
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99112
	.byte	0x4
	.uleb128 .LVL69-.LVL23
	.uleb128 .LFE12-.LVL23
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18330
	.byte	0x1c
	.byte	0
.LVUS6:
	.uleb128 .LVU63
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL26-1-.LVL24
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL26-1-.LVL24
	.uleb128 .LVL68-.LVL24
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99112
	.byte	0x4
	.uleb128 .LVL68-.LVL24
	.uleb128 .LVL69-.LVL24
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99120
	.byte	0x4
	.uleb128 .LVL69-.LVL24
	.uleb128 .LFE12-.LVL24
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18338
	.byte	0x1c
	.byte	0
.LVUS7:
	.uleb128 .LVU31
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL19-.LVL14
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL19-.LVL14
	.uleb128 .LVL33-.LVL14
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98976
	.byte	0x4
	.uleb128 .LVL34-.LVL14
	.uleb128 .LVL39-.LVL14
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98976
	.byte	0x4
	.uleb128 .LVL39-.LVL14
	.uleb128 .LVL40-.LVL14
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL40-.LVL14
	.uleb128 .LVL68-.LVL14
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98976
	.byte	0x4
	.uleb128 .LVL68-.LVL14
	.uleb128 .LVL69-.LVL14
	.uleb128 0x4
	.byte	0x77
	.sleb128 -98984
	.byte	0x4
	.uleb128 .LVL69-.LVL14
	.uleb128 .LFE12-.LVL14
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x182b0
	.byte	0x1c
	.byte	0
.LVUS8:
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU96
	.uleb128 .LVU99
.LLST8:
	.byte	0x6
	.quad	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL36-.LVL29
	.uleb128 .LVL37-.LVL29
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS9:
	.uleb128 .LVU40
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL68-.LVL18
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99096
	.byte	0x4
	.uleb128 .LVL68-.LVL18
	.uleb128 .LVL69-.LVL18
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99104
	.byte	0x4
	.uleb128 .LVL69-.LVL18
	.uleb128 .LFE12-.LVL18
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18328
	.byte	0x1c
	.byte	0
.LVUS10:
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL63-1-.LVL61
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL63-1-.LVL61
	.uleb128 .LVL68-.LVL61
	.uleb128 0x4
	.byte	0x76
	.sleb128 -98968
	.byte	0x4
	.uleb128 .LVL68-.LVL61
	.uleb128 .LVL69-.LVL61
	.uleb128 0x4
	.byte	0x77
	.sleb128 -98976
	.byte	0x4
	.uleb128 .LVL69-.LVL61
	.uleb128 .LFE12-.LVL61
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x182a8
	.byte	0x1c
	.byte	0
.LVUS12:
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST12:
	.byte	0x6
	.quad	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL42-.LVL18
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99060
	.byte	0x4
	.uleb128 .LVL43-.LVL18
	.uleb128 .LVL45-1-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL45-1-.LVL18
	.uleb128 .LVL59-.LVL18
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99060
	.byte	0x4
	.uleb128 .LVL59-.LVL18
	.uleb128 .LVL60-1-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-1-.LVL18
	.uleb128 .LVL68-.LVL18
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99060
	.byte	0x4
	.uleb128 .LVL68-.LVL18
	.uleb128 .LVL69-.LVL18
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99068
	.byte	0x4
	.uleb128 .LVL69-.LVL18
	.uleb128 .LFE12-.LVL18
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18304
	.byte	0x1c
	.byte	0
.LVUS14:
	.uleb128 .LVU64
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU106
	.uleb128 .LVU111
	.uleb128 .LVU118
	.uleb128 .LVU133
	.uleb128 .LVU135
.LLST14:
	.byte	0x6
	.quad	.LVL24
	.byte	0x4
	.uleb128 .LVL24-.LVL24
	.uleb128 .LVL26-.LVL24
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL24
	.uleb128 .LVL27-.LVL24
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.LVL24
	.uleb128 .LVL35-1-.LVL24
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL35-1-.LVL24
	.uleb128 .LVL38-.LVL24
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99032
	.byte	0x4
	.uleb128 .LVL39-.LVL24
	.uleb128 .LVL41-1-.LVL24
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL47-.LVL24
	.uleb128 .LVL48-.LVL24
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99032
	.byte	0
.LVUS15:
	.uleb128 .LVU93
	.uleb128 .LVU142
	.uleb128 .LVU154
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST15:
	.byte	0x6
	.quad	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL49-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99064
	.byte	0x4
	.uleb128 .LVL52-.LVL34
	.uleb128 .LVL68-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99064
	.byte	0x4
	.uleb128 .LVL68-.LVL34
	.uleb128 .LVL69-.LVL34
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99072
	.byte	0x4
	.uleb128 .LVL69-.LVL34
	.uleb128 .LFE12-.LVL34
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18308
	.byte	0x1c
	.byte	0
.LVUS16:
	.uleb128 .LVU93
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST16:
	.byte	0x6
	.quad	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL51-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99072
	.byte	0x4
	.uleb128 .LVL51-.LVL34
	.uleb128 .LVL54-1-.LVL34
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL54-1-.LVL34
	.uleb128 .LVL68-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99072
	.byte	0x4
	.uleb128 .LVL68-.LVL34
	.uleb128 .LVL69-.LVL34
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99080
	.byte	0x4
	.uleb128 .LVL69-.LVL34
	.uleb128 .LFE12-.LVL34
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18310
	.byte	0x1c
	.byte	0
.LVUS17:
	.uleb128 .LVU93
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST17:
	.byte	0x6
	.quad	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL52-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99080
	.byte	0x4
	.uleb128 .LVL52-.LVL34
	.uleb128 .LVL54-1-.LVL34
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL54-1-.LVL34
	.uleb128 .LVL68-.LVL34
	.uleb128 0x4
	.byte	0x76
	.sleb128 -99080
	.byte	0x4
	.uleb128 .LVL68-.LVL34
	.uleb128 .LVL69-.LVL34
	.uleb128 0x4
	.byte	0x77
	.sleb128 -99088
	.byte	0x4
	.uleb128 .LVL69-.LVL34
	.uleb128 .LFE12-.LVL34
	.uleb128 0xb
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0xc
	.long	0x18318
	.byte	0x1c
	.byte	0
.LVUS18:
	.uleb128 .LVU67
	.uleb128 .LVU68
.LLST18:
	.byte	0x8
	.quad	.LVL24
	.uleb128 .LVL24-.LVL24
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU80
	.uleb128 .LVU81
.LLST19:
	.byte	0x8
	.quad	.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU98
	.uleb128 .LVU99
.LLST21:
	.byte	0x8
	.quad	.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU158
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU164
.LLST23:
	.byte	0x6
	.quad	.LVL55
	.byte	0x4
	.uleb128 .LVL55-.LVL55
	.uleb128 .LVL56-.LVL55
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.LVL55
	.uleb128 .LVL57-.LVL55
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x18270
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.LVL55
	.uleb128 .LVL58-.LVL55
	.uleb128 0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x18258
	.byte	0x33
	.byte	0x25
	.byte	0x9f
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
	.quad	.LFB12
	.quad	.LFE12-.LFB12
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
.LLRL11:
	.byte	0x5
	.quad	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB11-.LBB2
	.uleb128 .LBE11-.LBB2
	.byte	0x4
	.uleb128 .LBB12-.LBB2
	.uleb128 .LBE12-.LBB2
	.byte	0
.LLRL13:
	.byte	0x5
	.quad	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB10-.LBB3
	.uleb128 .LBE10-.LBB3
	.byte	0
.LLRL20:
	.byte	0x5
	.quad	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0
.LLRL22:
	.byte	0x5
	.quad	.LBB8
	.byte	0x4
	.uleb128 .LBB8-.LBB8
	.uleb128 .LBE8-.LBB8
	.byte	0x4
	.uleb128 .LBB9-.LBB8
	.uleb128 .LBE9-.LBB8
	.byte	0
.LLRL24:
	.byte	0x7
	.quad	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF78:
	.string	"epotm"
.LASF29:
	.string	"_chain"
.LASF55:
	.string	"forces"
.LASF35:
	.string	"_shortbuf"
.LASF57:
	.string	"init_vel"
.LASF23:
	.string	"_IO_buf_base"
.LASF56:
	.string	"cbrt"
.LASF50:
	.string	"long long unsigned int"
.LASF54:
	.string	"velocity_verlet"
.LASF73:
	.string	"particles"
.LASF71:
	.string	"Etail"
.LASF38:
	.string	"_codecvt"
.LASF49:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF83:
	.string	"__builtin_fwrite"
.LASF30:
	.string	"_fileno"
.LASF18:
	.string	"_IO_read_end"
.LASF9:
	.string	"long int"
.LASF16:
	.string	"_flags"
.LASF24:
	.string	"_IO_buf_end"
.LASF33:
	.string	"_cur_column"
.LASF47:
	.string	"_IO_codecvt"
.LASF2:
	.string	"double"
.LASF32:
	.string	"_old_offset"
.LASF37:
	.string	"_offset"
.LASF74:
	.string	"cell_L"
.LASF69:
	.string	"cell_V"
.LASF46:
	.string	"_IO_marker"
.LASF6:
	.string	"unsigned int"
.LASF87:
	.string	"Particles"
.LASF41:
	.string	"_freeres_buf"
.LASF52:
	.string	"fprintf"
.LASF3:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_ptr"
.LASF79:
	.string	"presm"
.LASF5:
	.string	"short unsigned int"
.LASF77:
	.string	"elapsed"
.LASF25:
	.string	"_IO_save_base"
.LASF88:
	.string	"wtime"
.LASF36:
	.string	"_lock"
.LASF75:
	.string	"Rhob"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF72:
	.string	"Ptail"
.LASF82:
	.string	"__builtin_puts"
.LASF66:
	.string	"Epot"
.LASF64:
	.string	"file_thermo"
.LASF58:
	.string	"init_pos"
.LASF80:
	.string	"puts"
.LASF70:
	.string	"tail"
.LASF67:
	.string	"Temp"
.LASF22:
	.string	"_IO_write_end"
.LASF42:
	.string	"_prevchain"
.LASF65:
	.string	"Ekin"
.LASF86:
	.string	"_IO_lock_t"
.LASF85:
	.string	"_IO_FILE"
.LASF84:
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
.LASF60:
	.string	"time"
.LASF68:
	.string	"Pres"
.LASF14:
	.string	"time_t"
.LASF15:
	.string	"float"
.LASF62:
	.string	"fopen"
.LASF28:
	.string	"_markers"
.LASF59:
	.string	"srand"
.LASF63:
	.string	"file_xyz"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"short int"
.LASF48:
	.string	"_IO_wide_data"
.LASF34:
	.string	"_vtable_offset"
.LASF45:
	.string	"FILE"
.LASF13:
	.string	"char"
.LASF51:
	.string	"fclose"
.LASF11:
	.string	"__off64_t"
.LASF19:
	.string	"_IO_read_base"
.LASF27:
	.string	"_IO_save_end"
.LASF12:
	.string	"__time_t"
.LASF44:
	.string	"_unused2"
.LASF26:
	.string	"_IO_backup_base"
.LASF53:
	.string	"sqrt"
.LASF81:
	.string	"fwrite"
.LASF40:
	.string	"_freeres_list"
.LASF39:
	.string	"_wide_data"
.LASF76:
	.string	"start"
.LASF89:
	.string	"main"
.LASF20:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"tiny_md.c"
.LASF1:
	.string	"/users/cp2025/cp2025_093/lab3/lab1"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
