#include <stdio.h>

int main(int argc, const char * argv[]) {
    //data types are based on the amount of memory that needs to be allocated
    //this is the largest int we can store
    int bigInt = 2147483647;

    //if we add 1 to the largest int, it is going to be negative because it will
    //circle around and start couting up
    printf("Big Int : %d", bigInt + 1 );

    //largest long int
    long bigLong = 9223372036854775807;

    printf("Big Long : %ld\n", bigLong + 1 );

    return 0;
}