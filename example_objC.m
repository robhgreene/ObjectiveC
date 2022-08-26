#import <Foundation/Foundation.h>
 
int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    /*
    NSArray *officeSupplies = @[@"Pencils", "@Paper"];

    NSLog(@"First : %@", officeSupplies[0]);
    NSLog(@"Office Supplies : %@", officeSupplies);

    BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
    NSLog(@"Need Pencils : %d", containsItem);

    NSLog(@"Total : %d", (int)[officeSupplies count]);

    NSLog(@"Index of Pencils is at %lu", (unsigned long)[officeSupplies
        indexOfObject:@"Pencils"]);
    */

    NSMutableArray *heros = [NSMutableArray arrayWithCapacity:5];
    [heros addObject:@"Batman"];
    [heros addObject:@"Flash"];
    [heros addObject:@"Wonder Woman"];
    [heros addObject:@"Kid Flash"];

    [heros insertObject:@"Superman" atIndex:2];
    /*
    NSLog(@"%@", heros);

    [heros removesObject:@"Flash"];
    */

    [pool drain];
    return 0;
}
