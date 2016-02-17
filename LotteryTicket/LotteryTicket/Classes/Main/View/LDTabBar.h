//
//  LDTabBar.h
//  LotteryTicket
//
//  Created by guigu on 16/1/27.
//  Copyright © 2016年 b. All rights reserved.
//

#import <UIKit/UIKit.h>


@class LDTabBar;

@protocol LDTabBarDelegate <NSObject>
/**
 *  切换tabbarIndex
 *
 *  @param tabBar 自定义tabbar
 *  @param from   源index
 *  @param to     目标index
 */
- (void)tabBar:(LDTabBar *)tabBar didSelectedIndex:(NSInteger)from toIndex:(NSInteger)to;

@end

@interface LDTabBar : UIView

@property (nonatomic, weak) id<LDTabBarDelegate> delegate;

/**
 *  为taBar添加无文字按钮
 *
 *  @param imageArray 按钮正常状态图片名
 *  @param selArray   按钮选中状态图片名
 */
- (void)addTabBarButtonWithImageName:(NSString *)imageStr
                andSelectedImageName:(NSString *)selImageStr;

/**
 *  为tabBar添加有文字有图片按钮
 *
 *  @param imageArray 按钮正常状态图片名
 *  @param selArray   按钮选中状态图片名
 *  @param titleArray 按钮标题
 */
- (void)addTabBarButtonWithImageName:(NSString *)imageStr
                andSelectedImageName:(NSString *)selImageStr
                        andTitleString:(NSString *)titleStr;

@end
