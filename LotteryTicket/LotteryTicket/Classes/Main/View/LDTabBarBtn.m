//
//  LDTabBarBtn.m
//  LotteryTicket
//
//  Created by guigu on 16/1/27.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDTabBarBtn.h"

#define btnSpace    5

@implementation LDTabBarBtn

- (void)setHighlighted:(BOOL)highlighted {
    
}

- (void)setButtonImage:(NSString *)imageStr andSelectedImage:(NSString *)selImageStr {
    [self setImage:[UIImage imageNamed:imageStr] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:selImageStr] forState:UIControlStateSelected];
}

- (void)setButtonTitle:(NSString *)titleStr {
    [self setTitle:titleStr forState:UIControlStateNormal];
//    [self setTitle:titleStr forState:UIControlStateSelected];
}

- (void)setButtonTitleColor:(UIColor *)color andSelectedColor:(UIColor *)selColor {
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitleColor:selColor forState:UIControlStateSelected];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.titleLabel && self.titleLabel.text.length != 0) {
        CGSize imageSize = self.imageView.frame.size;
        CGSize titleSize = self.titleLabel.frame.size;
        
        CGFloat totalHeight = (imageSize.height + titleSize.height);
        
        self.imageEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, titleSize.height, -titleSize.width);
        
        self.titleEdgeInsets = UIEdgeInsetsMake(btnSpace, -imageSize.width, -(totalHeight - titleSize.height), 0.0);
    }
}

@end
