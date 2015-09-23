//
//  UserModel.h
//  HouseDecoration
//
//  Created by 峰 on 15/8/19.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject


@property (nonatomic,assign) BOOL isLogin;
@property (nonatomic,strong) NSString *userID;
@property (nonatomic,strong) NSString *password;


+ (instancetype)sharedInstance;

@end
