#include <stdio.h>
#include <string.h>
#include <stdlib.h> // malloc 함수 선언 포함된 헤더 파일

/*
동적 메모리 할당 (malloc, free):
동적 메모리 할당은 프로그램 실행 중에 메모리를 할당하는 것입니다. 
malloc 함수는 지정된 크기의 메모리를 할당하고, 그 메모리의 시작 주소를 반환합니다.
*/

/*

<<'*'가 붙은 타입은 포인터 타입을 가리킴>>
- int* 타입:
    int 타입의 데이터의 메모리 주소를 저장하는 포인터입니다.
    예를 들어, int *ptr; 구문은 ptr이라는 이름의 int 타입 포인터 변수를 선언합니다.

- void* 타입:
    void*는 일반 포인터 타입으로, 어떤 타입의 데이터의 주소도 저장할 수 있습니다.
    void*는 포인터 연산이 허용되지 않으며, 다른 타입의 포인터로 캐스팅해야만 해당 주소의 데이터에 접근할 수 있습니다.
    malloc 함수는 void* 타입의 포인터를 반환하므로, 원하는 데이터 타입의 포인터로 캐스팅이 필요합니다.

*/    

int main(void){
    int *arr = (int*)malloc(5 * sizeof(int)); // 5개의 int 크기의 메모리 할당
    printf("%p \n", (void*)arr); // 포인터 형식으로 출력하거나
    printf("%d \n", arr); // double 형식으로 출력

    // 할당된 메모리는 free 함수를 사용하여 해제해야 합니다.
};
