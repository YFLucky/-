//
//  YFFunction.m
//  localLive
//
//  Created by 程杨峰 on 15/11/22.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "YFFunction.h"

@implementation YFFunction

+(void)saveValue:(BOOL)value forKey:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}

@end
