//
//  DataXMLParser.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.

//

#import <Foundation/Foundation.h>
#import "DataModel.h"

NSString *currentElement;
NSMutableString *currentContent;

@interface DataXMLParser : NSObject<NSXMLParserDelegate>

-(void) loadDataFromXML;

@end
