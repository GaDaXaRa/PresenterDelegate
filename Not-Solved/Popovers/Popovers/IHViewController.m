//
//  IHViewController.m
//  Popovers
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHBeerInfoViewController.h"
#import "IHViewController.h"

@interface IHViewController ()

@end

@implementation IHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guinness"]];
    imageView.frame = CGRectMake(20, 80, 250, 455);
    [self.view addSubview:imageView];
    
//    Given the image of the beer, have an button of type `UIButtonInfoDark` that when pressed, shows the information of that beer in a popover.
}

@end
