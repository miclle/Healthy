//
//  DiseaseController.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-15.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import "DiseaseController.h"

@interface DiseaseController ()

@end

@implementation DiseaseController

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
    self.navigationItem.title = @"症状与疾病";
    
//    self.navigationController.navigationBar.backItem.title = @"主页";
//    self.navigationController.navigationItem.leftBarButtonItem.title = @"主页";
//    self.navigationItem.backBarButtonItem.title = @"主页";
//    [[[[UINavigationBar appearance] backItem] backBarButtonItem] setTitle:@"主页"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
