//
//  DataModel.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.

//

#import <Foundation/Foundation.h>

extern NSString* const DataModelChangedNotification;

@interface DataModel : NSObject

@property (strong, nonatomic, readonly) NSMutableArray *sourceData;

+(DataModel *) sharedInstance;
+(NSArray *) items;

+(void) add:(NSString *) string;
+(void) remove:(NSUInteger) atIndex;

-(void) fireDataChanged;
@end
