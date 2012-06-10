//
//  DataModel.h
//  UglyApp
//
//  Created by Jason Agostoni on 6/5/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import <Foundation/Foundation.h>
extern NSString* const DataModelChangedNotification;

@interface DataModel : NSObject
@property (strong, nonatomic) NSMutableArray *sourceData;



+(DataModel *) sharedInstance;

+(void) add: (NSString *) string;
+(void) remove: (NSUInteger) atIndex;

-(void) fireDataChanged;
@end
