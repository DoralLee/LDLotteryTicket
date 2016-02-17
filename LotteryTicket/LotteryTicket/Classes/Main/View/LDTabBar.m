//
//  LDTabBar.m
//  LotteryTicket
//
//  Created by guigu on 16/1/27.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDTabBar.h"
#import "LDTabBarBtn.h"


@interface LDTabBar ()

@property (nonatomic, weak) LDTabBarBtn *selectBtn;

@end

@implementation LDTabBar

- (void)addTabBarButtonWithImageName:(NSString *)imageStr
                andSelectedImageName:(NSString *)selImageStr {
    [self addTabBarButtonWithImageName:imageStr andSelectedImageName:selImageStr andTitleString:nil];
}

- (void)addTabBarButtonWithImageName:(NSString *)imageStr
                andSelectedImageName:(NSString *)selImageStr
                        andTitleString:(NSString *)titleStr {

    LDTabBarBtn *btn = [LDTabBarBtn buttonWithType:UIButtonTypeCustom];
    [btn setButtonImage:imageStr andSelectedImage:selImageStr];
//    [btn setButtonTitleColor:[UIColor lightGrayColor] andSelectedColor:[UIColor colorWithRed:1.000 green:0.995 blue:0.147 alpha:1.000]];
//    btn.titleLabel.font = [UIFont systemFontOfSize:12];

    if (titleStr && titleStr.length != 0) {
        [btn setButtonTitle:titleStr];
    } else {
        
    }


    [btn addTarget:self action:@selector(tabBarClick:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:btn];
        

    if (self.subviews.count == 1) {
        [self tabBarClick:btn];
    }

}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;

    for (int i = 0; i < count; i++) {
        LDTabBarBtn *subBtn = [self subviews][i];
        CGFloat btnY = 0;
        CGFloat btnW = self.frame.size.width / 5;
        CGFloat btnX = btnW * i;
        CGFloat btnH = self.frame.size.height;
        subBtn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        subBtn.tag = i;
    }
}

#pragma mark - TabBarDelegate
- (void)tabBarClick:(LDTabBarBtn *)sender {
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectedIndex:toIndex:)]) {
        [self.delegate tabBar:self didSelectedIndex:self.selectBtn.tag toIndex:sender.tag];
    }
    // 1. 让当前按钮取消选中状态
    self.selectBtn.selected = NO;
    
    // 2. 让新的按钮处于选中状态
    sender.selected = YES;
    
    // 3. 设置新点击的按钮为当前按钮
    self.selectBtn = sender;
    
}

@end
