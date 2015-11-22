//
//  YFGuideViewController.m
//  localLive
//
//  Created by 程杨峰 on 15/11/22.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "YFGuideViewController.h"
#import "YFFunction.h"

#define kImageCount 3

@implementation YFGuideViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    //添加UIScrollView
    UIScrollView *guideView = [[UIScrollView alloc]initWithFrame:kUIScreenBounds];
    
    guideView.contentSize = CGSizeMake(kImageCount *kUIScreenWidth, 0);
    
    guideView.pagingEnabled = YES;
    
    guideView.showsHorizontalScrollIndicator = NO;
    
    guideView.bounces = NO;
    
    [self.view addSubview:guideView];
    
    //在UIScrollView 循环添加 imageView
    for (int i = 0; i<kImageCount; ++i) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(i*kUIScreenWidth, 0, kUIScreenWidth, kUIScreenHeight)];
        
        NSString *imageName = [NSString stringWithFormat:@"guide_%d",i];
        
        imageView.image = [UIImage imageNamed:imageName];
        
        [guideView addSubview:imageView];
        
        //在最后一个 imageView 上添加点击手势
        if (i==(kImageCount - 1)) {
            
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(enter)];
            
            imageView.userInteractionEnabled = YES;
            
            [imageView addGestureRecognizer:tap];
            
            
        }
        
    }
}
-(void)enter{
    
    
    [[NSNotificationCenter defaultCenter]postNotificationName:kNotificationGuideEnter object:nil];
    
    
    [YFFunction saveValue:YES forKey:kFirstLaunch];
}
@end
