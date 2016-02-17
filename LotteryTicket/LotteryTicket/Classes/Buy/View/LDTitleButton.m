//
//  LDTitleButton.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDTitleButton.h"

@implementation LDTitleButton

//- (void)awakeFromNib {
//    self.imageView.contentMode = UIViewContentModeCenter;
//}

/**
 *  从文件中解析一个对象的时候会调用
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

/**
 *  通过代码创建的时候调用
 */
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.imageView.contentMode = UIViewContentModeCenter;
}

/**
 *  设置button标题位置
 *
 */
- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleW = [self.currentTitle sizeWithAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18.0]}].width;
    CGFloat titleH = contentRect.size.height;
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

/**
 *  设置button图片位置
 */
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGFloat imageW = 14.5;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
