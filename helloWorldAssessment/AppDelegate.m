//
//  AppDelegate.m
//  helloWorldAssessment
//
//  Created by Chris Long on 1/24/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.locationManager = [[CLLocationManager alloc] init];
    if ([CLLocationManager locationServicesEnabled]) {
        [self.locationManager setDelegate:self];
        [self.locationManager startUpdatingLocation];
    }
    
    return YES;
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorized) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"kCLAuthorizationStatusAuthorized" object:self];
    }
}
@end
