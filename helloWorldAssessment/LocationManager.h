//
//  LocationManager.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

#import "LocationManagerDelegate.h"
#import "JSONCommunicationDelegate.h"

@class JSONCommunication;

@interface LocationManager : NSObject<JSONCommunicationDelegate>
@property (strong, nonatomic) JSONCommunication *communicator;
@property (weak, nonatomic) id<LocationManagerDelegate> delegate;

- (void)fetchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate;
@end