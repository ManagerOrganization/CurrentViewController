//
//  UIApplication+CurrentViewController.h
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CurrentVC [UIApplication sharedApplication].currentViewController

#define PushVC(ViewController) [[UIApplication sharedApplication].currentViewController.navigationController pushViewController:ViewController animated:YES]

#define PresentVC(ViewController)\
UINavigationController *nv=[[UINavigationController alloc]initWithRootViewController:ViewController];\
[[UIApplication sharedApplication].currentViewController presentViewController:nv animated:YES completion:nil]

@interface UIApplication (CurrentViewController)

@property (nonatomic, weak) UIViewController *currentViewController;

@end
