//
//  YFBaseViewController.m
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "YFBaseViewController.h"
#import "MBProgressHUD.h"
#import "UIView+Toast.h"
@interface YFBaseViewController ()

@property(nonatomic,strong)MBProgressHUD *HUD;

@end

@implementation YFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [self randomColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)showLoadView{
    
    self.HUD = [[MBProgressHUD alloc ]initWithView:self.view];
    
    [self.HUD show:YES];
    
    [self.view addSubview:self.HUD];
    
    
}
-(void)dismissLoadView{
    
    if (self.HUD) {
        
        [self.HUD removeFromSuperview];
        
        [self.HUD hide:YES];
        
        self.HUD = nil;
    }
}
-(void)showToast:(NSString *)message{
    
    [self.view makeToast:message];
    
}

-(void)showLoadViewWithMessage:(NSString *)message{
    
    
    
}
-(UIColor *)randomColor{
    
    CGFloat r = arc4random()%256/255.0;
    CGFloat g = arc4random()%256/255.0;
    CGFloat b = arc4random()%256/255.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
