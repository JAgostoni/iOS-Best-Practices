//
//  DataXMLParser.h
//  UglyApp
//
//  Created by Jason Agostoni on 6/5/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataXMLParser : NSObject<NSXMLParserDelegate>
-(void) loadDataFromXML;
@end
