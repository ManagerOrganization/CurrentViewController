//
//  AppDelegate.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ViewController *viewController=[[ViewController alloc]init];
    self.window.rootViewController=[[UINavigationController alloc]initWithRootViewController:viewController];;
    
    return YES;
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    //I can esay find out which view controller is on the screen here.
    
//    __weak UIViewController *currentVC=[UIApplication sharedApplication].currentViewController;
    __weak UIViewController *currentVC=CurrentVC;
    NSLog(@"%@",currentVC);
}

@end
