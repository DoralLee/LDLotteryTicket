//
//  LDSettingModel.m
//  LotteryTicket
//
//  Created by guigu on 16/2/1.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDSettingModel.h"

@implementation LDSettingModel

+ (instancetype)modelWithIcon:(NSString *)icon title:(NSString *)title {
    LDSettingModel *settingModel = [[self alloc]init];
    settingModel.icon = icon;
    settingModel.title = title;
    
    return settingModel;

}

+ (instancetype)modelWithTitle:(NSString *)title {
    return [self modelWithIcon:nil title:title];
}

@end
