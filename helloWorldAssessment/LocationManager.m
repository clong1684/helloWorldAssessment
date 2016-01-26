//
//  LocationManager.m
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import "LocationManager.h"
#import "LocationListBuilder.h"
#import "JSONCommunication.h"

@implementation LocationManager
- (void)fetchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate
{
    [self.communicator searchGroupsAtCoordinate:coordinate];
}

#pragma mark - MeetupCommunicatorDelegate

- (void)receivedGroupsJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *groups = [LocationListBuilder groupsFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingGroupsFailedWithError:error];
        
    } else {
        [self.delegate didReceiveGroups:groups];
    }
}

- (void)fetchingGroupsFailedWithError:(NSError *)error
{
    [self.delegate fetchingGroupsFailedWithError:error];
}
@end
