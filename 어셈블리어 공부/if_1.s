    .text  ; 텍스트 섹션 시작
    .file	"if_1.c"  ; 소스 파일 이름
    .globl	main  ; main 함수를 전역적으로 사용 가능하게 선언
    .p2align	4, 0x90  ; 메모리 정렬 지시자
    .type	main,@function  ; main은 함수 타입임을 선언
main:  ; main 함수 시작
    .cfi_startproc  ; CFI (Call Frame Information) 시작
    pushq	%rbp  ; 기존의 base pointer 값을 스택에 저장
    .cfi_def_cfa_offset 16  ; CFA (Canonical Frame Address) 오프셋 정의
    .cfi_offset %rbp, -16  ; RBP 레지스터의 CFI 오프셋 정의
    movq	%rsp, %rbp  ; 현재의 stack pointer 값을 base pointer로 복사
    .cfi_def_cfa_register %rbp  ; CFA 레지스터를 RBP로 설정 
    movl	$0, -4(%rbp)  ; int a = 1; - 변수 a를 선언하고 1로 초기화 
    movl	$1, -8(%rbp)  ; int b = 2; - 변수 b를 선언하고 2로 초기화
    movl	-8(%rbp), %eax  ; 변수 a의 값을 eax 레지스터에 로드
    cmpl	-12(%rbp), %eax  ; 변수 b의 값과 eax 레지스터의 값을 비교
    jle	.LBB0_2  ; a > b의 조건이 false이면 .LBB0_2로 점프
    movl	$1, -16(%rbp)  ; int c = 1; - 변수 c를 선언하고 1로 초기화
    jmp	.LBB0_3  ; .LBB0_3로 무조건 점프
.LBB0_2:
    movl	$2, -20(%rbp)  ; int c = 2; - 변수 c를 선언하고 2로 초기화
.LBB0_3:
    movl	-8(%rbp), %eax  ; 변수 a의 값을 eax 레지스터에 로드
    cmpl	-12(%rbp), %eax  ; 변수 b의 값과 eax 레지스터의 값을 비교
    jne	.LBB0_5  ; a == b의 조건이 false이면 .LBB0_5로 점프
    movl	$3, -24(%rbp)  ; int c = 3; - 변수 c를 선언하고 3으로 초기화
    jmp	.LBB0_6  ; .LBB0_6로 무조건 점프
.LBB0_5:
    movl	$4, -28(%rbp)  ; int c = 4; - 변수 c를 선언하고 4로 초기화
.LBB0_6:
    movl	-4(%rbp), %eax  ; 변수 a의 값을 eax 레지스터에 로드 (사실상 필요없는 동작)
    popq	%rbp  ; 스택에서 원래의 base pointer 값을 복원
    .cfi_def_cfa %rsp, 8  ; CFA 레지스터를 RSP로 재설정
    retq  ; 함수 종료하고 호출자로 돌아감
.Lfunc_end0:
    .size	main, .Lfunc_end0-main  ; 함수 크기 정보
    .cfi_endproc  ; CFI 종료
    .ident	"Apple clang version 14.0.0 (clang-1400.0.29.202)"  ; 컴파일러 버전 정보
    .section	".note.GNU-stack","",@progbits  ; GNU 스택 섹션
    .addrsig  ; 주소 서명

/*
[왜 test는 안 쓰였지?]
test 명령어는 두 오퍼랜드의 AND 연산을 수행하고 결과에 따라 플래그를 설정하지만, 결과를 저장하지 않습니다. 
이 명령어는 주로 조건부 점프를 위해 사용되며, 특히 값이 0인지 아닌지를 확인하기 위해 사용됩니다.

반면, cmp 명령어는 두 오퍼랜드를 비교하기 위해 사용되며, 뺄셈 연산을 수행하고 그 결과에 따라 플래그를 설정하지만 결과를 저장하지 않습니다.

주어진 C 코드에서는 변수 a와 b의 비교가 필요하므로, 어셈블리 코드에서 cmp 명령어를 사용했습니다. 
test 명령어는 이 경우에 적합하지 않습니다, 왜냐하면 test 명령어는 비트 AND 연산을 수행하고, 이는 주어진 C 코드의 로직을 정확하게 표현하지 못하기 때문입니다.

따라서, 어셈블리 코드에서 cmp 명령어가 사용되고 test 명령어는 사용되지 않았습니다.
*/