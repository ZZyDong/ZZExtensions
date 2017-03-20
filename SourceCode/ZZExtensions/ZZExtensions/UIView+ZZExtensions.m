//
//  UIView+ZZExtensions.m
//  Z.
//
//  Created by Z. on 2017/3/20.
//  Copyright © 2017年 Z. All rights reserved.
//

#import "UIView+ZZExtensions.h"

#define kSubViewTag 1024
#define design_screen_width 375

@implementation UIView (ZZExtensions)


- (void)clickAnimation {
    UIColor *originColor = self.backgroundColor;
    self.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.6];
    [UIView animateWithDuration:0.3 animations:^{
        self.backgroundColor = originColor;
    }];
}

- (void)showRegularExpressionAlertMessage:(NSString *)message {
    
    if ([self viewWithTag:kSubViewTag]) return;
    
    UILabel * label = [[UILabel alloc] init];
    [self addSubview:label];
    label.text = message;
    label.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.2];
    label.textColor = [UIColor redColor];
    label.alpha = 0;
    label.tag = kSubViewTag;
    label.font = [UIFont systemFontOfSize:13];
    label.textAlignment = NSTextAlignmentRight;
    label.frame = CGRectMake(self.frame.size.width, 0, self.frame.size.width, self.frame.size.height);
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = label.frame;
        frame.origin.x = 0;
        label.frame = frame;
        label.alpha = 1;
    }];
}

- (void)removeRegularExpressionAlertMessage {
    UIView * view = [self viewWithTag:kSubViewTag];
    if (view) {
        [UIView animateWithDuration:0.5 animations:^{
            CGRect frame = view.frame;
            frame.origin.x = self.frame.size.width;
            view.frame = frame;
            view.alpha = 0;
        } completion:^(BOOL finished) {
            [view removeFromSuperview];
        }];
    }
}


- (void)makeCornerWithRadius:(float)radius {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

- (void)makeCornerWithRatio:(float)radio {
    self.layer.cornerRadius = self.frame.size.width * radio;
    self.layer.masksToBounds = YES;
}


- (void)addTapGestureRecognizerWithTarget:(id)target acion:(SEL)action {
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tapGes];
}

- (void)reSize {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    if (screenWidth == design_screen_width) return;
    
    CGFloat viewRate = screenWidth / design_screen_width;
    self.x = self.x * viewRate;
    self.y = self.y * viewRate;
    self.width = self.width * viewRate;
    self.height = self.height * viewRate;
    [self reSizeSubviews];
}

- (void)reSizeSubviews {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    if (screenWidth == design_screen_width) return;
    
    CGFloat viewRate = screenWidth / design_screen_width;
    for (UIView *sub in self.subviews) {
        sub.x *= viewRate;
        sub.y *= viewRate;
        sub.width *= viewRate;
        sub.height *= viewRate;
    }
}

- (void)reSizeSubviewsY {
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    if (screenWidth == design_screen_width) return;
    
    CGFloat viewRate = screenWidth / design_screen_width;
    for (UIView *sub in self.subviews) {
        sub.y *= viewRate;
    }
}



#pragma mark - Frame
- (CGFloat)x {
    return self.frame.origin.x;
}

- (CGFloat)y {
    return self.frame.origin.y  ;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)maxX {
    return self.frame.origin.x + self.frame.size.width;
}
- (CGFloat)maxY {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

@end
