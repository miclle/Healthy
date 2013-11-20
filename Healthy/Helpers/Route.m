//
//  Route.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-19.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import "Route.h"

@implementation Route

static NSDictionary *_routes;

+ (NSDictionary *) routes
{
    if (_routes == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"routes" ofType:@"plist"];
        _routes = [[NSDictionary alloc] initWithContentsOfFile:path];
    }
    
    return _routes;
}


+ (NSString *) APIDomainName
{
    return [[self routes] objectForKey:@"APIDomainName"];
}

+ (NSString *) pharmacies
{
    return [[self APIDomainName] stringByAppendingString:[[self routes] objectForKey:@"pharmacies"]];
}

+ (NSString *) pharmacies:(NSString *)id
{
    return [[self pharmacies] stringByAppendingString:id];
}

@end
