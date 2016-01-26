//
//  AppDelegate.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/24/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CLLocationManager *locationManager;

@end

