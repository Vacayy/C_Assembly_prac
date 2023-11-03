#include <stdio.h> // 헤더파일 for 표준 입출력 함수 (printf, scanf ..)
#include <string.h> // 헤더파일 for 표준 문자열 처리 함수

int main(void)
{
    // int, 배열
    int int_arr[10];
    int_arr[1] = 1;
    int a1 = int_arr[1];    
    printf("%i \n", a1);

    // float
    float ff = 1.234;
    printf("%f \n", ff);

    // char
    char name[256]; // name이라는 256 길이의 문자열 만들기    
    printf("Hello. 이름이 뭐에요?: ");
    scanf("%s", name); // string 입력받아서 name 변수에 넣기. 
    // 배열 이름은 자동으로 배열[0]의 주소를 가리킴
    /* 
    그러나, 주의할 점은 scanf가 문자열의 끝을 나타내는 null 문자 (\0)를 자동으로 추가한다는 것입니다. 
    그렇기 때문에 name 배열에 충분한 공간이 있어야 합니다. 
    위의 코드에서 name 배열의 크기는 256으로 설정되어 있어, 
    최대 255개의 문자를 저장할 수 있고, 마지막 문자는 null 문자 (\0)가 됩니다.
    */

    printf("%s 님 반갑습니다. \n", name);

    // 문자열에 문자 넣기 - strcpy() 함수
    char name1[10];
    strcpy(name1, "김덕배");
    printf("%s \n", name1);

    // 연산자
    int a = 1;
    float b = 2.1;    
    float ab =  a+b;
    printf("%f \n", ab);

    // for문
    for(int i=0; i<4; i++){
        printf("[%i]", i);
    };
    printf("\n");

    // if문 테스트
    int test_if;
    printf("숫자 입력해보세요: ");
    scanf("%i", &test_if); // 그냥 test_if가 아니라 test_if의 주소를 줘야 함
    
    if (test_if == 1){
        printf("1입니다! \n");
    } else {
        if (test_if == 2) { // elif 
            printf("2입니다! \n");} 
        if (test_if == 3) { // elif
            printf("3입니다! \n");} 
        else { // else
            printf("1,2,3 아님 \n");} 
    };
    return 0;
}