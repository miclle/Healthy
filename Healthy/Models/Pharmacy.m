//
//  Pharmacy.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-19.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <RKObjectMapping.h>
#import <RKObjectRequestOperation.h>
#import <RKResponseDescriptor.h>
#import <RKLog.h>
#import "Pharmacy.h"

@implementation Pharmacy

+ (void) loadPharmacies
{
    RKObjectMapping* pharmacyMapping = [RKObjectMapping mappingForClass:[Pharmacy class]];
    
    [pharmacyMapping addAttributeMappingsFromDictionary:@{
                                                          @"name": @"name",
                                                          @"manager": @"manager",
                                                          @"telephone": @"telephone",
                                                          @"address": @"address",
                                                          @"zipcode": @"zipcode",
                                                          @"latitude": @"latitude",
                                                          @"longitude": @"longitude"
                                                          }];
    
    RKResponseDescriptor *responseDescriptor = [RKResponseDescriptor responseDescriptorWithMapping:pharmacyMapping
                                                                                            method:RKRequestMethodAny
                                                                                       pathPattern:nil
                                                                                           keyPath:@"pharmacies"
                                                                                       statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    NSURL *URL = [NSURL URLWithString:@"http://localhost:3000/mobile/pharmacies"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    RKObjectRequestOperation *objectRequestOperation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[ responseDescriptor ]];
    
    [objectRequestOperation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        
        RKLogInfo(@"Load collection of Pharmacies: %@", mappingResult.array);
        
//        NSArray *pharmacies = mappingResult.array;
        
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        
        RKLogError(@"Operation failed with error: %@", error);
        
    }];
    
    [objectRequestOperation start];
}

@end
