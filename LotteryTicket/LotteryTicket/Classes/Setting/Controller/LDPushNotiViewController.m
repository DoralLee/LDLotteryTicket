//
//  LDPushNotiViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/2/16.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDPushNotiViewController.h"
#import "LDSettingModel.h"
#import "LDSettingArrowModel.h"
#import "LDSettingGroupModel.h"
#import "LDSettingPushViewController.h"

@interface LDPushNotiViewController ()

@end

@implementation LDPushNotiViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupGroup0];
}

- (void)setupGroup0 {
    LDSettingModel *pushNoti = [LDSettingArrowModel modelWithTitle:@"推送和提醒" destVcClass:[LDSettingPushViewController class]];
    LDSettingModel *handShank = [LDSettingArrowModel modelWithTitle:@"摇一摇机选" destVcClass:[LDSettingPushViewController class]];
    LDSettingModel *soundEffect = [LDSettingArrowModel modelWithTitle:@"声音效果" destVcClass:[LDSettingPushViewController class]];
    
    LDSettingGroupModel *group = [[LDSettingGroupModel alloc] init];
    group.settingModels = @[pushNoti, handShank, soundEffect];
    
    [self.dataArray addObject:group];
}


@end
