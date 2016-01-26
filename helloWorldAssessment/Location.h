//
//  Location.h
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (strong, nonatomic) NSString *officeName;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *address2;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString *zip_postal_code;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *fax;
@property (strong, nonatomic) NSString *latitude;
@property (strong, nonatomic) NSString *longitude;
@property (strong, nonatomic) NSString *office_image;

@end
