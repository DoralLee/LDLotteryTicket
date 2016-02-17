//
//  UIImage+StretchExtension.h
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (StretchExtension)
/**
 *  对矢量图进行拉伸
 *
 *  @param name 图片名
 *
 *  @return 拉伸后的图片
 */
+(UIImage *)resizableImage:(NSString *)name;

@end
