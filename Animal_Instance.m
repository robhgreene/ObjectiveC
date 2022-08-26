#import "Animal.h"

@implementation Animal

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"No Name";
    }
    return self;
}

- (instancetype) initWithName:(NSString *)defaultName

@end
 
