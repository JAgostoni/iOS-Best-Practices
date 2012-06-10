//
//  DataXMLParser.m
//  UglyApp
//
//  Created by Jason Agostoni on 6/5/12.
//  Copyright (c) 2012 CEI. All rights reserved.
//

#import "DataXMLParser.h"
#import "DataModel.h"

@implementation DataXMLParser
NSString *currentElement;
NSMutableString *currentContent;


-(void) loadDataFromXML {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SampleData" ofType:@"xml"];
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:[NSData dataWithContentsOfFile:filePath]];
    parser.delegate = self;
    [parser parse];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict {
    currentElement = elementName;
    currentContent = [[NSMutableString alloc] init];
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    [currentContent appendString:string];
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqualToString:@"Item"]) {
        // Add to array
        [DataModel add:[NSString stringWithString:currentContent]];
    }
}


@end
