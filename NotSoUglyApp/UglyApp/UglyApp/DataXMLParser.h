//
//  DataXMLParser.h
//  UglyApp
//
//  Created by Jason Agostoni on 5/26/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataModel.h"

NSString *currentElement;
NSMutableString *currentContent;

@interface DataXMLParser : NSObject<NSXMLParserDelegate>

-(void) loadDataFromXML;

@end
