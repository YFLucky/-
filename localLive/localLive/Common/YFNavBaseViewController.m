//
//  YFNavBaseViewController.m
//  localLive
//
//  Created by 程杨峰 on 15/11/22.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "YFNavBaseViewController.h"
#define kNavButtonHight 44

@implementation YFNavBaseViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    _navView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kUIScreenWidth, kUINavHeight)];
    
    _navView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:_navView];
    
    _leftButton = [[UIButton alloc]initWithFrame:CGRectMake(0, kUIStatusBarHeight, kNavButtonHight, kNavButtonHight)];
    
    [_leftButton setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    
    [_leftButton addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    
    [_navView addSubview:_leftButton];
    
    //添加标题 --固定的宽高
    _titleLable = [[UILabel alloc]initWithFrame:CGRectMake(kNavButtonHight, kUIStatusBarHeight, kUIScreenWidth - 2 * kNavButtonHight, kNavButtonHight)];
    
    _titleLable.text = @"首页";
    
    _titleLable.textAlignment = NSTextAlignmentCenter;
    
    _titleLable.font = [UIFont systemFontOfSize:19];
    
    [_navView addSubview:_titleLable];
    
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];

//    [_rightButton setTitle:@"登陆/注册" forState: UIControlStateNormal];
//
//    [_rightButton sizeToFit];
//    
//    _rightButton.frame = CGRectMake(kUIScreenWidth - _rightButton.frame.size.width, kUIStatusBarHeight, _rightButton.frame.size.width, kNavButtonHight);
   
    [_navView addSubview:_rightButton];
    
    if (/* DISABLES CODE */ (NO)) {
        
        [_rightButton setTitle:@"登陆/注册" forState: UIControlStateNormal];
        [_rightButton sizeToFit];
        _rightButton.frame = CGRectMake(kUIScreenWidth -
        _rightButton.frame.size.width, kUIStatusBarHeight, _rightButton.frame.size.width, kNavButtonHight);
        
        [_rightButton addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    }
    else{
        
        [_rightButton setBackgroundImage:[UIImage imageNamed:@"nav_user"] forState:UIControlStateNormal];
        
        
        _rightButton.frame = CGRectMake(kUIScreenWidth-kNavButtonHight, kUIStatusBarHeight, kNavButtonHight, kNavButtonHight);
        
        [_rightButton addTarget:self action:@selector(informationClick) forControlEvents:UIControlEventTouchUpInside];
    }

}

-(void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    
    self.navigationController.navigationBar.hidden = YES;
}
//-(void)viewWillDisappear:(BOOL)animated{
//    
//    [super viewWillDisappear:animated];
//    
//    self.navigationController.navigationBar.hidden =YES;
//}

-(void)backClick{
    
    
}
-(void)loginClick{
    
    
}

-(void)informationClick{
    
    
}

@end

