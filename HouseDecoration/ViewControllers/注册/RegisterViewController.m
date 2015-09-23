//
//  RegisterViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/19.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "RegisterViewController.h"
#import "DJRegisterView.h"
#import "SetPasswordViewController.h"

//#import "UserModel.h"


@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"注册";
    WEAKSELF
    DJRegisterView *djzcView = [[DJRegisterView alloc]
                                initwithFrame:self.view.bounds djRegisterViewTypeSMS:DJRegisterViewTypeScanfPhoneSMS plTitle:@"请输入获取到的验证码"
                                title:@"下一步"
                                
                                hq:^BOOL(NSString *phoneStr) {
                                    
                                    return YES;
                                }
                                
                                tjAction:^(NSString *yzmStr) {
                                    
                                    SetPasswordViewController *setPasswordVC = [[SetPasswordViewController alloc]init];
                                    [weakSelf.navigationController pushViewController:setPasswordVC animated:YES];
                                    
                                }];
    [self.view addSubview:djzcView];

    
    // Do any additional setup after loading the view.
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

- (void)start:(id)sender {
    
//    [self.navigationController dismissModalViewControllerAnimated:YES];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
