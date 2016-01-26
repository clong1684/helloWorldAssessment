//
//  NSObject_JSONCommunication.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@protocol JSONCommunicationDelegate;

@interface JSONCommunication : NSObject
@property (weak, nonatomic) id<JSONCommunicationDelegate> delegate;

- (void)searchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate;
@end