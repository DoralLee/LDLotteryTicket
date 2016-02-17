//
//  LDBuyViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDBuyViewController.h"
#import "LDTitleButton.h"

@interface LDBuyViewController ()

- (IBAction)titleClick:(LDTitleButton *)sender;

@end

@implementation LDBuyViewController
{
    BOOL _isTitleBtnOn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _isTitleBtnOn = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)titleClick:(LDTitleButton *)sender {
    if (!_isTitleBtnOn) {
        _isTitleBtnOn = YES;
        [UIView animateWithDuration:0.5 animations:^{
            sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
        }];

    } else {
        _isTitleBtnOn = NO;
        [UIView animateWithDuration:0.5 animations:^{
            sender.imageView.transform = CGAffineTransformMakeRotation(2 * M_PI);
        }];

    }
}
@end
