#include <stdio.h>
#include <stdlib.h>

/*
빈 Linked List를 생성하고, malloc 함수를 사용하여 노드를 동적으로 할당합니다. 
각 노드는 데이터와 다음 노드를 가리키는 포인터를 포함하며, 노드들은 포인터를 통해 서로 연결됩니다.

이러한 기본적인 개념을 이해하고 나면, Linked List에 대한 추가 기능(예: 노드 추가, 삭제, 검색 등)을 구현하고 확장할 수 있습니다.
*/

// 노드 구조체 정의
struct Node {
    int data;
    struct Node* next; // Node 타입을 담는 포인터. next라는 이름으로 정의
};

int main(void){

    //// 연결 리스트 생성, 노드 추가
    // struct Node* head = NULL; // stuct Node 타입 객체를 가리키는 head 포인터 생성, NULL로 초기화
    // 첫번째 노드 생성
    // head = (struct Node*)malloc(sizeof(struct Node)); // head가 가리키는 곳에 노드 구조체의 사이즈만큼의 메모리를 할당해라!
    struct Node* head = (struct Node*)malloc(sizeof(struct Node)); // head가 가리키는 곳에 노드 구조체의 사이즈만큼의 메모리를 할당해라!

    head -> data = 10; // head가 가리키는 객체의 data 필드에 10을 저장해라!
    head -> next = NULL; // head가 가리키는 객체의 next 필드에는 NULL 을 저장! (이게 마지막 노드)

    // 두번째 노드 생성
    struct Node* second = (struct Node*)malloc(sizeof(struct Node));  // 두 번째 노드 생성
    second -> data = 2;
    second -> next = NULL;
    head -> next = second; 


    // 메모리 해제
    free(head);

    return 0;

}





