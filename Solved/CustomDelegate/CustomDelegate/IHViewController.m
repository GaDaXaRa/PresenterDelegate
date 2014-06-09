//
//  IHViewController.m
//  CustomDelegate
//
//  Created by Francisco Sevillano on 09/06/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"
#import "IHView.h"

@interface IHViewController ()<IHViewDelegate>

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    IHView *view = [[IHView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
    view.delegate = self;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IHViewDelegate methods

- (void)buttonPressed
{
    NSLog(@"button was pressed");
}

@end
