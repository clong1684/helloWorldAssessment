//
//  JSONCommunication.m
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import "JSONCommunication.h"
#import "JSONCommunicationDelegate.h"


@implementation JSONCommunication

- (void)searchGroupsAtCoordinate:(CLLocationCoordinate2D)coordinate
{
    NSString *urlAsString = [NSString stringWithFormat:@"http://www.helloworld.com/helloworld_locations.json"];
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
    NSLog(@"%@", urlAsString);
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse *response, NSError *error) {
                                      if (error) {
                                          [self.delegate fetchingGroupsFailedWithError:error];
                                      } else {
                                          [self.delegate receivedGroupsJSON:data];
                                      }
                                  }];
    [task resume];

}

@end