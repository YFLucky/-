//
//  YFNavBaseViewController.m
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "YFTabBarBaseViewController.h"
#import "UIButton+Factory.h"
#define ktabTopViewHeight 44

@interface YFButton : UIButton

@end

@implementation YFButton

- (void)setHighlighted:(BOOL)highlighted
{
}
@end

@implementation YFTabBarBaseViewController

- (void)viewDidLoad
{

    [super viewDidLoad];

    
    self.tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, kUIScreenHeight - kTabBarHeight, kUIScreenWidth, kTabBarHeight)];
    self.tabBarView.backgroundColor = [UIColor blackColor];

    [self.view addSubview:self.tabBarView];

    for (int i = 0; i < 5; ++i) {

        NSString* normalImageName = [NSString stringWithFormat:@"home_%d", i];

        NSString* selectedImageName = [NSString stringWithFormat:@"home_%d_pressed", i];

        CGRect frame = CGRectMake(i * (kUIScreenWidth / 5), 0, kUIScreenWidth / 5, kTabBarHeight);

//        YFButton* bt = (YFButton *)[UIButton buttonWithTag:i WithImageName:normalImageName WithSelectedImageName:selectedImageName WithFrame:frame WithTarget:self WithAction:@selector(didClick)];
        
        YFButton *bt = [YFButton buttonWithType:UIButtonTypeCustom];
        
        bt.frame = frame;
        
        [bt setBackgroundImage:[UIImage imageNamed:normalImageName] forState:UIControlStateNormal];
        
        [bt setBackgroundImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
        
        bt.tag = i;
        
        [bt addTarget:self action:@selector(didClick:) forControlEvents:UIControlEventTouchUpInside];

        [self.tabBarView addSubview:bt];
        
        if (i==0) {
            
            bt.selected = YES;
        }
    }
    _topView = [[UIView alloc]initWithFrame:CGRectMake(0, kUIScreenHeight-kTabBarHeight - ktabTopViewHeight, kUIScreenWidth, ktabTopViewHeight)];
    
    _topView.alpha = 0.75;
    
    [_topView setBackgroundColor:[UIColor blackColor]];
    
    _topView.hidden = YES;
    
    [self.view addSubview:_topView];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:_topView.bounds];
    
    imageView.image = [UIImage imageNamed:@"home_topbar"];
    
    [_topView addSubview:imageView];
    //xmpp
    UIButton *contact = [UIButton buttonWithType:UIButtonTypeCustom];
    
    contact.frame = CGRectMake(0, 0, kUIScreenWidth * (123.0/640.0), ktabTopViewHeight);
    
    [contact addTarget:self action:@selector(didClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [contact setTitle:@"联系商家" forState:UIControlStateNormal];
    
    contact.tag = 5;
    
    [_topView addSubview:contact];
    
    //摇一摇
    UIButton *shake = [UIButton buttonWithTag:6  WithFrame:CGRectMake(kUIScreenWidth * (150.0/640.0), 0, kUIScreenWidth * (180.0/640.0), ktabTopViewHeight) WithTarget:self WithAction:@selector(didClick:)];
    
    [shake setTitle:@"摇一摇" forState:UIControlStateNormal];
    
    [_topView addSubview:shake];
    
    //直播
    UIButton *online = [UIButton buttonWithTag:7 WithFrame:CGRectMake(kUIScreenWidth * (350.0/640.0), 0, kUIScreenWidth * (108.0/640.0), ktabTopViewHeight) WithTarget:self WithAction:@selector(didClick:)];
    
    [online setTitle:@"直播" forState:UIControlStateNormal];
    
    
    [_topView addSubview:online];
    
    //关于
    UIButton *about = [UIButton buttonWithTag:8  WithFrame:CGRectMake(kUIScreenWidth * ((640-150)/640.0), 0, kUIScreenWidth * (150.0/640.0), ktabTopViewHeight) WithTarget:self WithAction:@selector(didClick:)];
    
    [about setTitle:@"关于" forState:UIControlStateNormal];
    
    [_topView addSubview:about];

}


- (void)didClick:(YFButton *)bt
{
    _topView.hidden =YES;
    
    [self.tabBarView.subviews enumerateObjectsUsingBlock:^(__kindof YFButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        obj.selected = NO;
        
    }];
    
    bt.selected = YES;
    
    if (bt.tag < 4) {
        
       self.selectedIndex =bt.tag;
    }
    else if (bt.tag == 4){
        
        _topView.hidden = NO;
    }
    else{
        self.selectedIndex = bt.tag -1;
       
    }
    
    
}

@end
