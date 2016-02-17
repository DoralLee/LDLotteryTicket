//
//  LDProductCell.m
//  LotteryTicket
//
//  Created by guigu on 16/2/15.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDProductCell.h"
#import "LDProductModel.h"

@interface LDProductCell()

@property (weak, nonatomic) IBOutlet UIImageView *icon;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation LDProductCell

- (void)awakeFromNib {
    self.icon.layer.cornerRadius = 8;
    self.icon.clipsToBounds = YES;
}

- (void)setProductModel:(LDProductModel *)productModel {
    _productModel = productModel;
    
    self.icon.image = [UIImage imageNamed:productModel.icon];
    self.nameLabel.text = productModel.title;
}

@end
