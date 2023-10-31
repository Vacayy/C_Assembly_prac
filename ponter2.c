#include <stdio.h>


int main(void){
    int x = 10;
    // & 연산자 (주소 연산자), 포인터
    int *ptr_x = &x; // ptr은 x의 메모리 주소를 가리킴 // &x는 변수 x의 메모리 주소값
    // * 연산자 (역참조 연산자)
    int y = *ptr_x;  // *ptr_x는 ptr_x가 가리키는 메모리 주소에 들어있는 값 (10)

    printf("%p \n", ptr_x); // 표지판(메모장). 메모장에 적어둔 집 주소를 출력
    printf("%p \n", &x); // 주소. 집으로 찾아가서 주소 출력
    printf("%i \n", *ptr_x); // 값. 메모장에 적힌 주소에 살고있는 사람 출력

};