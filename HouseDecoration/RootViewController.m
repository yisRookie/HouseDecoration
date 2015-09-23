//
//  RootViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/19.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"
#import "CommissionVC.h"
#import "CustomerViewController.h"
#import "UserViewController.h"
#import "UserModel.h"
#import "HouseNavViewController.h"
#import "CJAreaPicker.h"


#define titleArray @[@"首页",@"客户",@"佣金",@"我的"]

@interface RootViewController ()<CJAreaPickerDelegate>
@property (nonatomic, strong) UIButton *right;
@property (nonatomic, strong) NSString *rightButtonTitle;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self drawTabBarView];
    [self creatItemForNavgationItems];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    @weakify(self);
    [RACObserve([UserModel sharedInstance], isLogin) subscribeNext:^(id x) {
        @strongify(self);
        if (![x boolValue]) {
             id loginVC = [[NSClassFromString(@"LoginViewController") alloc] init];
            HouseNavViewController *nav  = [[HouseNavViewController alloc]initWithRootViewController:loginVC];
            [self.navigationController presentViewController:nav animated:NO completion:nil];
        }else{
            self.title = @"首页";
        }
        
    }];
    [self navigationBarUserRedColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma  mark 底部tabbar
- (void)drawTabBarView{
    
    //        [self.tabBar setBackgroundColor:[UIColor colorWithRed:0.96 green:0.96 blue:0.96 alpha:1]];
    //        self.tabBar.layer.masksToBounds = YES;
    //        self.tabBar.tintColor = [UIColor colorWithRed:1 green:0.4 blue:0.02 alpha:1];
    //        self.tabBar.shadowImage = [[UIImage alloc] init];//隐藏那条黑线
    //        self.selectedIndex = 0;
    
    //设置字体颜色
    UIColor *titleNormalColor = [UIColor blackColor];
    UIColor *titleSelectedColor = [UIColor colorWithHexString:@"e22e2d"];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleNormalColor, NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleSelectedColor, NSForegroundColorAttributeName,
                                                       nil] forState:UIControlStateSelected];
    
    
    
    //视图控制器
    MainViewController *mainVC = [[MainViewController alloc]init];
    mainVC.tabBarItem = [self creatItemWith:0];
    mainVC.tabBarItem.tag = 0 ;
    
    CustomerViewController *customerVC = [[CustomerViewController alloc]init];
    customerVC.tabBarItem  = [self creatItemWith:1];
    customerVC.tabBarItem.tag = 1;
    

    CommissionVC *cummissionVC = [[CommissionVC alloc]init];
    cummissionVC.tabBarItem = [self creatItemWith:2];
    cummissionVC.tabBarItem.tag = 2;
    
    UserViewController *userVC = [[UserViewController alloc]init];
    userVC.tabBarItem = [self creatItemWith:3];
    userVC.tabBarItem.tag = 3;
    
    self.viewControllers = [NSArray arrayWithObjects:mainVC,customerVC,cummissionVC,userVC,nil];
    
    self.selectedIndex = 0;
    
    //隐藏那条黑线
    //    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    
}

-(UITabBarItem*)creatItemWith:(NSInteger)tag{
    
    NSString *name1 = [NSString stringWithFormat:@"tabbar%ld",(long)tag];
    NSString *name2 = [NSString stringWithFormat:@"tabbar%ld_on",(long)tag];
    UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:titleArray[tag] image:[[UIImage imageNamed:name1]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:name2]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    return item;
    
}

//tabbar Delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    self.title = titleArray[item.tag];
    switch (item.tag) {
        case 0:
            [self creatItemForNavgationItems];
            break;
        case 1:
            [self navgaationWithoutNoItems];
            break;
        case 2:
            [self navgaationWithoutNoItems];
            break;
        case 3:
            [self navgaationWithoutNoItems];
            break;
        default:
            break;
    }
    
}

-(void)navgaationWithoutNoItems{
    
    self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.leftBarButtonItems = nil;
}

#pragma mark  首页导航栏  消息、电话、定位、
/**
 *  首页导航栏  消息、电话、定位、
 */

-(void)creatItemForNavgationItems{
    
    UIButton *left = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50, 30)];
    //    [left setBackgroundColor:[UIColor blueColor]];
    //        [left setBackgroundImage:[UIImage imageNamed:@"icon_15"] forState:UIControlStateNormal];
    //    [left addTarget:self.navigationController action:@selector(popViewControllerAnimated:) forControlEvents:UIControlEventTouchUpInside];
    [left setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [left setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [left setTitle:@"mess" forState:UIControlStateNormal];
    UIBarButtonItem *messageButton = [[UIBarButtonItem alloc]initWithCustomView:left];
    
    
    UIBarButtonItem *Button2 = [[UIBarButtonItem alloc]
                                initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                target:nil
                                action:nil];
    
    UIButton *left2 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 30)];
    //    [left2 setBackgroundColor:[UIColor blueColor]];
    //        [left setBackgroundImage:[UIImage imageNamed:@"icon_15"] forState:UIControlStateNormal];
    //    [left2 addTarget:self.navigationController action:@selector(popViewControllerAnimated:) forControlEvents:UIControlEventTouchUpInside];
    [left2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [left2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [left2 setTitle:@"call" forState:UIControlStateNormal];
    
    
    UIBarButtonItem *callButton = [[UIBarButtonItem alloc]initWithCustomView:left2];
    
    NSArray * buttonArray= [[NSArray alloc]initWithObjects:messageButton,Button2,callButton, nil];
    self.navigationItem.leftBarButtonItems = buttonArray;
    
    self.right = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 60, 30)];
    //    [self.right setBackgroundColor:[UIColor blueColor]];
    [self.right.titleLabel setFont:Font_Button(14)];
    //    self.right.titleLabel.adjustsFontSizeToFitWidth = YES;
    //    self.right.titleLabel.textAlignment = 2 ;
    [self.right.titleLabel setLineBreakMode:NSLineBreakByTruncatingTail];
    //        [left setBackgroundImage:[UIImage imageNamed:@"icon_15"] forState:UIControlStateNormal];
    [self.right addTarget:self action:@selector(pickerButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.right setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.right setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    @weakify(self);
    [RACObserve(self, rightButtonTitle) subscribeNext:^(NSString *x) {
        @strongify(self);
        [self.right setTitle:x?x:@"定位" forState:UIControlStateNormal];
        
    }];
    
    UIBarButtonItem *cityButton = [[UIBarButtonItem alloc]initWithCustomView:self.right];
    
    self.navigationItem.rightBarButtonItem = cityButton ;
    
}

- (void)pickerButtonAction:(id)sender {
    CJAreaPicker *picker = [[CJAreaPicker alloc]initWithStyle:UITableViewStylePlain];
    picker.delegate = self;
    HouseNavViewController *navc = [[HouseNavViewController alloc]initWithRootViewController:picker];
    [self presentViewController:navc animated:YES completion:nil];
}

#pragma mark -- CJAreaPickerDelegate

- (void)areaPicker:(CJAreaPicker *)picker didSelectAddress:(NSString *)address {
    self.rightButtonTitle = address;
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
