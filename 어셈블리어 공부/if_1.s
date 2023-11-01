	.text
	.file	"if_1.c"
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
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$2, -12(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB0_2
# %bb.1:
	movl	$1, -16(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$2, -20(%rbp)
.LBB0_3:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_5
# %bb.4:
	movl	$3, -24(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	$4, -28(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"Apple clang version 14.0.0 (clang-1400.0.29.202)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
