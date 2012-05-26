//
//  DataModel.m
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import "DataModel.h"


NSString * const DataModelChangedNotification = @"DataModelChangedNotification";

@implementation DataModel
@synthesize sourceData = _sourceData;


static DataModel *_instance;

+(DataModel *) sharedInstance {
    if (_instance == nil) {
        _instance = [[self allocWithZone:nil] init];
    }
    
    return _instance;
}

-(id)init {
    if ([super init]) {
        _sourceData = [[NSMutableArray alloc] init];
    }

    return self;
}

+(NSArray *) items {
    return [DataModel sharedInstance].sourceData;
}

+(void) add:(NSString *) string {
    [[DataModel sharedInstance].sourceData addObject:string];
    [[DataModel sharedInstance] fireDataChanged];

}

+(void) remove:(NSUInteger) atIndex {
    [[DataModel sharedInstance].sourceData removeObjectAtIndex:atIndex];
    [[DataModel sharedInstance] fireDataChanged];
}


-(void) fireDataChanged {
    [[NSNotificationCenter defaultCenter] postNotificationName:DataModelChangedNotification object:nil];
}

@end
