//
//  AI3define.h
//  BiggiFiVMG
//
//  Created by 峰 on 15/6/25.
//  Copyright (c) 2015年 Allen. All rights reserved.
//


#ifndef BiggiFiVMG_AI3define_h
#define BiggiFiVMG_AI3define_h

#import "CreateModel.h"
#import "MJExtension.h"
#import "UIColor+HexString.h"
#import "UIColor+Random.h"
#import "UIButton+Block.h"
#import "UIButton+CountDown.h"
#import "UIButton+Indicator.h"
#import "UIView+Screenshot.h"
#import "CoreBtn.h"
#import "MyKeyChainHelper.h"
#import "UIDevice+Hardware.h"
#import "UIColor+HexString.h"
#import "NSData+Gzip.h"
#import "NSData+Base64.h"
#import "NSData+Encrypt.h"
#import "NSString+UUID.h"
#import "NSString+UrlEncode.h"
#import "NSString+Hash.h"
#import "NSData+Base64.h"
#import "NSString+DictionaryValue.h"



//weakSelf
#define WEAKOBJECT(obj,objName) typeof(obj) __weak objName = obj;

#define WEAKSELF WEAKOBJECT(self,weakSelf);



//---RGB---颜色
#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/) [UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]


//判空
#define StringNotEmpty(str)                 (str && (str.length > 0))
#define ArrayNotEmpty(arr)                  (arr && (arr.count > 0))

/**
*  XIB 和 Storyboard宏
*/
#define InitVCFromStoryboard(storyboardName, VCID) [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:VCID];
#define InitVCFromXib(XibName) [[XibName alloc]initWithNibName:NSStringFromClass(XibName) bundle:nil];


//获取屏幕的高 和 宽

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height

#define SCREENWIDTH [UIScreen mainScreen].bounds.size.width

//---DDLog---打印
#define DDLog(xx, ...)  NSLog(@"%s(%d): " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#endif

