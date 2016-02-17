//
//  LDSettingGroupModel.h
//  LotteryTicket
//
//  Created by guigu on 16/2/12.
//  Copyright © 2016年 b. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LDSettingModel.h"

@interface LDSettingGroupModel : NSObject

/**
 *  头部标题
 */
@property (nonatomic, copy) NSString *headerTitle;
/**
 *  尾部标题
 */
@property (nonatomic, copy) NSString *footerTitle;
/**
 *  存放这组所有的行的模型（这个数组中都是LDSettingModel）
 */
@property (nonatomic, copy) NSArray *settingModels;

@end
