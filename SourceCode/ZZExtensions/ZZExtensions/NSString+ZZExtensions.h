//
//  NSString+ZZExtensions.h
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, VREType) {
    VRETypeUsername = 0, // 用户名
    VRETypeIDCard,  // 身份证号码
    VRETypeBankCard,  // 银行卡号码
    VRETypePhoneNumber,  // 电话号码
    VRETypeApr,  // 年化收益
    VRETypeTender,  // 投资金额
    VRETypePassword, // 密码
    VRETypeAddressName,  // 姓名
    VRETypePostalcode,  // 邮箱
    VRETypeAddress, // 地址
    VRETypeNumber // 纯数字
};

@interface NSString (ZZExtensions)

- (BOOL)isValidateRegularExpressionWithType:(VREType)type;
- (BOOL)isValidateRegularExpression:(NSString *)re;

- (CGFloat)getStringWidthWithFont:(UIFont *)font height:(CGFloat)height;

- (CGFloat)heightWithFont:(UIFont *)font width:(CGFloat)width;

@end
