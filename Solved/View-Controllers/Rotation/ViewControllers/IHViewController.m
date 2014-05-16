//
//  IHViewController.m
//  ViewControllers
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//Have a view controller support only portrait and portrait upside down.
//Prevent the view controller from auto rotating at all.

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown |UIInterfaceOrientationLandscapeLeft;
}

- (BOOL)shouldAutorotate
{
    return NO;
}

@end
