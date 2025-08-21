	.file	"wtime.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_093/lab3/beta" "wtime.c"
	.p2align 4
	.globl	wtime
	.type	wtime, @function
wtime:
.LFB0:
	.file 1 "wtime.c"
	.loc 1 7 1 view -0
	.cfi_startproc
	.loc 1 8 5 view .LVU1
	.loc 1 9 5 view .LVU2
	.loc 1 7 1 is_stmt 0 view .LVU3
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 9 5 view .LVU4
	movl	$1, %edi
	movq	%rsp, %rsi
	call	clock_gettime@PLT
.LVL0:
	.loc 1 11 5 is_stmt 1 view .LVU5
	.loc 1 11 17 is_stmt 0 view .LVU6
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	8(%rsp), %xmm1, %xmm0
	.loc 1 11 32 view .LVU7
	vcvtsi2sdq	(%rsp), %xmm1, %xmm1
	.loc 1 11 30 view .LVU8
	vfmadd132sd	.LC0(%rip), %xmm1, %xmm0
	.loc 1 12 1 view .LVU9
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	wtime, .-wtime
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-400107883
	.long	1041313291
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h"
	.file 5 "/usr/include/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x133
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.long	.LASF9
	.byte	0x2
	.byte	0xa0
	.byte	0x12
	.long	0x5f
	.uleb128 0x2
	.long	.LASF10
	.byte	0x2
	.byte	0xa9
	.byte	0xd
	.long	0x58
	.uleb128 0x2
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.byte	0x12
	.long	0x5f
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	.LASF18
	.byte	0x10
	.byte	0x3
	.byte	0xb
	.byte	0x8
	.long	0xb7
	.uleb128 0x3
	.long	.LASF13
	.byte	0x10
	.byte	0xc
	.long	0x66
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x15
	.byte	0x15
	.long	0x7e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x7
	.byte	0x15
	.long	0x72
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x120
	.byte	0xc
	.long	0x58
	.long	0xdf
	.uleb128 0x4
	.long	0xb7
	.uleb128 0x4
	.long	0xdf
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x91
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x6
	.byte	0x8
	.long	0x12f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f
	.uleb128 0xc
	.string	"ts"
	.byte	0x1
	.byte	0x8
	.byte	0x15
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xd
	.quad	.LVL0
	.long	0xc3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"clockid_t"
.LASF18:
	.string	"timespec"
.LASF10:
	.string	"__clockid_t"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"clock_gettime"
.LASF3:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF16:
	.string	"double"
.LASF9:
	.string	"__time_t"
.LASF13:
	.string	"tv_sec"
.LASF4:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF20:
	.string	"wtime"
.LASF17:
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
.LASF14:
	.string	"tv_nsec"
.LASF7:
	.string	"short int"
.LASF5:
	.string	"unsigned int"
.LASF11:
	.string	"__syscall_slong_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/users/cp2025/cp2025_093/lab3/beta"
.LASF0:
	.string	"wtime.c"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
