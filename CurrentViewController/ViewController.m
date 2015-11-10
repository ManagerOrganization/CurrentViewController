//
//  ViewController.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

//vc
#import "ViewController.h"
#import "AnotherViewController.h"
//view
#import "ICanPushView.h"
#import "ICanPresentView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ICanPushView *pushView=[ICanPushView iCanPushView];
    pushView.frame=CGRectMake(10, 200, 200, 100);
    pushView.backgroundColor=[UIColor grayColor];
    [self.view addSubview:pushView];
    
    ICanPresentView *presentView=[ICanPresentView iCanPresentView];
    presentView.frame=CGRectMake(10, 350, 200, 100);
    presentView.backgroundColor=[UIColor grayColor];
    [self.view addSubview:presentView];

}


@end


