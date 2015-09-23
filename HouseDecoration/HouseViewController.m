//
//  HouseViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/20.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "HouseViewController.h"

@interface HouseViewController ()

@end

@implementation HouseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.view.backgroundColor = [UIColor whiteColor];
    
    
    //防止视图上移
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
    
}


@end

@implementation UIViewController (HouseNavigationBarItem)

- (UIBarButtonItem *)barItemWithCustomView:(id)custom{
    return [[UIBarButtonItem alloc]initWithCustomView:(UIView *)custom];
}


#pragma mark - 返回
- (UIButton *)commanBackButton{
    UIButton *back = [[UIButton alloc]initWithFrame:CGRectMake(Edge_NavigationItem, 0, 30, 30)];
    [back setImage:[UIImage imageNamed:@"fm_bar"] forState:UIControlStateNormal
     ];
    [back addTarget:self action:@selector(backButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    back.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    return back;
    
    
    
    //自定义返回按钮
//    UIImage *backButtonImage = [[UIImage imageNamed:@"fanhui.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)];
//    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//    //将返回按钮的文字position设置不在屏幕上显示
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(NSIntegerMin, NSIntegerMin) forBarMetrics:UIBarMetricsDefault];
}
//返回按钮回调方法
- (void)backButtonPressed{
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
    else{
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}


- (void)navigationBarClearColor{
    if ([UIDevice isIOS7Version]) {
        
        UINavigationController *navi;
        if ([self isKindOfClass:[UINavigationController class]]) {
            navi = (UINavigationController *)self;
        }
        else{
            navi = self.navigationController;
        }
        
        navi.navigationBar.titleTextAttributes = @{
                                                   NSForegroundColorAttributeName : [UIColor whiteColor],
                                                   NSFontAttributeName : Font_NavBarTitel,
                                                   };
        
        [navi.navigationBar setTranslucent:YES];
        [navi.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
        navi.navigationBar.shadowImage = [[UIImage alloc]init];
        
        
        
        
        
    }
    else{
        //        self.navigationController.navigationBar.titleTextAttributes = @{
        //                                                                        UITextAttributeTextColor:[UIColor whiteColor],
        //                                                                        };
        //
        //        self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    }
}
- (void)navigationBarUserRedColor{
    
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBar.translucent = NO;
    if ([UIDevice isIOS7Version]) {
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithHexString:@"e22e2d"]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
        
        //iOS 隐藏/去掉 导航栏返回按钮中的文字
//        [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];
        
    }
}


@end