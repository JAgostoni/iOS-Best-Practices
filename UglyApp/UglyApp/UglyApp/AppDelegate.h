//
//  AppDelegate.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AppDelegate : UIResponder <UIApplicationDelegate, NSXMLParserDelegate>


@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *sourceData;

-(void) loadDataFromXML;

@end
