#include <stdio.h>
#include <stdlib.h>

int main(){
    // 1차원 배열 동적 할당
    int *arr1 = (int *)malloc(10 * sizeof(int)); // int 10개 크기의 배열 할당
    arr1[0] = 1;

    printf("%i \n", arr1[0]); // 1

    // 2차원 배열 동적 할당
    int **arr2 = (int **)calloc(10, sizeof(int *)); // 포인터의 배열 할당
    for(int i = 0; i < 10; i++){
        arr2[i] = (int *)calloc(10, sizeof(int));
    };    

    arr2[1][5] = 15;
    // printf("%i \n", arr2[1][5]); // 15
    // printf("%i \n", arr2[1][1]); // 0 (할당되지 않음)
    for(int i = 0; i < 10; i++){
        printf("%i", *arr2[i]);
    };    

};

