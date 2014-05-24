//
//  IHSecondViewController.m
//  XIBs
//
//  Created by Francisco Sevillano on 24/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHSecondViewController.h"

@interface IHSecondViewController ()

@end

@implementation IHSecondViewController

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
    UIView *customView =
        [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] objectAtIndex:0];
    
    customView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:customView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
