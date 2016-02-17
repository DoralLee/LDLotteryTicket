//
//  LDBaseSettingViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDBaseSettingViewController.h"
#import "LDSettingPushViewController.h"
#import "LDSettingGroupModel.h"
#import "LDSettingArrowModel.h"
#import "LDSettingCell.h"


@interface LDBaseSettingViewController ()



@end

@implementation LDBaseSettingViewController

- (instancetype)init {
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];

    }
    return _dataArray;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    LDSettingGroupModel *group = _dataArray[section];
    return [group.settingModels count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LDSettingCell *cell = [LDSettingCell cellWithTableView:tableView];
    
    LDSettingGroupModel *group = self.dataArray[indexPath.section];
    cell.model = group.settingModels[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //    1. 取消选中状态
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    LDSettingModel *model = [self.dataArray[indexPath.section] settingModels][indexPath.row];
    
    if (model.option) {
        model.option();
    } else if ([model isKindOfClass:[LDSettingArrowModel class]]) {
        LDSettingArrowModel *arrowModel = (LDSettingArrowModel *)model;
        if (arrowModel.destVcClass == nil) {
            return;
        }
        UIViewController *vc = [[arrowModel.destVcClass alloc] init];
        vc.title = arrowModel.title;
        [self.navigationController pushViewController:vc animated:YES];
        
    } else {
        return;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    LDSettingGroupModel *group = self.dataArray[section];
    return group.headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    LDSettingGroupModel *group = self.dataArray[section];
    return group.footerTitle;
}


@end
