//
//  UserModel.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/19.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel


+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.isLogin = NO;
        
    }
    return self;
}



-(NSString *)password{
    
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"Password"];
    
}

- (NSString *)userID{

    return [[NSUserDefaults standardUserDefaults] valueForKey:@"userName"];

}



@end
