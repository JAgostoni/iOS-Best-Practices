//
//  DataModel.m
//  UglyApp
//
//  Created by Jason Agostoni on 6/5/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

@synthesize sourceData = _sourceData;

static DataModel *_instance;

+(DataModel *) sharedInstance {
    if (_instance == nil) {
        _instance = [[self allocWithZone:nil] init];
        _instance.sourceData = [[NSMutableArray alloc] init];        
    }
    
    return _instance;
}

+(void) add: (NSString *) string {
    [[DataModel sharedInstance].sourceData addObject:string];
    [[DataModel sharedInstance] fireDataChanged];
}
+(void) remove: (NSUInteger) atIndex {
    [[DataModel sharedInstance].sourceData removeObjectAtIndex:atIndex];
    [[DataModel sharedInstance] fireDataChanged];
}


NSString * const DataModelChangedNotification = @"DataModelChangedNotification";

-(void) fireDataChanged {
    [[NSNotificationCenter defaultCenter] postNotificationName:DataModelChangedNotification object:nil];
}


@end
