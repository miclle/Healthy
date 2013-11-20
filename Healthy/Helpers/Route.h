//
//  Route.h
//  Healthy
//
//  Created by Miclle Zheng on 13-11-19.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import "Setting.h"

@interface Route : NSObject

+ (NSDictionary *) routes;

+ (NSString *) APIDomainName;

+ (NSString *) pharmacies;

+ (NSString *) pharmacies:(NSString *)id;

@end
