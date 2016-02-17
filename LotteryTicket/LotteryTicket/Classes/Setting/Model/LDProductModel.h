//
//  LDProductModel.h
//  LotteryTicket
//
//  Created by guigu on 16/2/15.
//  Copyright © 2016年 b. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LDProductModel : NSObject
// 标题
@property (nonatomic, strong) NSString *title;
// 图标
@property (nonatomic, strong) NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)productWithDict:(NSDictionary *)dict;

@end
