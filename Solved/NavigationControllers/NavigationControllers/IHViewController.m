//
//  IHViewController.m
//  NavigationControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHSecondViewController.h"
#import "IHViewController.h"

@interface IHViewController ()

@end

@implementation IHViewController

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
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 44);
    [button setTitle:@"Show next VC" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(showNextViewController)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void)showNextViewController
{
    IHSecondViewController *viewController = [[IHSecondViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
