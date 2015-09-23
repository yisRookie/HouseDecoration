//
//  MyKeyChainHelper.h
//  KeyChainDemo
//
//  Created by 倪敏杰 on 12-7-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyKeyChainHelper : NSObject
/**
 *  保存密码
 *
 *  @param userName        用户名字
 *  @param userNameService
 *  @param pwd             密码
 *  @param pwdService
 */
+ (void) saveUserName:(NSString*)userName 
      userNameService:(NSString*)userNameService 
             psaaword:(NSString*)pwd 
      psaawordService:(NSString*)pwdService;
/**
 *  删除密码
 *
 *  @param userNameService userNameService description
 *  @param pwdService      pwdService description
 */
+ (void) deleteWithUserNameService:(NSString*)userNameService 
                   psaawordService:(NSString*)pwdService;
/**
 *  获取用户名
 *
 *  @param userNameService userNameService description
 *
 *  @return 用户名称
 */
+ (NSString*) getUserNameWithService:(NSString*)userNameService;
/**
 *  获取密码
 *
 *  @param pwdService pwdService description
 *
 *  @return 密码
 */
+ (NSString*) getPasswordWithService:(NSString*)pwdService;

@end
