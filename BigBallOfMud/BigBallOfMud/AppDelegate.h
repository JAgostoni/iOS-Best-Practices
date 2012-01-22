//
//  AppDelegate.h
//  BigBallOfMud
//
//  Created by Jason Agostoni on 1/22/12.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    // Old way: Instance storage on the app delegate
    NSString* someData;
}

// Old way: Instance property on the app delegate
@property(strong, nonatomic) NSString *someData;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
