//
//  CollectionHeadView.m
//  Healthy
//
//  Created by Miclle Zheng on 13-11-14.
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import "CollectionHeadView.h"

@implementation CollectionHeadView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
        _label.text = @"This is HeadView";
        _label.textAlignment = NSTextAlignmentCenter;
        _label.font = [UIFont systemFontOfSize:20];
        _label.backgroundColor = [UIColor colorWithWhite:0.7 alpha:0.6];
        
        [self addSubview:_label];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
