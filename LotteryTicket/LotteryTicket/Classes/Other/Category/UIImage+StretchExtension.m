//
//  UIImage+StretchExtension.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "UIImage+StretchExtension.h"

@implementation UIImage (StretchExtension)
+(UIImage *)resizableImage:(NSString *)name {
    UIImage *image = [UIImage imageNamed:name];
    CGFloat w = image.size.width * 0.5;
    CGFloat h = image.size.height * 0.5;
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
}
@end
