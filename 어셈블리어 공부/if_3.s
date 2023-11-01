	.text
	.file	"if_3.c"
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$2, -12(%rbp)
	movl	$3, -16(%rbp)
	movl	$111111, -20(%rbp)              # imm = 0x1B207
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB0_2
# %bb.1:
	movl	$1, -20(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$22222222, -20(%rbp)            # imm = 0x153158E
.LBB0_3:
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-16(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:
	movl	$3, -20(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	$3333333, -20(%rbp)             # imm = 0x32DCD5
.LBB0_6:
	movl	-20(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -24(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -24(%rbp)
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
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
	.asciz	"%d 999999999"
	.size	.L.str, 13

	.ident	"Apple clang version 14.0.0 (clang-1400.0.29.202)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
