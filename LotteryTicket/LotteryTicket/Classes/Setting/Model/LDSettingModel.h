//
//  LDSettingModel.h
//  LotteryTicket
//
//  Created by guigu on 16/2/1.
//  Copyright © 2016年 b. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^LDSettingModelOption)();

@interface LDSettingModel : NSObject
// 图片名
@property (nonatomic, copy) NSString *icon;
// 标题
@property (nonatomic, copy) NSString *title;
// 点击cell的操作
@property (nonatomic, copy) LDSettingModelOption option;

+ (instancetype)modelWithIcon:(NSString *)icon title:(NSString *)title;

+ (instancetype)modelWithTitle:(NSString *)title;

@end
