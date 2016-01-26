//
//  ViewController.m
//  helloWorldAssessment
//
//  Created by Chris Long on 1/24/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import "ViewController.h"

#import "LocationListCell.h"

#import "Location.h"
#import "LocationManager.h"
#import "JSONCommunication.h"

@interface ViewController () <LocationManagerDelegate> {
    NSArray *_locations;
    LocationManager *_manager;
}
@property (weak, nonatomic) CLLocationManager *locationManager;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _manager = [[LocationManager alloc] init];
    _manager.communicator = [[JSONCommunication alloc] init];
    _manager.communicator.delegate = _manager;
    _manager.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(startFetchingGroups:)
                                                 name:@"kCLAuthorizationStatusAuthorized"
                                               object:nil];
}
#pragma mark - Accessors

- (CLLocationManager *)locationManager
{
    if (_locationManager) {
        return _locationManager;
    }
    
    id appDelegate = [[UIApplication sharedApplication] delegate];
    if ([appDelegate respondsToSelector:@selector(locationManager)]) {
        _locationManager = [appDelegate performSelector:@selector(locationManager)];
    }
    return _locationManager;
}

#pragma mark - Notification Observer
- (void)startFetchingGroups:(NSNotification *)notification
{
    [_manager fetchGroupsAtCoordinate:self.locationManager.location.coordinate];
}

#pragma mark - MeetupManagerDelegate
- (void)didReceiveGroups:(NSArray *)groups
{
    _locations = groups;
    [self.tableView reloadData];
}

- (void)fetchingGroupsFailedWithError:(NSError *)error
{
    NSLog(@"Error %@; %@", error, [error localizedDescription]);
}


#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _locations.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LocationListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Location *location = _locations[indexPath.row];
    [cell.officeName setText:location.officeName];
    [cell.officeAddress setText:[NSString stringWithFormat:@"%@, %@, %@, %@, %@", location.address, location.address2, location.city, location.state, location.zip_postal_code]];    
    return cell;
}
@end
