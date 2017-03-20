//
//  UIColor+ZZExtensions.h
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#define ZColor(hex) [self colorWithHex:hex]

#import <UIKit/UIKit.h>

@interface UIColor (ZZExtensions)


+ (UIColor *)colorWithHex:(NSInteger)hexValue;
+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;

@end
