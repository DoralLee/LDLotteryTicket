//
//  LDSettingViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDSettingViewController.h"
#import "LDSettingPushViewController.h"
#import "LDSettingGroupModel.h"
#import "LDSettingArrowModel.h"
#import "LDSettingSwitchModel.h"
#import "LDProductViewController.h"
#import "LDPushNotiViewController.h"

@interface LDSettingViewController ()

@end

@implementation LDSettingViewController


/**
 *  第0组数据
 */
- (void)setupGroup0 {
    LDSettingModel *pushNoti = [LDSettingArrowModel modelWithIcon:@"MorePush" title:@"推送和提醒" destVcClass:[LDPushNotiViewController class]];
    LDSettingModel *handShank = [LDSettingSwitchModel modelWithIcon:@"handShake" title:@"摇一摇机选"];
    LDSettingModel *soundEffect = [LDSettingSwitchModel modelWithIcon:@"MorePush" title:@"声音效果"];
    
    LDSettingGroupModel *group = [[LDSettingGroupModel alloc] init];
    group.settingModels = @[pushNoti, handShank, soundEffect];
    
    [self.dataArray addObject:group];
}

- (void)setupGroup1 {
    LDSettingModel *update = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"检测新版本"];
    update.option = ^{
        NSLog(@"检查新版本......");
    };
    
    LDSettingModel *help = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"帮助" destVcClass:[LDSettingPushViewController class]];
    LDSettingModel *share = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"分享" destVcClass:[LDSettingPushViewController class]];
    LDSettingModel *message = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"查看消息" destVcClass:[LDSettingPushViewController class]];
    LDSettingModel *product = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"产品推荐" destVcClass:[LDProductViewController class]];
    LDSettingModel *about = [LDSettingArrowModel modelWithIcon:@"handShake" title:@"关于" destVcClass:[LDSettingPushViewController class]];


    
    LDSettingGroupModel *group = [[LDSettingGroupModel alloc] init];
    group.settingModels = @[update, help, share, message, product, about];
    
    [self.dataArray addObject:group];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"设置";
    
    [self setupGroup0];
    [self setupGroup1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
