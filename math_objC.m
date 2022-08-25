#include <stdio.h>
//math functions library
#include <math.h>
//float library
#include <float.h>
#include <stdbool.h>

int main(int argc, const char * argv[]) {
    /*
    printf("Min Float : %e\n", FLT_MIN);
    printf("Max Float : %e\n", FLT_MAX);
    
    float pi = 3.1415926;

    //we lose percision with floats when they go beyond 6 digits
    printf("3.1415926 + .0000001 = %.7f\n", pi + .0000001);
    // FLT_DIG is how many floating digits 
    printf("Precise Decimal Digits : %d\n", FLT_DIG);
    */
    /*
    printf("3 + 2 = %d\n", 3 + 2);
    printf("3 - 2 = %d\n", 3 - 2);
    printf("3 * 2 = %d\n", 3 * 2);
    printf("3 / 2 = %d\n", 3 / 2);
    // use a double % for modulus
    printf("3 %% 2 = %d\n", 3 % 2);
    // example of use cast to convet an int to a float
    // preceed a %f printed var with the number of decimal places that you want to display
    printf("3 / 2 = %.2f\n", 3 / (float) 2);
    */

    // order of operations PEMDAS
    printf("2 + 1 * 3 = %d\n", 2 + 1 * 3);
    printf("(2 + 1) * 3 = %d\n", (2 + 1) * 3);

    // pre-fix vs post-fix
    // i++, the value of i will be printed before incrimented
    int i = 0;
    printf("i++ = %d\n", i++);
    printf("++i = %d\n", ++i);
    printf("i += 5 %d\n", i += 5);
    printf("i -= 5 %d\n", i -= 5);
    printf("i *= 5 %d\n", i *= 5);
    printf("i /= 5 %d\n", i /= 5);

    // some of the other math functions available are:
    // squart root, ceiling, floor, absolute value, exponents, logs, powers etc


    return 0;
}