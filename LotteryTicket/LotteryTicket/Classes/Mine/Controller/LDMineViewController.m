//
//  LDMineViewController.m
//  LotteryTicket
//
//  Created by guigu on 16/1/29.
//  Copyright © 2016年 b. All rights reserved.
//

#import "LDMineViewController.h"
#import "LDSettingViewController.h"

@interface LDMineViewController ()
@property (weak, nonatomic) IBOutlet UIButton *LoginButton;
- (IBAction)settingButtonClick;

@end

@implementation LDMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *nomalImage = [UIImage resizableImage:@"RedButtonBG"];
    UIImage *hightImage = [UIImage resizableImage:@"RedButtonDisabledBG"];
    [self.LoginButton setBackgroundImage:nomalImage forState:UIControlStateNormal];
    [self.LoginButton setBackgroundImage:hightImage forState:UIControlStateHighlighted];
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

- (IBAction)settingButtonClick {
    LDSettingViewController *setVC = [[LDSettingViewController alloc] init];
    [self.navigationController pushViewController:setVC animated:YES];
}
@end
