//
//  SetPasswordViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/22.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "SetPasswordViewController.h"
#import "DJRegisterView.h"

@interface SetPasswordViewController ()

@end

@implementation SetPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置密码";
    WEAKSELF
    DJRegisterView *djSetPassView = [[DJRegisterView alloc]
                                     initwithFrame:self.view.bounds action:^(NSString *key1, NSString *key2) {
                                         NSLog(@"%@%@",key1,key2);
                                         [weakSelf.navigationController popToRootViewControllerAnimated:NO];
                                         
                                        
                                         
                                         
                                         
                                     }];
    [self.view addSubview:djSetPassView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
