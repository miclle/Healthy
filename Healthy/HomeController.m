//
//  HomeController.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-14.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <FontAwesomeKit/FontAwesomeKit.h>

#import "CollectionHeadView.h"
#import "HomeController.h"

@interface HomeController ()

@end

@implementation HomeController

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
    self.navigationItem.title = @"健康时刻";
    
    self.collectionView = [UICollectionView alloc];
    
    // 注册可重用视图
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    [self.collectionView registerClass:[CollectionHeadView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    
//    [self.view addSubview:self.collectionView];
    
    float iconFontSize = 28;
    
    FAKFontAwesome *stethoscopeIcon = [FAKFontAwesome stethoscopeIconWithSize:iconFontSize];
    FAKFontAwesome *buildingOIcon = [FAKFontAwesome hospitalOIconWithSize:iconFontSize];
    FAKFontAwesome *ambulanceIcon = [FAKFontAwesome ambulanceIconWithSize:iconFontSize];
    FAKFontAwesome *cutleryIcon = [FAKFontAwesome cutleryIconWithSize:iconFontSize];
    FAKFontAwesome *maleIcon = [FAKFontAwesome maleIconWithSize:iconFontSize];
    FAKFontAwesome *codeForkIcon = [FAKFontAwesome codeForkIconWithSize:iconFontSize];
    
    
    //这里面的icons是加载的图片
    self.icons = @[stethoscopeIcon, buildingOIcon, ambulanceIcon, cutleryIcon, maleIcon, codeForkIcon];
    
    self.channels = @[@"症状疾病", @"药店医院", @"急救信息", @"饮食健康", @"九种体质", @"经络穴位"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource
// 返回section的数量
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

// 返回在一个给定section里的cell数量
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.icons count];
}

// 返回在某个cell。与table view的cell类似
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // 得到cell
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    // 系统的UICollectionViewCell只能改变背景图,你应该自定义一个class继承UICollectionViewCell
    
    FAKFontAwesome *icon = self.icons[indexPath.row];
    
    //    [icon addAttribute:NSForegroundColorAttributeName value:[UIColor yellowColor]];
    
    //    icon.drawingBackgroundColor = [UIColor blackColor];
    
    //    icon.drawingPositionAdjustment = UIOffsetMake(2, 2);
    
    UIImage *iconImage = [icon imageWithSize:CGSizeMake(105, 80)];
    
    UIImageView *iconImageView = [[UIImageView alloc] initWithImage:iconImage];
    
    [cell addSubview:iconImageView];
    
    
    //cell上添加控件
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, 105, 80)];
    
    label.text = self.channels[indexPath.row];
    
    label.textAlignment = NSTextAlignmentCenter;
    
    [cell addSubview:label];
    
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

// 返回headview或footview
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    CollectionHeadView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head" forIndexPath:indexPath];
    return headView;
}


#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectItemAtIndexPath:%d-%d", indexPath.section, indexPath.row);
    //    MainViewController *test = [[MainViewController alloc] init];
    //    [self.navigationController pushViewController:test animated:YES];
    
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    
    CGFloat width = screenWidth / 3 - 0.5;
    CGSize size = CGSizeMake(width, width);
    return size;
}

// 定义section的边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

// 定义headview的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(320, 0);
}

// 定义上下cell的最小间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0.5;
}

// 定义左右cell的最小间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}

@end
