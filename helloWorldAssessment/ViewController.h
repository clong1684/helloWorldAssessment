//
//  ViewController.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/24/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController

@property (weak     , nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UITableView *tableViw;

@end

