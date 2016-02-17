//
//  LDSettingCell.m
//  LotteryTicket
//
//  Created by guigu on 16/2/12.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDSettingCell.h"
#import "LDSettingModel.h"
#import "LDSettingArrowModel.h"
#import "LDSettingSwitchModel.h"

@interface LDSettingCell ()
/**
 *  箭头
 */
@property (nonatomic, strong) UIImageView *arrowImage;
/**
 *  开关
 */
@property (nonatomic, strong) UISwitch *rightSwitch;

@end

@implementation LDSettingCell

- (UIImageView *)arrowImage {
    if (_arrowImage == nil) {
        _arrowImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navigationBack"]];
    }
    return _arrowImage;
}

- (UISwitch *)rightSwitch {
    if (_rightSwitch == nil) {
        _rightSwitch = [[UISwitch alloc] init];
    }
    return _rightSwitch;
}


+(instancetype)cellWithTableView:(UITableView *)tableView {
    static NSString *cellID = @"setting";
    LDSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[LDSettingCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    return cell;
}

- (void)setModel:(LDSettingModel *)model {
    _model = model;
    // 绑定数据
    [self setupData];
    // 设置右侧内容
    [self setupRightContent];
}

- (void)setupData {
    if (self.model.icon) {
        self.imageView.image = [UIImage imageNamed:self.model.icon];
    }
    self.textLabel.text = self.model.title;
}

- (void)setupRightContent {
    if ([self.model isKindOfClass:[LDSettingArrowModel class]]) {
        self.accessoryView = self.arrowImage;
    } else if ([self.model isKindOfClass:[LDSettingSwitchModel class]]) {
        self.accessoryView = self.rightSwitch;
        self.selectionStyle = UITableViewCellAccessoryNone;
    } else {
        self.accessoryView = nil;
    }
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
