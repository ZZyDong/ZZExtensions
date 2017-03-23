//
//  UIScrollView+ZZExtensions.m
//  ZZExtensions
//
//  Created by ZhiMaBao on 2017/3/23.
//  Copyright © 2017年 Z. All rights reserved.
//

#import "UIScrollView+ZZExtensions.h"
#import "MJRefresh.h"

@implementation UIScrollView (ZZExtensions)

#pragma mark - MJRefresh
- (void)addRefreshHeaderWithTarget:(id)target action:(SEL)action {
    if (self.mj_header) return;
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
    header.lastUpdatedTimeLabel.hidden = YES;
    [header setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
    [header setTitle:@"释放更新" forState:MJRefreshStatePulling];
    [header setTitle:@"加载中" forState:MJRefreshStateRefreshing];
    self.mj_header = header;
}
- (void)addRefreshFooterWithTarget:(id)target action:(SEL)action {
    if (self.mj_footer) return;
    MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
    [footer setTitle:@"上拉加载更多" forState:MJRefreshStateIdle];
    [footer setTitle:@"释放更新" forState:MJRefreshStatePulling];
    [footer setTitle:@"加载中" forState:MJRefreshStateRefreshing];
    [footer setTitle:@"全部数据加载完毕" forState:MJRefreshStateNoMoreData];
    self.mj_footer = footer;
    // 如果使用reloadSection刷新tableView，需要添加下面这句，否则footer会自动隐藏
    self.mj_footer.automaticallyHidden = NO;
}
- (void)removeRefreshHeader {
    if (self.mj_header) {
        [self.mj_header removeFromSuperview];
        self.mj_header = nil;
    }
}
- (void)removeRefreshFooter {
    if (self.mj_footer) {
        [self.mj_footer removeFromSuperview];
        self.mj_footer = nil;
    }
}
- (void)endRefresh {
    if (self.mj_header.isRefreshing) {
        [self.mj_header endRefreshing];
    }
    if (self.mj_footer.isRefreshing) {
        [self.mj_footer endRefreshing];
    }
}
- (void)changeFooterStatusWithNoMoreDatas:(BOOL)isNoMoreDatas {
    if (isNoMoreDatas) {
        [self.mj_footer endRefreshingWithNoMoreData];
    } else {
        [self.mj_footer resetNoMoreData];
    }
}
- (BOOL)isFooterRefreshing {
    return self.mj_footer.isRefreshing;
}

@end
