//
//  LDTabBarBtn.h
//  LotteryTicket
//
//  Created by guigu on 16/1/27.
//  Copyright © 2016年 b. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDTabBarBtn : UIButton

/**
 *  设置button图片
 *
 *  @param imageStr    正常状态图片
 *  @param selImageStr 选中状态图片
 */
- (void)setButtonImage:(NSString *)imageStr andSelectedImage:(NSString *)selImageStr;

- (void)setButtonTitle:(NSString *)titleStr;

- (void)setButtonTitleColor:(UIColor *)color andSelectedColor:(UIColor *)selColor;

@end
