//
//  LDSettingCell.h
//  LotteryTicket
//
//  Created by guigu on 16/2/12.
//  Copyright © 2016年 b. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LDSettingModel;

@interface LDSettingCell : UITableViewCell
@property (nonatomic, strong) LDSettingModel *model;

+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
