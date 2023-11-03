	.text
	.file "loop_1.c"
	.globl main # -- Begin function main
	.p2align 4, 0x90
	.type main,@function
main: # @main
	.cfi_startproc
# %bb.0:
	pushq %rbp # 현재 베이스 포인터를 스택에 푸시
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq %rsp, %rbp # 스택 포인터를 베이스 포인터로 복사
	.cfi_def_cfa_register %rbp
	subq $16, %rsp # 스택에 지역 변수 공간 확보 (16바이트 만큼)
	movl $0, -4(%rbp) # 첫 번째 for 루프 카운터 초기화 
	movl $0, -8(%rbp) # 두 번째 for 루프 카운터 초기화 (for문의 int i = 0)

# ---------- for문 시작 --------------
# ----------------------------------

.LBB0_1: # =>This Inner Loop Header: Depth=1
	cmpl $3, -8(%rbp) # 루프 조건 검사
	jge .LBB0_4 # 카운터가 3 이상이면 -------------------> 루프 종료로 점프

# %bb.2: # in Loop: Header=BB0_1 Depth=1
	movabsq $.L.str, %rdi # 첫 번째 문자열 주소를 인자로 로드
	movb $0, %al # 가변 인자 목록을 나타내는 al 레지스터를 0으로 초기화
	callq printf # printf 호출

# 아래 내용으로 보아, i++ 연산을 for문 시작점이 아니라 마지막에 수행하는 것임을 알 수 있음 
# %bb.3: # in Loop: Header=BB0_1 Depth=1
	movl -8(%rbp), %eax # 루프 카운터를 eax에 로드
	addl $1, %eax # 카운터 증가
	movl %eax, -8(%rbp) # 증가된 값을 다시 저장
	jmp .LBB0_1 # ----------------------------------> 루프 시작점으로 점프

# ---------- for문 종료 --------------
# ----------------------------------

.LBB0_4:
	movl $3, -12(%rbp) # while 루프 카운터 초기화 (int i = 3)

# ---------- while문 시작 --------------	
# ------------------------------------

.LBB0_5: # =>This Inner Loop Header: Depth=1
	cmpl $0, -12(%rbp) # 루프 조건 검사
	jle .LBB0_7 # 카운터가 0 이하면 루프 종료로 점프 (jle -> jump less or equal) i가 0보다 작아지면

# %bb.6: # in Loop: Header=BB0_5 Depth=1
	movl -12(%rbp), %esi # 카운터를 esi에 로드
	movabsq $.L.str.1, %rdi # 두 번째 문자열 주소를 인자로 로드
	movb $0, %al # 가변 인자 목록을 나타내는 al 레지스터를 0으로 초기화
	callq printf # printf 호출
	movl -12(%rbp), %eax # while 루프 카운터를 eax에 로드
	addl $-1, %eax # 카운터 감소
	movl %eax, -12(%rbp) # 감소된 값을 다시 저장
	jmp .LBB0_5 # 루프 시작점으로 점프


# ------------- while문 종료 --------------
# ----------------------------------------

.LBB0_7:
	movl -4(%rbp), %eax # 함수의 반환 값(여기서는 사용되지 않음)을 eax에 로드
	addq $16, %rsp # 사용한 스택 공간 해제
	popq %rbp # 이전 베이스 포인터 복원
	.cfi_def_cfa %rsp, 8
	retq # 함수 종료 및 호출자로 복귀
.Lfunc_end0:
	.size main, .Lfunc_end0-main
	.cfi_endproc
# -- End function
	.type .L.str,@object # @.str
	.section .rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz "\354\225\210\353\205\225\355\225\230\354\204\270\354\234\240 \n"
	.size .L.str, 18

.type .L.str.1,@object # @.
