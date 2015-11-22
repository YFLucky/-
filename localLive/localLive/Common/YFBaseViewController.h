//
//  YFBaseViewController.h
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface YFBaseViewController : UIViewController

//显示网络加载
-(void)showLoadView;
//显示网络加载,添加一些提示语
-(void)showLoadViewWithMessage:(NSString *)message;
//加载视图消失
-(void)dismissLoadView;
//用于显示提示信息
-(void)showToast:(NSString *)message;
@end
