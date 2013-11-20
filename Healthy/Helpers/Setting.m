//
//  Setting.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-19.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import "Setting.h"

@implementation Setting

static NSDictionary *_settings;

+ (NSDictionary *) settings
{
    if (_settings == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"InfoPlist" ofType:@"strings"];
        _settings = [[NSDictionary alloc] initWithContentsOfFile:path];
    }
    
    return _settings;
}

@end
