//
//  UIButton+Factory.h
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Factory)

+(UIButton *)buttonWithTag :(int)tag
                  WithFrame:(CGRect)frame
                 WithTarget:(id)target
                 WithAction:(SEL)action;
@end
