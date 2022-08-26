#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   
   NSLog (@"hello world");

   // non-existent object in memory
   NSString *nothing = nil;

   NSString *quote = @"Dogs have masters, while cats have staff";

   // obj-C way of calling methods
   NSLog(@"Size of String : %d", (int)[quote length]);

   // this is how you pass attributes into a method
   NSLog(@"Character at 5 : %c", [quote characterAtIndex:5]);

   // this is how you do dynamic strings
   // this type of object is immutable, everytime you modify the string, a new one 
   // has to be created
   char *name = "Derek";
   NSString *myName = [NSString stringWithFormat:@"- %s", name];
   
   // testing if two strings are equal
   BOOL isStringEqual = [quote isEqualToString:myName];
   printf("Are strings equal : %d\n", isStringEqual);

   // covert an NSString to a regular string
   // UTF8String is how you convert
   const char *uCString = [[myName uppercaseString]UTF8String];

   printf("%s\n", uCString);

   // combining strings
   NSString *wholeQuote = [quote stringByAppendingString:myName];

   NSRange searchResult = [wholeQuote rangeOfString:@"Derek"];

   if(searchResult.location == NSNotFound) {
      NSLog(@"String not found");
   } else {
      printf("Derek is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
   }

   NSRange range = NSMakeRange(42, 5);
   const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range
      withString:@"Anon"]UTF8String];

   printf("%s, newQuote");

   // if you want to create a mutable string
   NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];

   [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];

   NSLog(@"groceryList: %@", groceryList);

   [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];

   NSLog(@"groceryList : %@", groceryList);

   [groceryList insertString:@", Apple" atIndex:13];

   NSLog(@"groceryList : %@", groceryList);

   [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];

   NSLog(@"groceryList : %@", groceryList);

   [pool drain];
   return 0;
}