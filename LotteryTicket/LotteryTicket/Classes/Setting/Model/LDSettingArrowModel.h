//
//  LDSettingArrowModel.h
//  LotteryTicket
//
//  Created by guigu on 16/2/12.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDSettingModel.h"

@interface LDSettingArrowModel : LDSettingModel

// 跳转Class
@property (nonatomic, assign) Class destVcClass;

+ (instancetype)modelWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(__unsafe_unretained Class)destVcClass;
+ (instancetype)modelWithTitle:(NSString *)title destVcClass:(__unsafe_unretained Class)destVcClass;
@end
