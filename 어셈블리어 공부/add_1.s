	.text
	.file	"test1.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
    .cfi_startproc
    # %bb.0:
    pushq    %rbp                        # 현재의 베이스 포인터 값을 스택에 백업합니다. 이는 이전 함수 프레임의 베이스 포인터 값을 보존하기 위함입니다.
    .cfi_def_cfa_offset 16
    .cfi_offset %rbp, -16
    movq    %rsp, %rbp                   # 현재의 스택 포인터 값을 베이스 포인터에 복사합니다. 이는 현재 함수 프레임의 베이스 포인터 값을 설정하기 위함입니다.
    .cfi_def_cfa_register %rbp
    movl    $1, -4(%rbp)                 # int a = 1; (변수 a를 값 1로 초기화합니다. 변수 a는 베이스 포인터로부터 -4의 오프셋에 위치합니다.)
    movl    $2, -8(%rbp)                 # int b = 2; (변수 b를 값 2로 초기화합니다. 변수 b는 베이스 포인터로부터 -8의 오프셋에 위치합니다.)
    movl    -4(%rbp), %eax               # 변수 a의 값을 레지스터 %eax에 로드합니다.
    addl    -8(%rbp), %eax               # 변수 b의 값을 레지스터 %eax에 더하여 a + b의 결과를 %eax에 저장합니다.
    movl    %eax, -12(%rbp)              # int c = a + b; (a + b의 결과인 %eax의 값을 변수 c에 저장합니다. 변수 c는 베이스 포인터로부터 -12의 오프셋에 위치합니다.)
    xorl    %eax, %eax                   # 반환 값으로 0을 설정합니다. (%eax 레지스터를 0으로 만듭니다. main 함수의 표준 반환 값은 0입니다.)
    popq    %rbp                         # 스택에서 이전 베이스 포인터 값을 복원하여 현재 함수 프레임 이전의 베이스 포인터 값을 복구합니다.
    .cfi_def_cfa %rsp, 8
    retq                                # 호출자에게 제어를 반환하며, 이는 main 함수의 종료를 의미합니다.
.Lfunc_end0:
    .size    main, .Lfunc_end0-main
    .cfi_endproc
                                        # -- End function
    .ident    "Apple clang version 14.0.0 (clang-1400.0.29.202)"
    .section    ".note.GNU-stack","",@progbits
    .addrsig
