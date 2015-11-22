//
//  Constant.h
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#ifdef DEBUG

#define YFLog(...) NSLog(__VA_ARGS__)

#else

#define YFLog(...)


#endif

#pragma --系统值

#define kUIScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kUIScreenHeight [UIScreen mainScreen].bounds.size.height
#define kUIScreenBounds [UIScreen mainScreen].bounds
#define kTabBarHeight       49
#define kUINavHeight        64
#define kUIStatusBarHeight  20

#pragma mark --Key-Value


#define kFirstLaunch  @"KYFFirstGuideLaunch"


#pragma mark --通知

#define kNotificationGuideEnter  @"kNotificationGuideEnter"

#endif /* Constant_h */
