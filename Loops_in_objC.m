#include <stdio.h>
#include <math.h>
#include <float.h>
// library for boolean operations
#include <stdbool.h>

int main(int argc, const char * argv[]) {
    /*
    float fTemp;

    printf("Enter Temp in F : ");

    scanf("%f", &fTemp);

    float cTemp = (fTemp -32) / 1.8;

    printf("%.1f degrees Celsius\n", cTemp);

    /*
    for (int i = 0; i < argc; i++) {
        printf("arg %d : %s\n", i, argv[i]);
    }
    */
    /*varible types
    short %d
    int %d
    long %ld
    float %f
    double $lf
    char %c
    struct
    */

    // conditionals
    // comparision operators  < > <= >= == !=
    // logical operators && || !
    /*
    int age = 13;

    if (age <= 6){
        // example of scope, j will not be accessable outside of this block
        int j = 13;
        printf("You are in Kindergarden\n");
    } else if (age <= 13){
        printf("You're in Elementary\n");
    } else {
        printf("You're in High school\n");
    }

    if ((age >= 12) || (age <= 13)){
        printf("You're in Elemetary");
    }

    bool isElementary = ((age >= 12) && (age <= 13));

    printf("Is in elementary: %d\n", isElementary);

    // not operator
    printf("Opposite of True : %d\n", (!true));

    // ternary operator
    bool isHighSchool = (age > 13) ? 1 : 0;

    printf("Is in HS : %d\n", isHighSchool);
    */
    /*
    // more on for loops
    for (int i = 1; i <= 10; i++) {
        if (i == 9) {
            // this is how you end a loop when a block of code is executed
            break;
        }
        if (i == 7) {
            // this is how you skip a block without breaking out of the whole loop
            continue;
        }
        // will print all odd numbers
        if (i % 2) {
            printf("i :%d\n", i);
        }
    }
    */

    // while and do-while loops
    int j = 1;
    // while loop will run the loop only if the condidtion is met
    while (j <= 10) {
        printf("j : %d\n", j);
        j++;
    }

    // do while loop will run the block of code at least once and then check to see if the condiction is still met
    int guess;

    do {
        printf("Guess Between 0 and 20 : ");
        // how you get input from the user, the var for the input is passed as a reference
        scanf("%d", &guess);
    } while (guess != 15);

    return 0; 
} 