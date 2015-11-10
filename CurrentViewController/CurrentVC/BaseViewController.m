
//
//  BaseViewController.m
//  CurrentViewController
//
//  Created by Kael on 11/10/15.
//  Copyright © 2015 Kael. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [UIApplication sharedApplication].currentViewController=self;
}


@end
