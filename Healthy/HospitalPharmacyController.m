//
//  HospitalPharmacyController.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-15.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <AFJSONRequestOperation.h>

#import "Categories/UIColor+Hex.h"

#import "Helpers/Route.h"

#import "HospitalPharmacyController.h"

#import "Pharmacy.h"

@interface HospitalPharmacyController ()

@end

@implementation HospitalPharmacyController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"药店医院";
    
    CGRect frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 44, [[UIScreen mainScreen] bounds].size.width, 44);
    
    self.toolbar = [[UIToolbar alloc]initWithFrame:frame];
    
    self.toolbar.backgroundColor = [UIColor colorWithHex:0xFFFFFF alpha:0.5];
    self.toolbar.tintColor       = self.navigationController.navigationBar.tintColor;
    
    [self.toolbar sizeToFit];
    
    //Init UISegmentedControl
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] init];
    [segmentedControl insertSegmentWithTitle:@"药店" atIndex:0 animated:YES];
    [segmentedControl insertSegmentWithTitle:@"医院" atIndex:1 animated:YES];
    
    segmentedControl.frame = CGRectMake(110.0, 6.0, 100.0, 32.0);
    
    segmentedControl.selectedSegmentIndex = 0;//设置默认选择项索引
    
    segmentedControl.tintColor = [UIColor colorWithHex:0x999999];
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys: [UIFont boldSystemFontOfSize:14], UITextAttributeFont, [UIColor colorWithHex:0x333333], UITextAttributeTextColor, nil];
    NSDictionary *highlightedAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:UITextAttributeTextColor];
    
    [segmentedControl setTitleTextAttributes:attributes forState:UIControlStateNormal];
    [segmentedControl setTitleTextAttributes:highlightedAttributes forState:UIControlStateHighlighted];
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:segmentedControl];
    
    [segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    
    [self.toolbar addSubview:segmentedControl];
    
    [self.view addSubview:self.toolbar];
    
//    [Pharmacy loadPharmacies];
    NSLog(@"pharmacies list%@", [Route pharmacies]);
    NSLog(@"pharmacies show%@", [Route pharmacies:@"1"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)segmentAction:(UISegmentedControl *)seg
{
    NSInteger index = seg.selectedSegmentIndex;
    NSLog(@"Index %i", index);
}

@end
