//
//  UIColor+ZZExtensions.h
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ZColor(hex) [UIColor colorWithHex:hex]

@interface UIColor (ZZExtensions)

+ (UIColor *)colorWithHex:(NSInteger)hexValue;
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

@end
