//
//  SingletonSample.m
//  BigBallOfMud
//
//  Created by Jason Agostoni on 1/22/12.
//

#import "SingletonSample.h"



@implementation SingletonSample

@synthesize someData;

#pragma mark Singleton Implementation
static SingletonSample *sharedObject;
+ (SingletonSample*)sharedInstance
{
    if (sharedObject == nil) {
        sharedObject = [[super allocWithZone:NULL] init];
    }
    return sharedObject;
}



/* Pre iOS 5 ARC - Implement for iOS 4 and earlier
+ (id)allocWithZone:(NSZone *)zone
{
    return [[self sharedInstance] retain];
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)retain
{
    return self;
}

- (NSUInteger)retainCount
{
    return NSUIntegerMax;  //denotes an object that cannot be released
}

- (void)release
{
    //do nothing
}

- (id)autorelease
{
    return self;
}
*/


#pragma mark Shared Public Methods
+(NSString *) getSomeData {
    // Ensure we are using the shared instance
    SingletonSample *shared = [SingletonSample sharedInstance];
    return shared.someData;
}

+(void) setSomeData:(NSString *)someData {
    // Ensure we are using the shared instance
    SingletonSample *shared = [SingletonSample sharedInstance];
    shared.someData = someData;
}
@end
