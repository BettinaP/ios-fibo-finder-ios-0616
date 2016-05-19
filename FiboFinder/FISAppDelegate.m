//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */

-(NSArray *) arrayWithFibonacciSequenceToIndex:(NSUInteger)index {
    
    NSMutableArray *sequence = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < index + 1; i++)
    {
        if (i == 0){
            [sequence addObject: @0];
        } else if (i == 1){
            [sequence addObject:@1];
        } else {
            NSUInteger firstConvert = [sequence[i-1] unsignedIntegerValue];
            NSUInteger secondConvert = [sequence[i-2] unsignedIntegerValue];
            
            NSUInteger nextNumber = firstConvert + secondConvert;
            [sequence addObject:@(nextNumber)];
        }
    }
    
    NSLog(@"%@",sequence);
    return sequence;
}

@end
