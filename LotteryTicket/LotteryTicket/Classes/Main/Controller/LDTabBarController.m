//
//  LDTabBarController.m
//  LotteryTicket
//
//  Created by guigu on 16/1/27.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDTabBarController.h"
#import "LDTabBar.h"

@interface LDTabBarController ()<LDTabBarDelegate>


@end

@implementation LDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 2. 添加自定义Tabbar
    LDTabBar *tabBar = [[LDTabBar alloc] init];
    tabBar.frame = self.tabBar.bounds;
    tabBar.alpha = 0.9;
    tabBar.delegate = self;
    [self.tabBar addSubview:tabBar];
    
    NSArray *btnImageArray = @[@"TabBar_1", @"TabBar_2", @"TabBar_3", @"TabBar_4", @"TabBar_5"];
    NSArray *btnSelectedImageArray = @[@"TabBar_1_selected", @"TabBar_2_selected", @"TabBar_3_selected", @"TabBar_4_selected", @"TabBar_5_selected"];
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        [tabBar addTabBarButtonWithImageName:btnImageArray[i] andSelectedImageName:btnSelectedImageArray[i]];
    }
}

#pragma mark - LDTabBarDelegate
- (void)tabBar:(LDTabBar *)tabBar didSelectedIndex:(NSInteger)from toIndex:(NSInteger)to {
    self.selectedIndex = to;
}

@end
