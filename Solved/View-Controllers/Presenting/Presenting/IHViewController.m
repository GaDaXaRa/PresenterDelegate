//
//  IHViewController.m
//  Presenting
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHPresentedViewController.h"
#import "IHViewController.h"

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
    UIButton *coverVerticalButton = [UIButton buttonWithType:UIButtonTypeSystem];
    coverVerticalButton.frame = CGRectMake(10, 10, 150, 40);
    [coverVerticalButton setTitle:@"cover vertical" forState:UIControlStateNormal];
    [coverVerticalButton addTarget:self
                            action:@selector(presentWithCoverVertical)
                  forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:coverVerticalButton];
    
    UIButton *flipButton = [UIButton buttonWithType:UIButtonTypeSystem];
    flipButton.frame = CGRectMake(10, 150, 150, 40);
    [flipButton setTitle:@"flip" forState:UIControlStateNormal];
    [flipButton addTarget:self
                   action:@selector(presentWithFlip)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:flipButton];
    
    UIButton *crossDisolveButton = [UIButton buttonWithType:UIButtonTypeSystem];
    crossDisolveButton.frame = CGRectMake(10, 290, 150, 40);
    [crossDisolveButton setTitle:@"cross dissolve" forState:UIControlStateNormal];
    [crossDisolveButton addTarget:self
                           action:@selector(presentWithCrossDissolve)
                 forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:crossDisolveButton];
}

- (void)presentWithCoverVertical
{
    UIViewController *viewController = [self createViewController];
    viewController.modalPresentationStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)presentWithFlip
{
    UIViewController *viewController = [self createViewController];
    viewController.modalPresentationStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)presentWithCrossDissolve
{
    UIViewController *viewController = [self createViewController];
    viewController.modalPresentationStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:viewController animated:YES completion:nil];
}

- (UIViewController *)createViewController
{
    IHPresentedViewController *viewController = [[IHPresentedViewController alloc] init];
    return viewController;
}




@end
