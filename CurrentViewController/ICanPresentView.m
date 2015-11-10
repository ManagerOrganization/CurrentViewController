//
//  ICanPresentView.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import "ICanPresentView.h"
#import "AnotherViewController.h"
#import "UIApplication+CurrentViewController.h"


@implementation ICanPresentView

+(instancetype)iCanPresentView
{
    return [[self alloc]init];
}

-(instancetype)init
{
    if (self=[super init]) {
        UILabel *label=[[UILabel alloc]init];
        label.backgroundColor=[UIColor clearColor];
        label.text=@"touch me ,i can present";
        [label sizeToFit];
        [self addSubview:label];
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //if you want to go another view controller when you touch this view
    //you don't need create a delegate to let the display or some view controller to perform SEL
    
    NSLog(@"%@",[UIApplication sharedApplication].currentViewController);
    
    AnotherViewController *another=[[AnotherViewController alloc]init];
    PresentVC(another);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [CurrentVC.navigationController dismissViewControllerAnimated:another completion:^{
        }];
    });
    
}
@end
