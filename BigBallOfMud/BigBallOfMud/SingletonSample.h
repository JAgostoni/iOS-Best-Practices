//
//  SingletonSample.h
//  BigBallOfMud
//
//  Created by Jason Agostoni on 1/22/12.
//

#import <Foundation/Foundation.h>

@interface SingletonSample : NSObject {
    // Instance variables:
    //   - Declare as usual.  The alloc/sharedIntance.
    NSString *someData;
}

// Properties as usual
@property (nonatomic, retain) NSString *someData;


// Required: A method to retrieve the shared instance
+(SingletonSample *) sharedInstance;


// Shared Public Methods:
//   - Using static methods for opertations is a nice convenience
//   - Each method should ensure it is using the above sharedInstance
+(NSString *) getSomeData;
+(void) setSomeData:(NSString *)someData;


// Instance Methods: Declare and implement as usual
@end
