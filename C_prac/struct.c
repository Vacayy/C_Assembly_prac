#include <stdio.h>
#include <string.h>

// 구조체는 서로 다른 타입의 변수를 묶어 하나의 단위로 관리할 수 있게 해줍니다. 
// 자바의 클래스와 유사한 개념
struct Person {
    char name[100];
    int age;
    float height;
};

int main(void){
    struct Person person1; // 구조체 변수 생성 (자바의 인스턴스 생성과 유사한 개념)

    strcpy(person1.name, "김덕배");
    person1.age = 25;
    person1.height = 177.7;

    printf("%s \n", person1.name);
    printf("%i \n", person1.age);
    printf("%f \n", person1.height);
    printf("%i \n", (int)person1.height);

};

