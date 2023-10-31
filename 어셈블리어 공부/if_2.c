// #include <stdio.h>

int main(void){
    int a = 1;
    int b = 2;
    int c = 3;

    int z = 111111;

    if (a > b){
        z = 1;
    } else {
        z = 22222222;
    };


    if ((c > a) & (c > b)){
        z = 3;
    } else {
        z = 3333333;
    };

    // printf("%d", z);

    for (int i = 0; i < 4; i++){
        int y = i;
    };
} 
