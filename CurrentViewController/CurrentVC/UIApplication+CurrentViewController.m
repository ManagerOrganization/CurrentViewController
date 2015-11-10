//
//  UIApplication+CurrentViewController.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import "UIApplication+CurrentViewController.h"
#import <objc/runtime.h>
@implementation UIApplication (CurrentViewController)

-(void)setCurrentViewController:(UIViewController *)currentViewController
{
    objc_setAssociatedObject(self, @selector(currentViewController), currentViewController, OBJC_ASSOCIATION_ASSIGN);
}

-(UIViewController *)currentViewController
{
    return objc_getAssociatedObject(self, _cmd);
}


@end
