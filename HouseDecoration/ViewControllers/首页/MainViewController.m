//
//  MainViewController.m
//  HouseDecoration
//
//  Created by 峰 on 15/8/19.
//  Copyright (c) 2015年 峰. All rights reserved.
//

#import "MainViewController.h"
#import "CircleLHQView.h"
#import "CustomerViewController.h"
#import "DJPageView.h"
#import "LSPaoMaView.h"
#import "JXBAdPageView.h"
//#import "AI3Category.h"'


@interface MainViewController ()

@property (nonatomic ,strong) CircleLHQView *circleMenu;

@end

@implementation MainViewController
@synthesize circleMenu;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    

    [self initUI];
}
-(void)viewWillAppear:(BOOL)animated{

//    [AI3Category setDeviceLanLandscape];
 
}

-(void)initUI{
    //    WEAKSELF
    //    circleMenu = [[CircleLHQView alloc] initWithFrame:CGRectMake(120, 150, 300, 300) andImage:nil];
    //    [circleMenu addSubViewWithSubView:nil andTitle:@[@"第一个",@"第二个",@"第三个",@"第四个",@"第五个",@"第六个"] andSize:CGSizeMake(60, 60) andcenterImage:nil];
    //    [self.view addSubview:circleMenu];
    //    circleMenu.clickSomeOne=^(NSString *str){
    //        NSLog(@"%@被点击了",str);
    //        NSLog(@"------------");
    //        CustomerViewController *customerVC = [[CustomerViewController alloc]init];
    //        [ weakSelf.navigationController pushViewController:customerVC animated:YES];
    //    };
    ////    self.navigationItem.leftBarButtonItem=self.leftBarButtonItem;
    
    
    WEAKSELF
    UIView *adView = [UIView new];
//    adView.backgroundColor =[UIColor blueColor];
    
    [self.view addSubview:adView];
    [adView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.right.mas_equalTo(weakSelf.view);
        make.top.mas_equalTo(weakSelf.view).offset(0);
        make.height.mas_equalTo(200.);
        ;
    }];
    [adView layoutIfNeeded];
    
    JXBAdPageView *aView = [[JXBAdPageView alloc] initWithFrame:adView.bounds];
    aView.iDisplayTime = 2;
    
    NSArray *imageArray = @[@"http://pic2.nipic.com/20090427/2390580_091546018_2.jpg",
                            @"http://image.tianjimedia.com/uploadImages/2012/236/5UADNJV31013.jpg",
                            @"http://pic31.nipic.com/20130708/12246968_161410243000_2.jpg",
                            @"http://pic.58pic.com/58pic/11/10/80/20X58PICzs8.jpg"];
    
    
    aView.bWebImage = YES;
    
    [aView startAdsWithBlock:imageArray block:^(NSInteger clickIndex){
        NSLog(@"%d",(int)clickIndex);
    }];
    
    [adView addSubview:aView];
    
    
    UIView *paoMaView = [UIView new];
    [self.view addSubview:paoMaView];
    
    [paoMaView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(weakSelf.view);
        make.top.mas_equalTo(adView.mas_bottom);
        make.height.mas_equalTo(34);
        
    }];
    [paoMaView layoutIfNeeded];
    
    NSString* text = @"两块钱,你买不了吃亏,两块钱,你买不了上当,真正的物有所值,拿啥啥便宜,买啥啥不贵,都两块,买啥都两块,全场卖两块,随便挑,随便选,都两块！";
    LSPaoMaView *paomav = [[LSPaoMaView alloc] initWithFrame:paoMaView.bounds title:text];
    [paoMaView addSubview:paomav];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
