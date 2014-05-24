//
//  IHViewController.m
//  XIBs
//
//  Created by Francisco Sevillano on 24/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"
#import "IHSecondViewController.h"
#import "IHThirdViewController.h"

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
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)buttonPressed:(id)sender
{
    [[[UIAlertView alloc] initWithTitle:@"Alert!" message:@"Button Pressed" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Ok", nil] show];
}

- (IBAction)showThirdViewController:(id)sender
{
    IHThirdViewController *thirdViewController =
        [[IHThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}

- (IBAction)showSecondViewController:(id)sender
{
    IHSecondViewController *secondViewController =
        [[IHSecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

@end
