//
//  RootViewModel.h
//  HouseDecoration
//
//  Created by 峰 on 15/9/9.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RootViewModel : NSObject



-(RACSignal *)doLoginWithName:(NSString *)user andPassword:(NSString *)password;
@end
