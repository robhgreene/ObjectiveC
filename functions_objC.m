#include <stdio.h>
#include <math.h>
#include <float.h>
#include <stdbool.h>

// this is global var that can be accessed by the entire program
float piVal1 = 3.14;

// a static var can only be accessed by functions
static float piVal2 = 3.14;
// we are passing in the char as a pointer because it will be an array of chars
// void means there is not return value
void convertData(char *name, float height, float weight) {
    height = height * 12 * 2.54;
    weight = weight * .453592;
    printf("%s is %.1f cms tall and weights %.2f kg\n", name, height, weight);
}

float sum(float num1, float num2) {
    return num1 + num2;
}
// takes a reference to var. Any changes to the var in the functions will persist
void chagedNumber(int *number) {
    *number = 98765;
}

// structs
// here we define a struct, you then create an instance of that struct in the program
struct Superhero {
    char *realName;
    char *superName;
    float height;
    float weight;
};

int main(int argc, const char * argv[]) {

    struct Superhero superman;
    // use the dot operator to change the properties
    superman.realName = "Clark Kent";
    superman.superName = "Superman";
    superman.height = 6.25;
    superman.weight = 235;

    printf("%s is the hero named %s. He is %.2f ft tall and weighs %.1f lbs\n", superman.realName, superman.superName, superman.height, superman.weight);
    /*
    char *name = "Derek";

    convertData(name, 6.25, 179);

    printf("5 + 6 = %.1f\n", sum(5,6));
    */
    // pointers are references to memory addresses
    int randNum = 12345;

    printf("randNum location : %p\n", &randNum);

    // the pointer is being assigned the address to a variable
    int *addrRandNum = &randNum;

    // to access the value at the memory address, dereference the pointer
    *addrRandNum = 54321;

    printf("randNum value : %d\n", randNum);
    
    // even if we change the value of a dereferenced pointer, the address will still stay the same
    printf("randNum Memory Location : %p\n", &randNum);

    // getting the number of bytes that a var is
    printf("randNum is %zu bytes\n", sizeof(randNum));

    // passing by reference
    int number = 12345;

    chagedNumber(&number);

    printf("number Value : %d\n", number);



    return 0;
}