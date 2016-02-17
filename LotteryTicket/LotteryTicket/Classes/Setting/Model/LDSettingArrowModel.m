//
//  LDSettingArrowModel.m
//  LotteryTicket
//
//  Created by guigu on 16/2/12.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDSettingArrowModel.h"

@implementation LDSettingArrowModel

+ (instancetype)modelWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(__unsafe_unretained Class)destVcClass {
    
    LDSettingArrowModel *settingModel = [self modelWithIcon:icon title:title];
    settingModel.destVcClass = destVcClass;
    
    return settingModel;
}

+ (instancetype)modelWithTitle:(NSString *)title destVcClass:(__unsafe_unretained Class)destVcClass {
    return [self modelWithIcon:nil title:title destVcClass:destVcClass];
}

@end
