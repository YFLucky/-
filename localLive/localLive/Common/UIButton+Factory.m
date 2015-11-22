//
//  UIButton+Factory.m
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "UIButton+Factory.h"

@implementation UIButton (Factory)

//+(UIButton *)buttonWithTag :(int)tag
//                  WithImageName:(NSString *)imageName
//      WithSelectedImageName:(NSString *)selectedImageName
//                  WithFrame:(CGRect)frame
//                 WithTarget:(id)target
//                 WithAction:(SEL)action

+(UIButton *)buttonWithTag :(int)tag
                  WithFrame:(CGRect)frame
                 WithTarget:(id)target
                 WithAction:(SEL)action

{
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    
//    [bt setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//    
//    [bt setBackgroundImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    
    bt.frame = frame;
    
    bt.tag = tag;
    
    [bt addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return bt;
}

@end
