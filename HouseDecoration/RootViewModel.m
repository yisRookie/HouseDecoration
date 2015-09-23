//
//  RootViewModel.m
//  HouseDecoration
//
//  Created by 峰 on 15/9/9.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "RootViewModel.h"


@implementation RootViewModel

-(id)init {
    self = [super init];
    if(!self) return nil;
    return self;
}


- (void)pickerButtonAction:(id)sender{


}

-(RACSignal *)doLoginWithName:(NSString *)user andPassword:(NSString *)password {
    
   return [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
       
       
       
        return [RACDisposable disposableWithBlock:^{
       
            
            
            
            
        }];
    }] deliverOn:[RACScheduler mainThreadScheduler]];
	
}

@end
