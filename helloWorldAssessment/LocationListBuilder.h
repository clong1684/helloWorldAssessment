//
//  NSObject_LocationListBuilder.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationListBuilder : NSObject

+ (NSArray *)groupsFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end