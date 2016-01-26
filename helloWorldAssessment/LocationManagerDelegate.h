//
//  LocationManagerDelegate.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LocationManagerDelegate
- (void)didReceiveGroups:(NSArray *)groups;
- (void)fetchingGroupsFailedWithError:(NSError *)error;
@end
