//
//  AppDelegate.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.
//
//

#import <UIKit/UIKit.h>



@interface AppDelegate : UIResponder <UIApplicationDelegate, NSXMLParserDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *sourceData;

-(void) loadDataFromXML;

@end
