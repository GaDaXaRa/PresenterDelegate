//
//  IHViewController.m
//  Views
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

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
    
    //Create a view using `initWithFrame:` and add it as a subview of the current view

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    view.center =
        CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
//    Create a second view and add it behind the first subview
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    secondView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:secondView];
    secondView.center =
        CGPointMake(self.view.frame.size.width / 2 + 50, self.view.frame.size.height / 2 + 50);
    [self.view sendSubviewToBack:secondView];
    
//    Then insert another one between the two.
    
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    thirdView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:thirdView];
    thirdView.center =
    CGPointMake(self.view.frame.size.width / 2 + 25, self.view.frame.size.height / 2 + 25);
    [self.view insertSubview:thirdView aboveSubview:secondView];
    
//    Using the image in the assets, create for image views with different content modes to see how they differ.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.contentMode = UIViewContentModeScaleToFill;
    
}

@end
