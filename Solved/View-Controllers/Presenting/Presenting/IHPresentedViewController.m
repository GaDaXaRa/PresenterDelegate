//
//  IHPresentedViewController.m
//  Presenting
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHPresentedViewController.h"

@interface IHPresentedViewController ()

@end

@implementation IHPresentedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createDismissButton];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)createDismissButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 40);
    button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    [button setTitle:@"dismiss" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)dismiss
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
