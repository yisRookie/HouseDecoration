//
//  LoginViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/22.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "DJRegisterView.h"
#import "ForgetPasswordViewController.h"
#import "UserModel.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    
    self.title = @"登录";
    [super viewDidLoad];
    [self navigationBarUserRedColor];
    WEAKSELF
    DJRegisterView *registerView = [[DJRegisterView alloc]
                                    initwithFrame:
                                    weakSelf.view.bounds
                                    djRegisterViewType:DJRegisterViewTypeNav action:^(NSString *acc, NSString *key) {
                                        [UserModel sharedInstance].isLogin = YES;
                                        [weakSelf.navigationController dismissViewControllerAnimated:YES completion:nil];
                                        
                                    } zcAction:^{
                            
                                        RegisterViewController *registerVC = [[RegisterViewController alloc]init];
                                        [weakSelf.navigationController pushViewController:registerVC animated:YES];
                                        
                                    } wjAction:^{
                                        ForgetPasswordViewController *forgetVC = [[ForgetPasswordViewController alloc]init];
                                        [weakSelf.navigationController pushViewController:forgetVC animated:YES];
                                        
                                        
                                    }];
    [self.view addSubview:registerView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
