//
//  UIViewController+DetailViewController.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) IBOutlet UIImageView *officeImage;
@property (strong, nonatomic) IBOutlet UIButton *callBTN;
@property (strong, nonatomic) IBOutlet UIButton *directionBTN;
@property (strong, nonatomic) IBOutlet UIButton *backBTN;


@end

