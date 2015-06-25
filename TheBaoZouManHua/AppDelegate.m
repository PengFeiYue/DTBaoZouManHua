//
//  AppDelegate.m
//  TheBaoZouManHua
//
//  Created by lanouhn on 15/6/24.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    /*
    NSLog(@"yuepengfei");
    NSLog(@"huangshuangquan");
    NSLog(@"yuepengfei");
    NSLog(@"Cheshire测试");
    */
    
    //创建根视图控制器
    RootViewController *rootVC = [[RootViewController alloc]init];
    rootVC.tabBarItem.title = @"首页";
    rootVC.tabBarItem.image = [UIImage imageNamed:@"5458.png"];
    //创建导航条控制器，并把rootVC贴到rootNV上
    UINavigationController *rootNV = [[UINavigationController alloc]initWithRootViewController:rootVC];
    
    CollectTableViewController *collectVC = [[CollectTableViewController alloc]init];
    collectVC.tabBarItem.title = @"我的收藏";
    collectVC.tabBarItem.image = [UIImage imageNamed:@"0844.png"];
    
    UINavigationController *collectNV = [[UINavigationController alloc]initWithRootViewController:collectVC];
    
    
    
    myViewController *myVC = [[myViewController alloc]init];
    myVC.tabBarItem.title = @"我的";
    myVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_contacts.png"];
    UINavigationController *myNV = [[UINavigationController alloc]initWithRootViewController:myVC];
    
    UINavigationController *exitNV = [[UINavigationController alloc]init];
    exitNV.tabBarItem.title = @"退出";
    exitNV.tabBarItem.image = [UIImage imageNamed:@"Unknown.png"];
    
/*************标签视图控制器部分********************/
    //创建一个不可变数组用来管理多个控制器
    NSArray *controllers = @[rootNV , collectNV , myNV , exitNV];
    
    //创建一个标签视图控制器
    UITabBarController *tabar = [[UITabBarController alloc]init];
    //给标签视图控制器指定准备好的单试图控制器数组
    tabar.viewControllers = controllers;
    //设置标签栏的渲染颜色
    tabar.tabBar.tintColor = [UIColor brownColor];
    //设置整个tabar的颜色
    tabar.tabBar.barTintColor = [UIColor darkGrayColor];
    
    //设置默认的标签是那个
    tabar.selectedIndex = 0;
    
    //把标签试图控制器作为window的根视图控制器
    self.window.rootViewController = tabar;
    [tabar release];
    [rootVC release];
    [rootNV release];
    [collectNV release];
    [myNV release];
    [exitNV release];
    
    
    
    
    
    
    return YES;
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

@end
