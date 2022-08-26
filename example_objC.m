#import <Foundation/Foundation.h>
 
int main (int argc, const char * argv[])
{
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSArray *officeSupplies = @[@"Pencils", @"Paper"];

    NSLog(@"First : %@", officeSupplies[0]);
    NSLog(@"Office Supplies : %@", officeSupplies);
 
   [pool drain];
   return 0;
}
