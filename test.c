#include <stdio.h>

int main(void){
    long x = 1;
    long y = 1;
    long t1 = x^y;

    long a = 10;
    long b = 8;
    long t2 = a^b;

    printf("x와 y 일치?: %ld // a와 b 일치?: %ld", t1, t2);
}