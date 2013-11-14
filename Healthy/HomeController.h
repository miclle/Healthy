//
//  HomeController.h
//  Healthy
//
//  Created by Miclle Zheng on 13-11-14.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) UICollectionView *collectionView;

@property (strong, nonatomic) NSArray *icons;

@property (strong, nonatomic) NSArray *channels;

@end
