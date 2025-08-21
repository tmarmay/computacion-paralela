	.file	"tiny_md.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_093/lab3/beta" "tiny_md.c"
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
	.loc 1 13 1 view -0
	.cfi_startproc
	.loc 1 14 5 view .LVU1
	.loc 1 15 5 view .LVU2
	.loc 1 13 1 is_stmt 0 view .LVU3
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	.loc 1 15 16 view .LVU4
	leaq	.LC4(%rip), %rdi
	.loc 1 13 1 view .LVU5
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
	.loc 1 15 16 view .LVU6
	leaq	.LC3(%rip), %rbx
	.loc 1 13 1 view .LVU7
	subq	$224, %rsp
	.loc 1 15 16 view .LVU8
	movq	%rbx, %rsi
	.loc 1 36 5 view .LVU9
	leaq	ZI(%rip), %r13
	leaq	YI(%rip), %r12
	.loc 1 15 16 view .LVU10
	call	fopen@PLT
.LVL0:
	.loc 1 16 19 view .LVU11
	movq	%rbx, %rsi
	leaq	.LC5(%rip), %rdi
	.loc 1 15 16 view .LVU12
	movq	%rax, %r14
.LVL1:
	.loc 1 16 5 is_stmt 1 view .LVU13
	.loc 1 16 19 is_stmt 0 view .LVU14
	call	fopen@PLT
.LVL2:
	.loc 1 21 21 view .LVU15
	movl	$32928, %edi
	.loc 1 16 19 view .LVU16
	movq	%rax, %rbx
	movq	%rax, -208(%rbp)
.LVL3:
	.loc 1 17 5 is_stmt 1 view .LVU17
	.loc 1 18 5 view .LVU18
	.loc 1 19 5 view .LVU19
	.loc 1 21 5 view .LVU20
	.loc 1 21 21 is_stmt 0 view .LVU21
	call	malloc@PLT
.LVL4:
	.loc 1 22 21 view .LVU22
	movl	$32928, %edi
	.loc 1 21 21 view .LVU23
	movq	%rax, %r15
	movq	%rax, -88(%rbp)
.LVL5:
	.loc 1 22 5 is_stmt 1 view .LVU24
	.loc 1 22 21 is_stmt 0 view .LVU25
	call	malloc@PLT
.LVL6:
	.loc 1 24 5 view .LVU26
	movl	$1372, %esi
	.loc 1 22 21 view .LVU27
	movq	%rax, -112(%rbp)
.LVL7:
	.loc 1 24 5 is_stmt 1 view .LVU28
	leaq	.LC6(%rip), %rdi
	xorl	%eax, %eax
.LVL8:
	.loc 1 24 5 is_stmt 0 view .LVU29
	call	printf@PLT
.LVL9:
	.loc 1 25 5 is_stmt 1 view .LVU30
	leaq	.LC8(%rip), %rdi
	movl	$1, %eax
	vmovsd	.LC7(%rip), %xmm0
	call	printf@PLT
.LVL10:
	.loc 1 26 5 view .LVU31
	movl	$500, %esi
	leaq	.LC9(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL11:
	.loc 1 27 5 view .LVU32
	movl	$1500, %esi
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL12:
	.loc 1 28 5 view .LVU33
	movl	$10, %esi
	leaq	.LC11(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
.LVL13:
	.loc 1 29 5 view .LVU34
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.LVL14:
	.loc 1 30 5 view .LVU35
	movq	%rbx, %rcx
	movl	$24, %edx
	movl	$1, %esi
	leaq	.LC13(%rip), %rdi
	.loc 1 36 5 is_stmt 0 view .LVU36
	leaq	XI(%rip), %rbx
.LVL15:
	.loc 1 30 5 view .LVU37
	call	fwrite@PLT
.LVL16:
	.loc 1 32 5 is_stmt 1 view .LVU38
	.loc 1 32 12 is_stmt 0 view .LVU39
	xorl	%edi, %edi
	call	time@PLT
.LVL17:
	.loc 1 32 5 discriminator 1 view .LVU40
	movl	%eax, %edi
	call	srand@PLT
.LVL18:
	.loc 1 33 5 is_stmt 1 view .LVU41
	.loc 1 34 5 view .LVU42
	.loc 1 35 5 view .LVU43
	.loc 1 36 5 view .LVU44
	vmovsd	.LC14(%rip), %xmm0
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	init_pos@PLT
.LVL19:
	.loc 1 37 5 view .LVU45
	.loc 1 37 20 is_stmt 0 view .LVU46
	call	wtime@PLT
.LVL20:
	leaq	-80(%rbp), %rax
	leaq	32928(%r15), %r10
	vmovsd	.LC1(%rip), %xmm3
	vmovsd	%xmm0, -224(%rbp)
.LVL21:
	.loc 1 38 5 is_stmt 1 view .LVU47
.LBB2:
	.loc 1 38 10 view .LVU48
	.loc 1 38 23 discriminator 1 view .LVU49
.LBE2:
	.loc 1 37 20 is_stmt 0 view .LVU50
	vmovsd	.LC0(%rip), %xmm0
.LVL22:
	.loc 1 37 20 view .LVU51
	movq	%rax, -152(%rbp)
	leaq	-64(%rbp), %rax
.LBB13:
	.loc 1 38 14 view .LVU52
	movl	$0, -180(%rbp)
.LBE13:
	.loc 1 33 12 view .LVU53
	movq	$0x000000000, -104(%rbp)
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rax, -136(%rbp)
	leaq	-56(%rbp), %rax
	movq	%r14, -216(%rbp)
	movq	%r10, %r15
.LVL23:
	.loc 1 33 12 view .LVU54
	movq	%rax, -144(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	.loc 1 37 20 view .LVU55
	vmovsd	%xmm3, -168(%rbp)
.LVL24:
.L16:
.LBB14:
.LBB3:
	.loc 1 39 9 is_stmt 1 view .LVU56
	.loc 1 40 9 view .LVU57
	.loc 1 40 13 is_stmt 0 view .LVU58
	vmovsd	.LC14(%rip), %xmm7
	vmovapd	%xmm1, %xmm3
	vbroadcastsd	%xmm0, %ymm0
	leaq	XI(%rip), %rax
	vfnmadd132sd	.LC15(%rip), %xmm7, %xmm3
	.loc 1 41 16 view .LVU59
	vmovsd	.LC16(%rip), %xmm7
	leaq	YI(%rip), %rcx
	leaq	ZI(%rip), %rdx
	vdivsd	%xmm3, %xmm7, %xmm5
	.loc 1 40 13 view .LVU60
	vmovsd	%xmm3, -96(%rbp)
	.loc 1 41 9 is_stmt 1 view .LVU61
	.loc 1 41 16 is_stmt 0 view .LVU62
	vmovsd	%xmm5, -120(%rbp)
.LVL25:
	.loc 1 42 9 is_stmt 1 view .LVU63
	.loc 1 43 9 view .LVU64
	.loc 1 43 14 is_stmt 0 view .LVU65
	vmovsd	.LC17(%rip), %xmm5
.LVL26:
	.loc 1 43 14 view .LVU66
	vmulsd	%xmm3, %xmm5, %xmm1
.LVL27:
	.loc 1 44 9 is_stmt 1 view .LVU67
	.loc 1 44 15 is_stmt 0 view .LVU68
	vmulsd	%xmm7, %xmm1, %xmm6
	.loc 1 45 15 view .LVU69
	vmulsd	%xmm3, %xmm1, %xmm3
	.loc 1 44 15 view .LVU70
	vmovsd	%xmm6, -232(%rbp)
.LVL28:
	.loc 1 45 9 is_stmt 1 view .LVU71
	.loc 1 45 15 is_stmt 0 view .LVU72
	vmovsd	%xmm3, -240(%rbp)
.LVL29:
	.loc 1 47 9 is_stmt 1 view .LVU73
	.loc 1 48 9 view .LVU74
	.loc 1 49 9 view .LVU75
.LBB4:
	.loc 1 49 14 view .LVU76
	.loc 1 49 27 discriminator 1 view .LVU77
.L2:
	.loc 1 50 13 view .LVU78
	addq	$32, %rax
	leaq	10976+XI(%rip), %rsi
	addq	$32, %rcx
	addq	$32, %rdx
	.loc 1 50 19 is_stmt 0 view .LVU79
	vmulpd	-32(%rax), %ymm0, %ymm1
	vmovapd	%ymm1, -32(%rax)
	.loc 1 51 13 is_stmt 1 view .LVU80
	.loc 1 51 19 is_stmt 0 view .LVU81
	vmulpd	-32(%rcx), %ymm0, %ymm1
	vmovapd	%ymm1, -32(%rcx)
	.loc 1 52 13 is_stmt 1 view .LVU82
	.loc 1 52 19 is_stmt 0 view .LVU83
	vmulpd	-32(%rdx), %ymm0, %ymm1
	vmovapd	%ymm1, -32(%rdx)
	.loc 1 49 36 is_stmt 1 discriminator 3 view .LVU84
	.loc 1 49 27 discriminator 1 view .LVU85
	cmpq	%rsi, %rax
	jne	.L2
.LBE4:
	.loc 1 54 9 view .LVU86
	movq	-136(%rbp), %r14
	movq	-152(%rbp), %rdx
	movq	-88(%rbp), %rdi
	vzeroupper
.LVL30:
	movq	%r14, %rsi
	call	init_vel@PLT
.LVL31:
	.loc 1 55 9 view .LVU87
	vmovsd	-168(%rbp), %xmm2
	subq	$8, %rsp
	movq	%r13, %rdx
	vmovsd	-120(%rbp), %xmm1
	vmovsd	-96(%rbp), %xmm0
	pushq	%r14
	movq	%r12, %rsi
	movq	-144(%rbp), %r9
	movq	-128(%rbp), %r8
	movq	%rbx, %rdi
	movl	$499, %r14d
	movq	-112(%rbp), %rcx
	call	forces@PLT
.LVL32:
	.loc 1 57 9 view .LVU88
	.loc 1 57 23 discriminator 1 view .LVU89
	vmovsd	-168(%rbp), %xmm2
	.loc 1 55 9 is_stmt 0 view .LVU90
	popq	%rax
	popq	%rdx
.LVL33:
.L7:
	.loc 1 59 13 is_stmt 1 view .LVU91
	vmovsd	-96(%rbp), %xmm0
	vmovsd	-120(%rbp), %xmm1
	subq	$8, %rsp
	movq	%r13, %rdx
	pushq	-136(%rbp)
	movq	-128(%rbp), %r9
	movq	%r12, %rsi
	movq	%rbx, %rdi
	pushq	-144(%rbp)
	movq	-112(%rbp), %r8
	pushq	-152(%rbp)
	movq	-88(%rbp), %rcx
	vmovsd	%xmm2, -160(%rbp)
	call	velocity_verlet@PLT
.LVL34:
	.loc 1 61 13 view .LVU92
	.loc 1 61 18 is_stmt 0 view .LVU93
	vmovsd	.LC7(%rip), %xmm7
	vxorpd	%xmm5, %xmm5, %xmm5
	addq	$32, %rsp
	vdivsd	-64(%rbp), %xmm7, %xmm0
	vmovsd	-160(%rbp), %xmm2
	vucomisd	%xmm0, %xmm5
	ja	.L25
	vsqrtsd	%xmm0, %xmm0, %xmm0
.L5:
	.loc 1 62 13 is_stmt 1 view .LVU94
.LBB5:
	.loc 1 62 18 view .LVU95
.LVL35:
	.loc 1 62 31 discriminator 1 view .LVU96
.LBE5:
	.loc 1 55 9 is_stmt 0 view .LVU97
	movq	-88(%rbp), %rax
	vbroadcastsd	%xmm0, %ymm1
.LVL36:
	.loc 1 55 9 view .LVU98
	.p2align 5
	.p2align 4
	.p2align 3
.L6:
.LBB6:
	.loc 1 63 17 is_stmt 1 view .LVU99
	.loc 1 63 25 is_stmt 0 view .LVU100
	vmulpd	(%rax), %ymm1, %ymm0
	addq	$32, %rax
	vmovupd	%ymm0, -32(%rax)
	.loc 1 62 44 is_stmt 1 discriminator 3 view .LVU101
	.loc 1 62 31 discriminator 1 view .LVU102
	cmpq	%rax, %r15
	jne	.L6
.LBE6:
	.loc 1 57 31 discriminator 2 view .LVU103
	.loc 1 57 23 discriminator 1 view .LVU104
	decl	%r14d
	je	.L31
	vzeroupper
.LVL37:
	jmp	.L7
.L31:
	.loc 1 68 29 is_stmt 0 view .LVU105
	vxorpd	%xmm6, %xmm6, %xmm6
	.loc 1 67 13 view .LVU106
	movl	$0, -184(%rbp)
	movq	%r15, -176(%rbp)
	movq	-216(%rbp), %r14
	vmovsd	%xmm6, -192(%rbp)
	vmovsd	%xmm6, -200(%rbp)
	.loc 1 69 16 view .LVU107
	movl	$500, %r11d
	vzeroupper
.LVL38:
.L14:
	.loc 1 71 13 view .LVU108
	vmovsd	-120(%rbp), %xmm1
	vmovsd	-96(%rbp), %xmm0
	subq	$8, %rsp
	movl	%r11d, -160(%rbp)
.LVL39:
	.loc 1 71 13 is_stmt 1 view .LVU109
	vmovsd	-168(%rbp), %xmm2
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	pushq	-136(%rbp)
	movq	-128(%rbp), %r9
	pushq	-144(%rbp)
	movq	-112(%rbp), %r8
	pushq	-152(%rbp)
	movq	-88(%rbp), %rcx
	call	velocity_verlet@PLT
.LVL40:
	.loc 1 73 13 view .LVU110
	.loc 1 73 18 is_stmt 0 view .LVU111
	vmovsd	-64(%rbp), %xmm1
	vxorpd	%xmm3, %xmm3, %xmm3
	addq	$32, %rsp
	vmovsd	.LC7(%rip), %xmm6
	movl	-160(%rbp), %r11d
	vdivsd	%xmm1, %xmm6, %xmm0
	vucomisd	%xmm0, %xmm3
	ja	.L26
	vsqrtsd	%xmm0, %xmm0, %xmm0
.LVL41:
.L10:
	.loc 1 74 13 is_stmt 1 view .LVU112
.LBB7:
	.loc 1 74 18 view .LVU113
	.loc 1 74 31 discriminator 1 view .LVU114
.LBE7:
	.loc 1 69 16 is_stmt 0 view .LVU115
	movq	-88(%rbp), %rax
	movq	-176(%rbp), %r10
	vbroadcastsd	%xmm0, %ymm4
.LVL42:
	.loc 1 69 16 view .LVU116
	.p2align 5
	.p2align 4
	.p2align 3
.L11:
.LBB8:
	.loc 1 75 17 is_stmt 1 view .LVU117
	.loc 1 75 25 is_stmt 0 view .LVU118
	vmulpd	(%rax), %ymm4, %ymm0
	addq	$32, %rax
	vmovupd	%ymm0, -32(%rax)
	.loc 1 74 44 is_stmt 1 discriminator 3 view .LVU119
	.loc 1 74 31 discriminator 1 view .LVU120
	cmpq	%r10, %rax
	jne	.L11
.LBE8:
	.loc 1 78 13 view .LVU121
.LBB9:
	imull	$-858993459, %r11d, %eax
	rorx	$1, %eax, %eax
.LBE9:
	.loc 1 78 16 is_stmt 0 view .LVU122
	cmpl	$429496729, %eax
	jbe	.L32
	vzeroupper
.LVL43:
.L12:
	.loc 1 93 13 is_stmt 1 view .LVU123
	.loc 1 93 15 is_stmt 0 view .LVU124
	vmovsd	.LC21(%rip), %xmm5
	.loc 1 69 34 discriminator 2 view .LVU125
	incl	%r11d
	.loc 1 93 15 view .LVU126
	vaddsd	-104(%rbp), %xmm5, %xmm7
	vmovsd	%xmm7, -104(%rbp)
.LVL44:
	.loc 1 69 34 is_stmt 1 discriminator 2 view .LVU127
	.loc 1 69 25 discriminator 1 view .LVU128
	cmpl	$2000, %r11d
	jne	.L14
	.loc 1 95 78 is_stmt 0 view .LVU129
	vmovsd	-192(%rbp), %xmm5
	vmovsd	-200(%rbp), %xmm6
	vxorpd	%xmm7, %xmm7, %xmm7
.LVL45:
	.loc 1 95 9 view .LVU130
	leaq	.LC22(%rip), %rdi
	.loc 1 95 78 view .LVU131
	vcvtsi2sdl	-184(%rbp), %xmm7, %xmm0
	.loc 1 95 9 view .LVU132
	vmovsd	-120(%rbp), %xmm1
	movl	$4, %eax
	.loc 1 95 78 view .LVU133
	movq	-176(%rbp), %r15
	.loc 1 95 9 is_stmt 1 view .LVU134
	vdivsd	%xmm0, %xmm6, %xmm3
	vdivsd	%xmm0, %xmm5, %xmm2
	vmovsd	-96(%rbp), %xmm0
	call	printf@PLT
.LVL46:
	.loc 1 95 9 is_stmt 0 view .LVU135
.LBE3:
	.loc 1 38 29 is_stmt 1 discriminator 2 view .LVU136
	incl	-180(%rbp)
.LVL47:
	.loc 1 38 29 is_stmt 0 discriminator 2 view .LVU137
	movl	-180(%rbp), %eax
.LVL48:
	.loc 1 38 23 is_stmt 1 discriminator 1 view .LVU138
	cmpl	$9, %eax
	je	.L15
.LBB11:
	.loc 1 40 27 is_stmt 0 view .LVU139
	vxorpd	%xmm7, %xmm7, %xmm7
	.loc 1 40 13 view .LVU140
	vmovsd	.LC15(%rip), %xmm2
	.loc 1 41 16 view .LVU141
	vmovsd	.LC16(%rip), %xmm3
	.loc 1 40 27 view .LVU142
	vcvtsi2sdl	%eax, %xmm7, %xmm1
	.loc 1 40 13 view .LVU143
	vfnmadd213sd	.LC14(%rip), %xmm1, %xmm2
	vmovsd	%xmm1, -160(%rbp)
	.loc 1 41 16 view .LVU144
	vdivsd	%xmm2, %xmm3, %xmm0
	vmovsd	%xmm2, -120(%rbp)
.LVL49:
	.loc 1 42 18 view .LVU145
	call	cbrt@PLT
.LVL50:
	.loc 1 48 14 view .LVU146
	vmovsd	-96(%rbp), %xmm5
	vmovsd	-120(%rbp), %xmm2
	.loc 1 42 18 view .LVU147
	vmovsd	%xmm0, -168(%rbp)
	.loc 1 48 14 view .LVU148
	vdivsd	%xmm2, %xmm5, %xmm0
	call	cbrt@PLT
.LVL51:
	vmovsd	-160(%rbp), %xmm1
	jmp	.L16
.LVL52:
.L32:
	.loc 1 80 22 view .LVU149
	vmovsd	-240(%rbp), %xmm7
	.loc 1 79 22 view .LVU150
	vmovsd	-232(%rbp), %xmm3
	movl	%r11d, -160(%rbp)
	.loc 1 79 17 is_stmt 1 view .LVU151
	.loc 1 86 17 is_stmt 0 view .LVU152
	leaq	.LC18(%rip), %rsi
	.loc 1 79 22 view .LVU153
	vaddsd	-72(%rbp), %xmm3, %xmm3
	.loc 1 86 17 view .LVU154
	movl	$5, %eax
	.loc 1 80 22 view .LVU155
	vaddsd	-56(%rbp), %xmm7, %xmm2
	.loc 1 86 17 view .LVU156
	vmovsd	-104(%rbp), %xmm0
	.loc 1 84 20 view .LVU157
	incl	-184(%rbp)
.LVL53:
	.loc 1 86 17 view .LVU158
	movq	-208(%rbp), %rdi
	.loc 1 82 23 view .LVU159
	vaddsd	-192(%rbp), %xmm3, %xmm5
	.loc 1 86 17 view .LVU160
	vaddsd	-80(%rbp), %xmm3, %xmm4
	.loc 1 83 23 view .LVU161
	vaddsd	-200(%rbp), %xmm2, %xmm7
	.loc 1 79 22 view .LVU162
	vmovsd	%xmm3, -72(%rbp)
	.loc 1 80 17 is_stmt 1 view .LVU163
	.loc 1 80 22 is_stmt 0 view .LVU164
	vmovsd	%xmm2, -56(%rbp)
	.loc 1 82 17 is_stmt 1 view .LVU165
	.loc 1 82 23 is_stmt 0 view .LVU166
	vmovsd	%xmm5, -192(%rbp)
.LVL54:
	.loc 1 83 17 is_stmt 1 view .LVU167
	.loc 1 83 23 is_stmt 0 view .LVU168
	vmovsd	%xmm7, -200(%rbp)
.LVL55:
	.loc 1 84 17 is_stmt 1 view .LVU169
	.loc 1 86 17 view .LVU170
	vzeroupper
.LVL56:
	call	fprintf@PLT
.LVL57:
	.loc 1 87 17 view .LVU171
	movl	$1372, %edx
	leaq	.LC19(%rip), %rsi
	movq	%r14, %rdi
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	call	fprintf@PLT
.LVL58:
	.loc 1 88 17 view .LVU172
.LBB10:
	.loc 1 88 22 view .LVU173
	.loc 1 88 35 discriminator 1 view .LVU174
	.p2align 4
	.p2align 3
.L13:
	.loc 1 89 21 view .LVU175
	vmovsd	(%rbx,%r15), %xmm0
	vmovsd	0(%r13,%r15), %xmm2
	leaq	.LC20(%rip), %rsi
	movq	%r14, %rdi
	vmovsd	(%r12,%r15), %xmm1
	movl	$3, %eax
	.loc 1 88 35 is_stmt 0 discriminator 1 view .LVU176
	addq	$8, %r15
.LVL59:
	.loc 1 89 21 view .LVU177
	call	fprintf@PLT
.LVL60:
	.loc 1 88 44 is_stmt 1 discriminator 3 view .LVU178
	.loc 1 88 35 discriminator 1 view .LVU179
	cmpq	$10976, %r15
	jne	.L13
	movl	-160(%rbp), %r11d
	jmp	.L12
.LVL61:
.L15:
	.loc 1 88 35 is_stmt 0 discriminator 1 view .LVU180
.LBE10:
.LBE11:
.LBE14:
	.loc 1 98 22 view .LVU181
	movq	-216(%rbp), %r14
	.loc 1 98 5 is_stmt 1 view .LVU182
	.loc 1 98 22 is_stmt 0 view .LVU183
	call	wtime@PLT
.LVL62:
	.loc 1 99 5 view .LVU184
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	.loc 1 98 12 discriminator 1 view .LVU185
	vsubsd	-224(%rbp), %xmm0, %xmm1
.LVL63:
	.loc 1 99 5 is_stmt 1 view .LVU186
	vmovapd	%xmm1, %xmm0
	vmovsd	%xmm1, -96(%rbp)
.LVL64:
	.loc 1 99 5 is_stmt 0 view .LVU187
	call	printf@PLT
.LVL65:
	.loc 1 100 5 is_stmt 1 view .LVU188
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	vmovsd	-104(%rbp), %xmm6
	vmulsd	.LC24(%rip), %xmm6, %xmm0
	call	printf@PLT
.LVL66:
	.loc 1 101 5 view .LVU189
	.loc 1 101 39 is_stmt 0 view .LVU190
	vmovsd	-104(%rbp), %xmm6
	.loc 1 101 5 view .LVU191
	leaq	.LC28(%rip), %rdi
	movl	$1, %eax
	.loc 1 101 39 view .LVU192
	vmulsd	.LC26(%rip), %xmm6, %xmm0
	.loc 1 101 44 view .LVU193
	vmovsd	-96(%rbp), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	.loc 1 101 5 view .LVU194
	vmulsd	.LC27(%rip), %xmm0, %xmm0
	call	printf@PLT
.LVL67:
	.loc 1 105 5 is_stmt 1 view .LVU195
	movq	-208(%rbp), %rdi
	call	fclose@PLT
.LVL68:
	.loc 1 106 5 view .LVU196
	movq	%r14, %rdi
	call	fclose@PLT
.LVL69:
	.loc 1 109 5 view .LVU197
	movq	-112(%rbp), %rdi
	call	free@PLT
.LVL70:
	.loc 1 110 5 view .LVU198
	movq	-88(%rbp), %rdi
	call	free@PLT
.LVL71:
	.loc 1 111 5 view .LVU199
	.loc 1 112 1 is_stmt 0 view .LVU200
	leaq	-48(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LVL72:
	.loc 1 112 1 view .LVU201
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
.LVL73:
	.loc 1 112 1 view .LVU202
	ret
.LVL74:
.L25:
	.cfi_restore_state
	.loc 1 112 1 view .LVU203
	vmovsd	%xmm2, -160(%rbp)
.LBB15:
.LBB12:
	.loc 1 61 18 view .LVU204
	call	sqrt@PLT
.LVL75:
	vmovsd	-160(%rbp), %xmm2
	jmp	.L5
.LVL76:
.L26:
	.loc 1 61 18 view .LVU205
	movl	%r11d, -244(%rbp)
	vmovsd	%xmm1, -160(%rbp)
.LVL77:
	.loc 1 73 18 view .LVU206
	call	sqrt@PLT
.LVL78:
	vmovsd	-160(%rbp), %xmm1
	movl	-244(%rbp), %r11d
	jmp	.L10
.LBE12:
.LBE15:
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.globl	ZI
	.bss
	.align 32
	.type	ZI, @object
	.size	ZI, 10976
ZI:
	.zero	10976
	.globl	YI
	.align 32
	.type	YI, @object
	.size	YI, 10976
YI:
	.zero	10976
	.globl	XI
	.align 32
	.type	XI, @object
	.size	XI, 10976
XI:
	.zero	10976
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
	.file 8 "/usr/include/stdlib.h"
	.file 9 "core.h"
	.file 10 "/usr/include/time.h"
	.file 11 "<built-in>"
	.file 12 "wtime.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc8a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL25
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	0xac
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x14
	.long	0x2a
	.uleb128 0x20
	.long	.LASF88
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
	.uleb128 0x21
	.long	.LASF89
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0x10
	.long	.LASF46
	.uleb128 0x6
	.long	0x240
	.uleb128 0x6
	.long	0xc2
	.uleb128 0x11
	.long	0x94
	.long	0x25f
	.uleb128 0x15
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x238
	.uleb128 0x10
	.long	.LASF47
	.uleb128 0x6
	.long	0x264
	.uleb128 0x10
	.long	.LASF48
	.uleb128 0x6
	.long	0x26e
	.uleb128 0x6
	.long	0x24a
	.uleb128 0x11
	.long	0x94
	.long	0x28d
	.uleb128 0x15
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
	.uleb128 0x11
	.long	0x2a
	.long	0x2b1
	.uleb128 0x22
	.long	0x31
	.value	0x55b
	.byte	0
	.uleb128 0x12
	.string	"XI"
	.byte	0x8
	.long	0x2a0
	.uleb128 0x9
	.byte	0x3
	.quad	XI
	.uleb128 0x12
	.string	"YI"
	.byte	0x12
	.long	0x2a0
	.uleb128 0x9
	.byte	0x3
	.quad	YI
	.uleb128 0x12
	.string	"ZI"
	.byte	0x1c
	.long	0x2a0
	.uleb128 0x9
	.byte	0x3
	.quad	ZI
	.uleb128 0x16
	.long	.LASF54
	.value	0x2af
	.long	0x2fb
	.uleb128 0x2
	.long	0x8d
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x6
	.byte	0xb8
	.byte	0xc
	.long	0x5b
	.long	0x311
	.uleb128 0x2
	.long	0x28d
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x6
	.value	0x165
	.byte	0xc
	.long	0x5b
	.long	0x32e
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
	.long	0x344
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0xe
	.long	.LASF55
	.byte	0x8
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x6
	.long	0x2a
	.uleb128 0xe
	.long	.LASF56
	.byte	0x6
	.long	0x3cd
	.uleb128 0x2
	.long	0x3cd
	.uleb128 0x2
	.long	0x3cd
	.uleb128 0x2
	.long	0x3cd
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x3cd
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x6
	.long	0xbd
	.uleb128 0xe
	.long	.LASF57
	.byte	0x5
	.long	0x3ec
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.byte	0
	.uleb128 0xc
	.long	.LASF58
	.byte	0x7
	.byte	0xa7
	.byte	0x10
	.long	0x2a
	.long	0x402
	.uleb128 0x2
	.long	0x2a
	.byte	0
	.uleb128 0x23
	.long	.LASF90
	.byte	0xc
	.byte	0x2
	.byte	0x8
	.long	0x2a
	.uleb128 0xe
	.long	.LASF59
	.byte	0x4
	.long	0x42d
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0x38b
	.uleb128 0x2
	.long	0xbd
	.byte	0
	.uleb128 0x16
	.long	.LASF60
	.value	0x23f
	.long	0x43e
	.uleb128 0x2
	.long	0x46
	.byte	0
	.uleb128 0xc
	.long	.LASF61
	.byte	0xa
	.byte	0x4c
	.byte	0xf
	.long	0xa0
	.long	0x454
	.uleb128 0x2
	.long	0x454
	.byte	0
	.uleb128 0x6
	.long	0xa0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x6
	.value	0x16b
	.byte	0xc
	.long	0x5b
	.long	0x471
	.uleb128 0x2
	.long	0xac
	.uleb128 0x17
	.byte	0
	.uleb128 0xd
	.long	.LASF63
	.byte	0x8
	.value	0x2a0
	.byte	0xe
	.long	0x8d
	.long	0x488
	.uleb128 0x2
	.long	0x31
	.byte	0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x6
	.value	0x108
	.byte	0xe
	.long	0x28d
	.long	0x4a4
	.uleb128 0x2
	.long	0xb1
	.uleb128 0x2
	.long	0xb1
	.byte	0
	.uleb128 0x24
	.long	.LASF91
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.long	0x5b
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7b
	.uleb128 0x7
	.long	.LASF65
	.byte	0xe
	.byte	0xb
	.long	0x28d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x7
	.long	.LASF66
	.byte	0xe
	.byte	0x16
	.long	0x28d
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xf
	.long	.LASF67
	.byte	0xc
	.long	0x2a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF68
	.byte	0x12
	.long	0x2a
	.uleb128 0x3
	.byte	0x76
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF69
	.byte	0x18
	.long	0x2a
	.uleb128 0x2
	.byte	0x76
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF70
	.byte	0x1e
	.long	0x2a
	.uleb128 0x2
	.byte	0x76
	.sleb128 -56
	.uleb128 0x8
	.string	"Rho"
	.byte	0x12
	.byte	0xc
	.long	0x2a
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x7
	.long	.LASF71
	.byte	0x12
	.byte	0x11
	.long	0x2a
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x18
	.long	.LASF77
	.byte	0x12
	.byte	0x19
	.long	0x2a
	.uleb128 0x7
	.long	.LASF72
	.byte	0x12
	.byte	0x21
	.long	0x2a
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x7
	.long	.LASF73
	.byte	0x12
	.byte	0x27
	.long	0x2a
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x7
	.long	.LASF74
	.byte	0x12
	.byte	0x2e
	.long	0x2a
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x7
	.long	.LASF75
	.byte	0x13
	.byte	0xd
	.long	0x38b
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x7
	.long	.LASF76
	.byte	0x13
	.byte	0x14
	.long	0x38b
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x8
	.string	"t"
	.byte	0x21
	.byte	0xc
	.long	0x2a
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x25
	.string	"sf"
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.long	0x2a
	.uleb128 0x18
	.long	.LASF78
	.byte	0x22
	.byte	0xc
	.long	0x2a
	.uleb128 0x7
	.long	.LASF79
	.byte	0x25
	.byte	0xc
	.long	0x2a
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x7
	.long	.LASF80
	.byte	0x62
	.byte	0xc
	.long	0x2a
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x13
	.long	.LLRL12
	.long	0x950
	.uleb128 0x8
	.string	"m"
	.byte	0x26
	.byte	0xe
	.long	0x5b
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x26
	.long	.LLRL14
	.uleb128 0x8
	.string	"i"
	.byte	0x2f
	.byte	0xd
	.long	0x5b
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x8
	.string	"mes"
	.byte	0x43
	.byte	0xd
	.long	0x5b
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x7
	.long	.LASF81
	.byte	0x44
	.byte	0x10
	.long	0x2a
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0x7
	.long	.LASF82
	.byte	0x44
	.byte	0x1d
	.long	0x2a
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0x19
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x68f
	.uleb128 0x8
	.string	"k"
	.byte	0x31
	.byte	0x12
	.long	0x5b
	.long	.LLST19
	.long	.LVUS19
	.byte	0
	.uleb128 0x13
	.long	.LLRL20
	.long	0x6aa
	.uleb128 0x8
	.string	"k"
	.byte	0x3e
	.byte	0x16
	.long	0x5b
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.uleb128 0x13
	.long	.LLRL22
	.long	0x6c5
	.uleb128 0x8
	.string	"k"
	.byte	0x4a
	.byte	0x16
	.long	0x5b
	.long	.LLST23
	.long	.LVUS23
	.byte	0
	.uleb128 0x19
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x70d
	.uleb128 0x8
	.string	"k"
	.byte	0x58
	.byte	0x1a
	.long	0x5b
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x1a
	.quad	.LVL60
	.long	0x311
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC20
	.byte	0
	.byte	0
	.uleb128 0xa
	.quad	.LVL30
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.quad	.LVL31
	.long	0x3d2
	.long	0x740
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x76
	.sleb128 -88
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
	.uleb128 0x4
	.byte	0x76
	.sleb128 -152
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.quad	.LVL32
	.long	0x390
	.long	0x79a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x76
	.sleb128 -112
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x76
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x76
	.sleb128 -144
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x76
	.sleb128 -168
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL34
	.long	0x344
	.long	0x7f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x76
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x76
	.sleb128 -112
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x76
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x76
	.sleb128 -160
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL40
	.long	0x344
	.long	0x84e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x76
	.sleb128 -88
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x4
	.byte	0x76
	.sleb128 -112
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x4
	.byte	0x76
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x63
	.uleb128 0x6
	.byte	0x76
	.sleb128 -168
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL46
	.long	0x459
	.long	0x881
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x6
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL50
	.long	0x3ec
	.long	0x8a9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x12
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40957000
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.quad	.LVL51
	.long	0x3ec
	.long	0x8cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xd
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -120
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0
	.uleb128 0xa
	.quad	.LVL56
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.quad	.LVL57
	.long	0x311
	.long	0x908
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x76
	.sleb128 -208
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
	.uleb128 0x6
	.byte	0x76
	.sleb128 -104
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL58
	.long	0x311
	.long	0x934
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
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
	.uleb128 0xb
	.quad	.LVL75
	.long	0x32e
	.uleb128 0xb
	.quad	.LVL78
	.long	0x32e
	.byte	0
	.byte	0
	.uleb128 0x4
	.quad	.LVL0
	.long	0x488
	.long	0x975
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
	.long	0x488
	.long	0x99a
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
	.quad	.LVL4
	.long	0x471
	.long	0x9b3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x4
	.quad	.LVL6
	.long	0x471
	.long	0x9cc
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x80a0
	.byte	0
	.uleb128 0x4
	.quad	.LVL9
	.long	0x459
	.long	0x9f2
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
	.quad	.LVL10
	.long	0x459
	.long	0xa20
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
	.quad	.LVL11
	.long	0x459
	.long	0xa46
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
	.quad	.LVL12
	.long	0x459
	.long	0xa6c
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
	.quad	.LVL13
	.long	0x459
	.long	0xa90
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
	.quad	.LVL14
	.long	0xc7b
	.long	0xaaf
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.uleb128 0x4
	.quad	.LVL16
	.long	0xc84
	.long	0xae0
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
	.uleb128 0x4
	.byte	0x76
	.sleb128 -208
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.quad	.LVL17
	.long	0x43e
	.long	0xaf7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xb
	.quad	.LVL18
	.long	0x42d
	.uleb128 0x4
	.quad	.LVL19
	.long	0x40e
	.long	0xb37
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
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
	.uleb128 0xb
	.quad	.LVL20
	.long	0x402
	.uleb128 0xa
	.quad	.LVL37
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.quad	.LVL38
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.quad	.LVL43
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.quad	.LVL62
	.long	0x402
	.uleb128 0x4
	.quad	.LVL65
	.long	0x459
	.long	0xb9b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC23
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0
	.uleb128 0x4
	.quad	.LVL66
	.long	0x459
	.long	0xbd0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC25
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x12
	.byte	0x76
	.sleb128 -104
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
	.quad	.LVL67
	.long	0x459
	.long	0xc18
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x25
	.byte	0x76
	.sleb128 -104
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
	.sleb128 -96
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
	.quad	.LVL68
	.long	0x2fb
	.long	0xc32
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x76
	.sleb128 -208
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.quad	.LVL69
	.long	0x2fb
	.long	0xc4a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.quad	.LVL70
	.long	0x2ea
	.long	0xc64
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x76
	.sleb128 -112
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.quad	.LVL71
	.long	0x2ea
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x76
	.sleb128 -88
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF83
	.long	.LASF85
	.uleb128 0x1b
	.long	.LASF84
	.long	.LASF86
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
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
	.uleb128 .LVL24-.LVL1
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL24-.LVL1
	.uleb128 .LVL72-.LVL1
	.uleb128 0x3
	.byte	0x76
	.sleb128 -216
	.byte	0x4
	.uleb128 .LVL72-.LVL1
	.uleb128 .LVL73-.LVL1
	.uleb128 0x3
	.byte	0x77
	.sleb128 -224
	.byte	0x4
	.uleb128 .LVL73-.LVL1
	.uleb128 .LVL74-.LVL1
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xe8
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL1
	.uleb128 .LFE12-.LVL1
	.uleb128 0x3
	.byte	0x76
	.sleb128 -216
	.byte	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-1-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-1-.LVL3
	.uleb128 .LVL15-.LVL3
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-.LVL3
	.uleb128 .LVL16-1-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL16-1-.LVL3
	.uleb128 .LVL72-.LVL3
	.uleb128 0x3
	.byte	0x76
	.sleb128 -208
	.byte	0x4
	.uleb128 .LVL72-.LVL3
	.uleb128 .LVL73-.LVL3
	.uleb128 0x3
	.byte	0x77
	.sleb128 -216
	.byte	0x4
	.uleb128 .LVL73-.LVL3
	.uleb128 .LVL74-.LVL3
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xe0
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL3
	.uleb128 .LFE12-.LVL3
	.uleb128 0x3
	.byte	0x76
	.sleb128 -208
	.byte	0
.LVUS2:
	.uleb128 .LVU44
	.uleb128 .LVU56
.LLST2:
	.byte	0x8
	.quad	.LVL18
	.uleb128 .LVL24-.LVL18
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0x33333333
	.long	0x3ff33333
	.byte	0
.LVUS3:
	.uleb128 .LVU63
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL26-.LVL25
	.uleb128 .LVL49-.LVL25
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.byte	0x4
	.uleb128 .LVL49-.LVL25
	.uleb128 .LVL50-1-.LVL25
	.uleb128 0xb
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-1-.LVL25
	.uleb128 .LVL52-.LVL25
	.uleb128 0x13
	.byte	0xa4
	.uleb128 0x2a
	.byte	0x8
	.long	0
	.long	0x40957000
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL25
	.uleb128 .LVL72-.LVL25
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.byte	0x4
	.uleb128 .LVL72-.LVL25
	.uleb128 .LVL73-.LVL25
	.uleb128 0x3
	.byte	0x77
	.sleb128 -128
	.byte	0x4
	.uleb128 .LVL73-.LVL25
	.uleb128 .LVL74-.LVL25
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x88
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL25
	.uleb128 .LFE12-.LVL25
	.uleb128 0x3
	.byte	0x76
	.sleb128 -120
	.byte	0
.LVUS4:
	.uleb128 .LVU67
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU187
	.uleb128 .LVU203
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL29-.LVL27
	.uleb128 .LVL31-1-.LVL27
	.uleb128 0xb
	.byte	0xa5
	.uleb128 0x16
	.uleb128 0x2a
	.byte	0x76
	.sleb128 -96
	.byte	0xa6
	.byte	0x8
	.uleb128 0x2a
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-1-.LVL27
	.uleb128 .LVL64-.LVL27
	.uleb128 0x13
	.byte	0x76
	.sleb128 -96
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
	.byte	0x4
	.uleb128 .LVL74-.LVL27
	.uleb128 .LFE12-.LVL27
	.uleb128 0x13
	.byte	0x76
	.sleb128 -96
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
	.uleb128 .LVU71
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL31-1-.LVL28
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL31-1-.LVL28
	.uleb128 .LVL72-.LVL28
	.uleb128 0x3
	.byte	0x76
	.sleb128 -232
	.byte	0x4
	.uleb128 .LVL72-.LVL28
	.uleb128 .LVL73-.LVL28
	.uleb128 0x3
	.byte	0x77
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL73-.LVL28
	.uleb128 .LVL74-.LVL28
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xf8
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL28
	.uleb128 .LFE12-.LVL28
	.uleb128 0x3
	.byte	0x76
	.sleb128 -232
	.byte	0
.LVUS6:
	.uleb128 .LVU73
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL31-1-.LVL29
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL31-1-.LVL29
	.uleb128 .LVL72-.LVL29
	.uleb128 0x3
	.byte	0x76
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL72-.LVL29
	.uleb128 .LVL73-.LVL29
	.uleb128 0x3
	.byte	0x77
	.sleb128 -248
	.byte	0x4
	.uleb128 .LVL73-.LVL29
	.uleb128 .LVL74-.LVL29
	.uleb128 0x9
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0xa
	.value	0x100
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL29
	.uleb128 .LFE12-.LVL29
	.uleb128 0x3
	.byte	0x76
	.sleb128 -240
	.byte	0
.LVUS7:
	.uleb128 .LVU24
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL6-1-.LVL5
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-1-.LVL5
	.uleb128 .LVL23-.LVL5
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL23-.LVL5
	.uleb128 .LVL72-.LVL5
	.uleb128 0x3
	.byte	0x76
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL72-.LVL5
	.uleb128 .LVL73-.LVL5
	.uleb128 0x3
	.byte	0x77
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL73-.LVL5
	.uleb128 .LVL74-.LVL5
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x68
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL5
	.uleb128 .LFE12-.LVL5
	.uleb128 0x3
	.byte	0x76
	.sleb128 -88
	.byte	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST8:
	.byte	0x6
	.quad	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL72-.LVL7
	.uleb128 0x3
	.byte	0x76
	.sleb128 -112
	.byte	0x4
	.uleb128 .LVL72-.LVL7
	.uleb128 .LVL73-.LVL7
	.uleb128 0x3
	.byte	0x77
	.sleb128 -120
	.byte	0x4
	.uleb128 .LVL73-.LVL7
	.uleb128 .LVL74-.LVL7
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL7
	.uleb128 .LFE12-.LVL7
	.uleb128 0x3
	.byte	0x76
	.sleb128 -112
	.byte	0
.LVUS9:
	.uleb128 .LVU42
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST9:
	.byte	0x6
	.quad	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL24-.LVL18
	.uleb128 0xa
	.byte	0x9e
	.uleb128 0x8
	.long	0
	.long	0
	.byte	0x4
	.uleb128 .LVL24-.LVL18
	.uleb128 .LVL38-.LVL18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL39-.LVL18
	.uleb128 .LVL44-.LVL18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL44-.LVL18
	.uleb128 .LVL45-.LVL18
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL45-.LVL18
	.uleb128 .LVL72-.LVL18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL72-.LVL18
	.uleb128 .LVL73-.LVL18
	.uleb128 0x3
	.byte	0x77
	.sleb128 -112
	.byte	0x4
	.uleb128 .LVL73-.LVL18
	.uleb128 .LVL74-.LVL18
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x78
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL18
	.uleb128 .LFE12-.LVL18
	.uleb128 0x3
	.byte	0x76
	.sleb128 -104
	.byte	0
.LVUS10:
	.uleb128 .LVU47
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST10:
	.byte	0x6
	.quad	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL22-.LVL21
	.uleb128 .LVL72-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -224
	.byte	0x4
	.uleb128 .LVL72-.LVL21
	.uleb128 .LVL73-.LVL21
	.uleb128 0x3
	.byte	0x77
	.sleb128 -232
	.byte	0x4
	.uleb128 .LVL73-.LVL21
	.uleb128 .LVL74-.LVL21
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xf0
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL21
	.uleb128 .LFE12-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -224
	.byte	0
.LVUS11:
	.uleb128 .LVU186
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
.LLST11:
	.byte	0x6
	.quad	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL65-1-.LVL63
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL65-1-.LVL63
	.uleb128 .LVL72-.LVL63
	.uleb128 0x3
	.byte	0x76
	.sleb128 -96
	.byte	0x4
	.uleb128 .LVL72-.LVL63
	.uleb128 .LVL73-.LVL63
	.uleb128 0x3
	.byte	0x77
	.sleb128 -104
	.byte	0x4
	.uleb128 .LVL73-.LVL63
	.uleb128 .LVL74-.LVL63
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0
.LVUS13:
	.uleb128 .LVU49
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST13:
	.byte	0x6
	.quad	.LVL21
	.byte	0x4
	.uleb128 .LVL21-.LVL21
	.uleb128 .LVL24-.LVL21
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL21
	.uleb128 .LVL47-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -180
	.byte	0x4
	.uleb128 .LVL48-.LVL21
	.uleb128 .LVL50-1-.LVL21
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL50-1-.LVL21
	.uleb128 .LVL61-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -180
	.byte	0x4
	.uleb128 .LVL61-.LVL21
	.uleb128 .LVL62-1-.LVL21
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL62-1-.LVL21
	.uleb128 .LVL72-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -180
	.byte	0x4
	.uleb128 .LVL72-.LVL21
	.uleb128 .LVL73-.LVL21
	.uleb128 0x3
	.byte	0x77
	.sleb128 -188
	.byte	0x4
	.uleb128 .LVL73-.LVL21
	.uleb128 .LVL74-.LVL21
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xc4
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL74-.LVL21
	.uleb128 .LFE12-.LVL21
	.uleb128 0x3
	.byte	0x76
	.sleb128 -180
	.byte	0
.LVUS15:
	.uleb128 .LVU74
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU128
	.uleb128 .LVU135
	.uleb128 .LVU205
	.uleb128 .LVU206
.LLST15:
	.byte	0x6
	.quad	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL32-.LVL29
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL29
	.uleb128 .LVL33-.LVL29
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL39-.LVL29
	.uleb128 .LVL40-1-.LVL29
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL40-1-.LVL29
	.uleb128 .LVL41-.LVL29
	.uleb128 0x3
	.byte	0x76
	.sleb128 -160
	.byte	0x4
	.uleb128 .LVL44-.LVL29
	.uleb128 .LVL46-1-.LVL29
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL76-.LVL29
	.uleb128 .LVL77-.LVL29
	.uleb128 0x3
	.byte	0x76
	.sleb128 -160
	.byte	0
.LVUS16:
	.uleb128 .LVU109
	.uleb128 .LVU158
	.uleb128 .LVU170
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 0
.LLST16:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL53-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -184
	.byte	0x4
	.uleb128 .LVL55-.LVL39
	.uleb128 .LVL72-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -184
	.byte	0x4
	.uleb128 .LVL72-.LVL39
	.uleb128 .LVL73-.LVL39
	.uleb128 0x3
	.byte	0x77
	.sleb128 -192
	.byte	0x4
	.uleb128 .LVL73-.LVL39
	.uleb128 .LVL74-.LVL39
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xc8
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL76-.LVL39
	.uleb128 .LFE12-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -184
	.byte	0
.LVUS17:
	.uleb128 .LVU109
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 0
.LLST17:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL54-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -192
	.byte	0x4
	.uleb128 .LVL54-.LVL39
	.uleb128 .LVL57-1-.LVL39
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL57-1-.LVL39
	.uleb128 .LVL72-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -192
	.byte	0x4
	.uleb128 .LVL72-.LVL39
	.uleb128 .LVL73-.LVL39
	.uleb128 0x3
	.byte	0x77
	.sleb128 -200
	.byte	0x4
	.uleb128 .LVL73-.LVL39
	.uleb128 .LVL74-.LVL39
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xd0
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL76-.LVL39
	.uleb128 .LFE12-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -192
	.byte	0
.LVUS18:
	.uleb128 .LVU109
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 0
.LLST18:
	.byte	0x6
	.quad	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL55-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -200
	.byte	0x4
	.uleb128 .LVL55-.LVL39
	.uleb128 .LVL57-1-.LVL39
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL57-1-.LVL39
	.uleb128 .LVL72-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -200
	.byte	0x4
	.uleb128 .LVL72-.LVL39
	.uleb128 .LVL73-.LVL39
	.uleb128 0x3
	.byte	0x77
	.sleb128 -208
	.byte	0x4
	.uleb128 .LVL73-.LVL39
	.uleb128 .LVL74-.LVL39
	.uleb128 0x8
	.byte	0x91
	.sleb128 -8
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x8
	.byte	0xd8
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL76-.LVL39
	.uleb128 .LFE12-.LVL39
	.uleb128 0x3
	.byte	0x76
	.sleb128 -200
	.byte	0
.LVUS19:
	.uleb128 .LVU77
	.uleb128 .LVU78
.LLST19:
	.byte	0x8
	.quad	.LVL29
	.uleb128 .LVL29-.LVL29
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU96
	.uleb128 .LVU98
.LLST21:
	.byte	0x8
	.quad	.LVL35
	.uleb128 .LVL36-.LVL35
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU114
	.uleb128 .LVU116
.LLST23:
	.byte	0x8
	.quad	.LVL41
	.uleb128 .LVL42-.LVL41
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU174
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU179
.LLST24:
	.byte	0x6
	.quad	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL58-.LVL58
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL59-.LVL58
	.uleb128 0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x5
	.byte	0x7f
	.sleb128 -8
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
.LLRL12:
	.byte	0x5
	.quad	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB13-.LBB2
	.uleb128 .LBE13-.LBB2
	.byte	0x4
	.uleb128 .LBB14-.LBB2
	.uleb128 .LBE14-.LBB2
	.byte	0x4
	.uleb128 .LBB15-.LBB2
	.uleb128 .LBE15-.LBB2
	.byte	0
.LLRL14:
	.byte	0x5
	.quad	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB11-.LBB3
	.uleb128 .LBE11-.LBB3
	.byte	0x4
	.uleb128 .LBB12-.LBB3
	.uleb128 .LBE12-.LBB3
	.byte	0
.LLRL20:
	.byte	0x5
	.quad	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0
.LLRL22:
	.byte	0x5
	.quad	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB8-.LBB7
	.uleb128 .LBE8-.LBB7
	.byte	0x4
	.uleb128 .LBB9-.LBB7
	.uleb128 .LBE9-.LBB7
	.byte	0
.LLRL25:
	.byte	0x7
	.quad	.LFB12
	.uleb128 .LFE12-.LFB12
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF17:
	.string	"_IO_read_ptr"
.LASF63:
	.string	"malloc"
.LASF29:
	.string	"_chain"
.LASF56:
	.string	"forces"
.LASF35:
	.string	"_shortbuf"
.LASF57:
	.string	"init_vel"
.LASF23:
	.string	"_IO_buf_base"
.LASF58:
	.string	"cbrt"
.LASF50:
	.string	"long long unsigned int"
.LASF55:
	.string	"velocity_verlet"
.LASF73:
	.string	"Etail"
.LASF54:
	.string	"free"
.LASF38:
	.string	"_codecvt"
.LASF49:
	.string	"long long int"
.LASF7:
	.string	"signed char"
.LASF86:
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
.LASF77:
	.string	"cell_L"
.LASF75:
	.string	"vxyz"
.LASF71:
	.string	"cell_V"
.LASF46:
	.string	"_IO_marker"
.LASF6:
	.string	"unsigned int"
.LASF41:
	.string	"_freeres_buf"
.LASF52:
	.string	"fprintf"
.LASF3:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_ptr"
.LASF87:
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
	.ascii	"dd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-compl"
	.string	"ex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -mavx -g -O2 -std=c11 -funsafe-math-optimizations -fopenmp -fasynchronous-unwind-tables"
.LASF82:
	.string	"presm"
.LASF5:
	.string	"short unsigned int"
.LASF80:
	.string	"elapsed"
.LASF25:
	.string	"_IO_save_base"
.LASF90:
	.string	"wtime"
.LASF36:
	.string	"_lock"
.LASF78:
	.string	"Rhob"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF74:
	.string	"Ptail"
.LASF85:
	.string	"__builtin_puts"
.LASF68:
	.string	"Epot"
.LASF66:
	.string	"file_thermo"
.LASF59:
	.string	"init_pos"
.LASF83:
	.string	"puts"
.LASF72:
	.string	"tail"
.LASF69:
	.string	"Temp"
.LASF22:
	.string	"_IO_write_end"
.LASF42:
	.string	"_prevchain"
.LASF89:
	.string	"_IO_lock_t"
.LASF88:
	.string	"_IO_FILE"
.LASF67:
	.string	"Ekin"
.LASF61:
	.string	"time"
.LASF70:
	.string	"Pres"
.LASF14:
	.string	"time_t"
.LASF15:
	.string	"float"
.LASF64:
	.string	"fopen"
.LASF28:
	.string	"_markers"
.LASF60:
	.string	"srand"
.LASF65:
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
.LASF76:
	.string	"fxyz"
.LASF81:
	.string	"epotm"
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
.LASF84:
	.string	"fwrite"
.LASF40:
	.string	"_freeres_list"
.LASF39:
	.string	"_wide_data"
.LASF79:
	.string	"start"
.LASF91:
	.string	"main"
.LASF20:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/users/cp2025/cp2025_093/lab3/beta"
.LASF0:
	.string	"tiny_md.c"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
