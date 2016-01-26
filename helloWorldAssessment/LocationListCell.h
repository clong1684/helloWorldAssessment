//
//  LocationListCell.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LocationListCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *officeName;
@property (strong, nonatomic) IBOutlet UILabel *officeAddress;
@property (strong, nonatomic) IBOutlet UILabel *distance;


@end