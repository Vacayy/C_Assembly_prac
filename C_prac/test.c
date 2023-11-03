#include <stdio.h>

int main(void){
    long x = 1;
    long y = 1;
    long t1 = x^y;

    long a = 10; // 1010
    long b = 8;  // 1000
    long t2 = a^b; // 0010 = 2

    printf("a^b: %ld", t2);
}