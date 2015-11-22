//
//  AppDelegate.m
//  localLive
//
//  Created by 程杨峰 on 15/11/21.
//  Copyright © 2015年 cyf. All rights reserved.
//

#import "AppDelegate.h"
#import "YFHomeViewController.h"
#import "YFNavBaseViewController.h"
#import "YFTabBarBaseViewController.h"
#import "YFAboutViewController.h"
#import "YFShakeViewController.h"
#import "YFContactViewController.h"
#import "YFOnlineViewController.h"
#import "YFHotsViewController.h"
#import "YFCircleViewController.h"
#import "YFToolsViewController.h"
#import "YFGuideViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(enterMain) name:kNotificationGuideEnter object:nil];
    
    BOOL flag = [[NSUserDefaults standardUserDefaults]boolForKey:kFirstLaunch];
    
    if (flag) {
        
        [self enterMain];
    }else{
        
        self.window.rootViewController = [[YFGuideViewController alloc]init];
    }
    
    
    return YES;
}

-(void)enterMain{
    
    UIStoryboard *main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    NSMutableArray *controllerArray = [NSMutableArray array];
    
    NSArray *controllersStringArray = @[@"YFHomeViewController",@"YFHotsViewController",@"YFCircleViewController",@"YFToolsViewController",@"YFContactViewController",@"YFShakeViewController",@"YFOnlineViewController",@"YFAboutViewController"];
    for (NSString *vcName in controllersStringArray) {
        
        UIViewController *vc = [main instantiateViewControllerWithIdentifier:vcName];
        
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [controllerArray addObject:nav];
        
    }
    
    YFTabBarBaseViewController *tabBarController = [[YFTabBarBaseViewController alloc]init];
    
    tabBarController.viewControllers = controllerArray;
    
    self.window.rootViewController=  tabBarController;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)dealloc{
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
