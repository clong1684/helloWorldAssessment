//
//  JSONCommunicationDelegate.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JSONCommunicationDelegate <NSObject>

- (void)receivedGroupsJSON:(NSData *)objectNotation;
- (void)fetchingGroupsFailedWithError:(NSError *)error;

@end
