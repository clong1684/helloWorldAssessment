//
//  LocationListBuilder.m
//  helloWorldAssessment
//
//  Created by Chris Long on 1/26/16.
//  Copyright © 2016 Chris Long. All rights reserved.
//

#import "LocationListBuilder.h"
#import "Location.h"

@implementation LocationListBuilder
+ (NSArray *)groupsFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *locations = [[NSMutableArray alloc] init];
    
    NSArray *results = [parsedObject valueForKey:@"results"];
    NSLog(@"Count %d", results.count);
    
    for (NSDictionary *locationDic in results) {
        Location *location = [[Location alloc] init];
        
        for (NSString *key in locationDic) {
            if ([location respondsToSelector:NSSelectorFromString(key)]) {
                [location setValue:[locationDic valueForKey:key] forKey:key];
            }
        }
        
        [locations addObject:location];
    }
    
    return locations;
}
@end