//
//  UIView+ZZExtensions.h
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZZExtensions)

/** 按钮效果 */
- (void)clickAnimation;

/** 设置圆角 原有尺寸的一定比例 */
- (void)makeCornerWithRatio:(float)radio;

/** 设置圆角 固定PX */
- (void)makeCornerWithRadius:(float)radius;

/** 添加点击手势 */
- (void)addTapGestureRecognizerWithTarget:(id)target acion:(SEL)action;


- (void)reSize;
- (void)reSizeSubviews;
- (void)reSizeSubviewsY;


- (CGFloat)x;
- (CGFloat)y;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
- (CGFloat)width;
- (CGFloat)height;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (CGFloat)maxX;
- (CGFloat)maxY;
- (CGFloat)centerX;
- (CGFloat)centerY;
- (void)setCenterX:(CGFloat)centerX;
- (void)setCenterY:(CGFloat)centerY;

@end

#define ZZScreenWidth [UIScreen mainScreen].bounds.size.width
#define ZZScreenHeight [UIScreen mainScreen].bounds.size.height
