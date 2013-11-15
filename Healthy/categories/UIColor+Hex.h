//
//  UIColor+Hex.h
//  Healthy
//
//  Created by 超 沈 on 11-12-31.
//  https://gist.github.com/ohsc/1542973
//  Copyright (c) 2013年 JKYD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor*)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor*)colorWithHex:(NSInteger)hexValue;
+ (UIColor*)whiteColorWithAlpha:(CGFloat)alphaValue;
+ (UIColor*)blackColorWithAlpha:(CGFloat)alphaValue;

@end
