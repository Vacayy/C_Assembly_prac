#include <stdio.h>
#include <string.h>


struct Student {
    char name[50];
    int id;
    float grade;
};

// 함수 프로토타입 선언 (컴파일러에게 함수 존재 알려주기)
void printName(struct Student someone);
void modifyGrade(struct Student *someone, float new_grade);
struct Student createStudent(char name[50], int id, float grade);

int main(void){
    // 구조체 타입의 변수를 선언.
    struct Student student1; // student1이라는 이름의 Student 구조체 인스턴스를 만듦. 

    // 각 멤버에 대한 값을 초기화
    strcpy(student1.name, "Jay"); // 문자열을 복사하는 함수 strcpy를 사용
    student1.id = 1;
    student1.grade = 4.0;

    printf("%s \n", student1.name); // "Jay"
    printf("%i \n", student1.id); // 1
    printf("%f \n", student1.grade); // 4.000 ..

    // 구조체 변수 선언 + 값 초기화
    struct Student student2 = {"Alice", 2, 3.5};

    printf("%s \n", student2.name); // "Alice"
    printf("%i \n", student2.id); // 2
    printf("%f \n", student2.grade); // 3.500 .. 

    ////////////// 구조체와 함수 ///////////
    // 구조체를 함수의 인자로 전달하기
    printName(student1); // Jay, 1, 4.00..

    // 주소값 건네주기
    modifyGrade(&student1, 3.5);
    printName(student1); // Jay, 1, 3.500..


    /////////////// 구조체 배열 //////////////
    // student1, student2 .. 언제 하나하나 다 만듦? 
    struct Student students[10]; // 10명의 학생을 저장할 수 있는 Student 구조체 배열 선언

    strcpy(students[0].name, "김덕배"); // 0번째 학생 정보 저장
    students[0].id = 4;
    students[0].grade = 3.3;

    ///////////// 구조체 포인터 ///////////////
    struct Student student10; // 구조체 변수 선언
    struct Student *p10 = &student10; // 선언한 놈을 가리키는 포인터 p10

    p10 -> id = 10; // p10이 담고있는 주소로 가서(->) id를 10으로 지정하라
    



}

// printName 함수 정의
void printName(struct Student someone){
    printf("%s, %d, %f \n", someone.name, someone.id, someone.grade);
}


// modifyGrade 함수 정의
void modifyGrade(struct Student *someone, float new_grade) {
    someone->grade = new_grade; // 포인터를 통해 멤버에 접근
}


struct Student createStudent(char name[50], int id, float grade) {
    struct Student new_Student = {name[50], id, grade};
    return new_Student;
}


