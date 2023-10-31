	.text
	.file	"hello.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI0_0:
	.long	0x40066666                      # float 2.0999999
.LCPI0_1:
	.long	0x3f9df3b6                      # float 1.23399997
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movss	-56(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.1, %rdi
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	leaq	-320(%rbp), %rsi
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	scanf
	leaq	-320(%rbp), %rsi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	leaq	-330(%rbp), %rdi
	movl	$.L.str.5, %esi
	callq	strcpy
	leaq	-330(%rbp), %rsi
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, -336(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -340(%rbp)
	cvtsi2ssl	-336(%rbp), %xmm0
	addss	-340(%rbp), %xmm0
	movss	%xmm0, -344(%rbp)
	movss	-344(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.1, %rdi
	movb	$1, %al
	callq	printf
	movl	$0, -348(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -348(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-348(%rbp), %esi
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-348(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -348(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	leaq	-352(%rbp), %rsi
	movb	$0, %al
	callq	scanf
	cmpl	$1, -352(%rbp)
	jne	.LBB0_6
# %bb.5:
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB0_12
.LBB0_6:
	cmpl	$2, -352(%rbp)
	jne	.LBB0_8
# %bb.7:
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
.LBB0_8:
	cmpl	$3, -352(%rbp)
	jne	.LBB0_10
# %bb.9:
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB0_11
.LBB0_10:
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	printf
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	xorl	%eax, %eax
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%i \n"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%f \n"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Hello. \354\235\264\353\246\204\354\235\264 \353\255\220\354\227\220\354\232\224?: "
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s \353\213\230 \353\260\230\352\260\221\354\212\265\353\213\210\353\213\244. \n"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\352\271\200\353\215\225\353\260\260"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s \n"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"[%i]"
	.size	.L.str.7, 5

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\354\210\253\354\236\220 \354\236\205\353\240\245\355\225\264\353\263\264\354\204\270\354\232\224: "
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%i"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"1\354\236\205\353\213\210\353\213\244! \n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"2\354\236\205\353\213\210\353\213\244! \n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"3\354\236\205\353\213\210\353\213\244! \n"
	.size	.L.str.13, 14

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"1,2,3 \354\225\204\353\213\230 \n"
	.size	.L.str.14, 15

	.ident	"Apple clang version 14.0.0 (clang-1400.0.29.202)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym scanf
	.addrsig_sym strcpy
