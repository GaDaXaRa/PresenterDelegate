//
//  IHViewController.m
//  Containers
//
//  Created by Francisco Sevillano on 19/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@property (nonatomic, strong) UIViewController *childViewController;

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
}

- (void)exercise1
{
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [addButton addTarget:self
               action:@selector(addNewViewController)
     forControlEvents:UIControlEventTouchUpInside];
    addButton.frame = CGRectMake(10, 20, 100, 44);
    [addButton setTitle:@"Add" forState:UIControlStateNormal];
    [self.view addSubview:addButton];
    
    UIButton *removeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [removeButton addTarget:self
                  action:@selector(removeViewController)
        forControlEvents:UIControlEventTouchUpInside];
    removeButton.frame = CGRectMake(200, 20, 100, 44);
    [removeButton setTitle:@"Remove" forState:UIControlStateNormal];
    [self.view addSubview:removeButton];
}

- (void)addNewViewController
{
    self.childViewController = [[UIViewController alloc] init];
    [self addChildViewController:self.childViewController];
    self.childViewController.view.frame = CGRectMake(10, 100, 200, 200);
    [self.view addSubview:self.childViewController.view];
    self.childViewController.view.backgroundColor = [UIColor redColor];
    [self.childViewController didMoveToParentViewController:self];
}

- (void)removeViewController
{
    [self.childViewController willMoveToParentViewController:nil];
    [self.childViewController.view removeFromSuperview];
    [self.childViewController removeFromParentViewController];
}

@end
