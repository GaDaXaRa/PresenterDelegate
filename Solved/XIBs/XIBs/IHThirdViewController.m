//
//  IHThirdViewController.m
//  XIBs
//
//  Created by Francisco Sevillano on 24/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHThirdViewController.h"

@interface IHThirdViewController ()

@end

@implementation IHThirdViewController

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
    
    UINib *viewNib = [UINib nibWithNibName:@"CustomView" bundle:[NSBundle mainBundle]];
    UIView *customView = [[viewNib instantiateWithOwner:self options:nil] objectAtIndex:0];
    customView.frame = CGRectMake(100, 100, 100, 100);
    
    [self.view addSubview:customView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
