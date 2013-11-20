//
//  Pharmacy.h
//  Healthy
//
//  Created by Miclle Zheng on 13-11-19.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pharmacy : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* manager;
@property (nonatomic, copy) NSString* telephone;
@property (nonatomic, copy) NSString* address;
@property (nonatomic, copy) NSString* zipcode;

@property (nonatomic, copy) NSNumber* latitude;
@property (nonatomic, copy) NSNumber* longitude;

+ (void) loadPharmacies;

@end
