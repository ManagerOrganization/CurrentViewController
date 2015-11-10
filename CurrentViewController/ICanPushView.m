//
//  ICanPushView.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import "ICanPushView.h"
#import "AnotherViewController.h"
#import "UIApplication+CurrentViewController.h"

@implementation ICanPushView

+(instancetype)iCanPushView
{
    return [[self alloc]init];
}

-(instancetype)init
{
    if (self=[super init]) {
        UILabel *label=[[UILabel alloc]init];
        label.backgroundColor=[UIColor clearColor];
        label.text=@"touch me ,i can push";
        [label sizeToFit];
        [self addSubview:label];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //if you want to go another view controller when you touch this view
    //you don't need create a delegate to let the display or some view controller to perform SEL
    //当你在子view点击响应去别的view controller。你不再需要一个代理或者block去让一个能跳转的vc知道
    
    NSLog(@"%@",[UIApplication sharedApplication].currentViewController);
    
    AnotherViewController *another=[[AnotherViewController alloc]init];
    //    [[UIApplication sharedApplication].currentViewController.navigationController pushViewController:another animated:YES];
    //OR
    PushVC(another);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [CurrentVC.navigationController popViewControllerAnimated:YES];
    });
    
}


@end
