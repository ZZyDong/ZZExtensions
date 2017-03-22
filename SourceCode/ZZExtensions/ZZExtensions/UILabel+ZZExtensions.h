//
//  UILabel+ZZExtensions.h
//  ZZExtensions
//
//  Created by ZhiMaBao on 2017/3/22.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ZZExtensions)

- (CGFloat)labelWidth;  // 获取适合label中text的width （单行
- (CGFloat)labelHeight; // 获取label中text的height （单行


- (CGFloat)attrLabelWidth;  // 获取适合label中text的width （单行
- (CGFloat)attrLabelHeight; // 获取label中text的height （单行


- (CGFloat)labelHeightWithWidth:(CGFloat)width;

@end
