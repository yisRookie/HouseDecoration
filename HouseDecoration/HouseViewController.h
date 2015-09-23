//
//  HouseViewController.h
//  HouseDecoration
//
//  Created by 峰 on 15/8/20.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HouseViewController : UIViewController

@end


#define Edge_NavigationItem 10.f
#define Height_NavigationBar 44.f

#pragma mark - 定制导航栏 按钮
@interface UIViewController (HouseNavigationBarItem)
/**
 *  转化UIView*为 UIBarButtonItem ，加载到系统导航栏上
 *
 *  @param btn 自定义按钮视图
 *
 */
- (UIBarButtonItem *)barItemWithCustomView:(id )custom;

/**
 *  返回按钮
 */
- (UIButton *)commanBackButton;
- (void)backButtonPressed;



- (void)navigationBarClearColor;//导航栏透明
- (void)navigationBarUserRedColor;//红色导航栏

@end