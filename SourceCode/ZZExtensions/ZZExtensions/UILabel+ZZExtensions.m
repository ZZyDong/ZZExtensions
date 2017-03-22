//
//  UILabel+ZZExtensions.m
//  ZZExtensions
//
//  Created by ZhiMaBao on 2017/3/22.
//  Copyright © 2017年 Z. All rights reserved.
//

#import "UILabel+ZZExtensions.h"

@implementation UILabel (ZZExtensions)

/* 获取label的size */
- (CGSize)labelSize {
    return  [self.text sizeWithAttributes:@{NSFontAttributeName : self.font}];
}

- (CGFloat)labelWidth {
    return self.labelSize.width;
}
- (CGFloat)labelHeight {
    return self.labelSize.height;
}

- (CGFloat)attrLabelWidth {
    return [self.attributedText boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.width;
}
- (CGFloat)attrLabelHeight {
    return [self.attributedText boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil].size.height;
}

- (CGFloat)labelHeightWithWidth:(CGFloat)width {
    return [self sizeThatFits:CGSizeMake(width, CGFLOAT_MAX)].height;
}

@end
