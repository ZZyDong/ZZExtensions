//
//  UIScrollView+ZZExtensions.h
//  ZZExtensions
//
//  Created by ZhiMaBao on 2017/3/23.
//  Copyright © 2017年 Z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ZZExtensions)



#pragma mark - MJRefresh
// 添加控件
- (void)addRefreshHeaderWithTarget:(id)target action:(SEL)action;
- (void)addRefreshFooterWithTarget:(id)target action:(SEL)action;
// 移除控件
- (void)removeRefreshHeader;
- (void)removeRefreshFooter;
// 结束刷新
- (void)endRefresh;
// 改变footer的显示信息
- (void)changeFooterStatusWithNoMoreDatas:(BOOL)isNoMoreDatas;
// 判断footer是否在刷新状态
- (BOOL)isFooterRefreshing;

@end
