	.text
	.file	"loop_1.c"
	.globl	main                            # -- Begin function main
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, -8(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$3, -12(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
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
	.asciz	"\354\225\210\353\205\225\355\225\230\354\204\270\354\234\240 \n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"while\353\254\270 %i\353\262\210\354\247\270 \353\217\210\353\213\244! \n"
	.size	.L.str.1, 28

	.ident	"Apple clang version 14.0.0 (clang-1400.0.29.202)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
