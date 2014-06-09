//
//  IHSecondViewController.m
//  Notifications
//
//  Created by Francisco Sevillano on 20/04/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHFirstViewController.h"
#import "IHSecondViewController.h"

@interface IHSecondViewController ()

@end

@implementation IHSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
    [self exercise2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)exercise1
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kBeersHadNotificationName
                                               object:nil];
}

- (void)receiveNotification:(NSNotification *)notification
{
    NSDictionary *userInfo = notification.userInfo;
}


- (void)exercise2
{

}

@end
