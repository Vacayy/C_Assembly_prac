	.text
	.file	"if_2.c"
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
# -----------------------
.LBB0_6:
	movl	$0, -24(%rbp) # int i = 0 선언 
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -24(%rbp) # 4와 i 비교
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax # i를 계산대에 올림
	movl	%eax, -28(%rbp) # int y = i (-28 위치에 y 변수 할당)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax # i를 계산대에 올림
	addl	$1, %eax # 1을 더하는 연산 수행
	movl	%eax, -24(%rbp) # 계산 결과를 i에 저장
	jmp	.LBB0_7
.LBB0_10:
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
