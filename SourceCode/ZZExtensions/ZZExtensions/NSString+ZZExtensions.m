//
//  NSString+ZZExtensions.m
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import "NSString+ZZExtensions.h"

@implementation NSString (ZZExtensions)

- (BOOL)isValidateRegularExpressionWithType:(VREType)type {
    
    static NSDictionary *verDict;
    if (!verDict) {
        verDict = @{@(VRETypeUsername) : @"^[a-zA-Z0-9]{4,16}$",
                    @(VRETypeIDCard) : @"^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$|^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X)$",
                    @(VRETypeBankCard) : @"(\\d|\\s){16,22}",
                    @(VRETypePhoneNumber) : @"^1[34578]\\d{9}$",
                    @(VRETypeApr) : @"^(\\d{1,2}(\\.\\d{1,2})?|100|100.0|100.00)$",
                    @(VRETypeTender) : @"^([0-9]{3,10})$",
                    //                    @(VRETypePassword) : @"^(?![^a-zA-Z]+$)(?!\\D+$).{8,16}$",
                    @(VRETypePassword) : @"(?!^(\\d+|[a-zA-Z]+|[~!@#$%^&*?]+)$)^[\\w~!@#$%\\^&*?]{8,16}$",
                    
                    @(VRETypeAddressName) : @"^([\\u0391-\\uFFE5])+$",
                    @(VRETypePostalcode) : @"\\d{6}",
                    @(VRETypeAddress) : @"^.{0,128}$",
                    @(VRETypeNumber) : @"\\d"};
    }
    
    if (!verDict[@(type)]) {
        NSLog(@"正则表达式不存在");
        return NO;
    }
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", verDict[@(type)]];
    return [predicate evaluateWithObject:self];
}

- (BOOL)isValidateRegularExpression:(NSString *)re {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", re];
    return [predicate evaluateWithObject:self];
}

- (CGFloat)getStringWidthWithFont:(UIFont *)font height:(CGFloat)height {
    return [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size.width;
}

- (CGFloat)heightWithFont:(UIFont *)font width:(CGFloat)width {
    return [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : font} context:nil].size.height;
}

@end
