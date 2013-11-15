//
//  HospitalPharmacyController.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-15.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//
#import "Categories/UIColor+Hex.h"

#import "HospitalPharmacyController.h"

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
    
//    NSArray *segmentedArray = [[NSArray alloc] initWithObjects:@"药店",@"医院",nil];
    
    NSArray *segmentedArray = @[@"药店", @"医院"];
    
    //初始化UISegmentedControl
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    
    segmentedControl.frame = CGRectMake(110.0, 6.0, 100.0, 32.0);
    
    segmentedControl.selectedSegmentIndex = 2;//设置默认选择项索引
    
    segmentedControl.tintColor = [UIColor redColor];
    
    //有基本四种样式
    segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;//设置样式
    
    
    [self.toolbar addSubview:segmentedControl];
    
    [self.view addSubview:self.toolbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
