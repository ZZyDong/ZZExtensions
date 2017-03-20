//
//  NSNumber+ZZExtensions.h
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (ZZExtensions)

// 标记千分位逗号，返回字符串
- (NSString *)formaterWithDecimalStyle;

// 保留有效小数 返回字符串
- (NSString *)formatFloat;

@end
