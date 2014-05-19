//
//  IHViewController.m
//  Presenting
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHPresentedViewController.h"
#import "IHViewController.h"

//Exercise Hide the view controller but letting the presenter do it. The presented view controller will have to let it know using a delegate.
@interface IHViewController ()

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)exercise1
{
    //Have three buttons so each one of them presents a modal view controller in a different way
    //You can give the presented view controller's view a different color so you distinguish it
}

@end
