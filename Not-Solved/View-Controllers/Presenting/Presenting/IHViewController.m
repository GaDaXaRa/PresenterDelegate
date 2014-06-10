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
@interface IHViewController ()<BackToPresenterDelegate>
@property (strong, nonatomic)IHPresentedViewController *presented;
@property (strong, nonatomic)UIButton *coverVerticalButton;
@property (strong, nonatomic)UIButton *flipHorizontalButton;
@property (strong, nonatomic)UIButton *crossDisolveButton;
@property (strong, nonatomic)UILabel *backInfo;
@end

@implementation IHViewController

- (void)backWithUserInfo:(NSString *)userInfo {
    [self.presented dismissViewControllerAnimated:YES completion:nil];
    self.backInfo.text = userInfo;
}

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
    self.coverVerticalButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.coverVerticalButton.frame = CGRectMake(20, 50, 150, 20);
    [self.coverVerticalButton setTitle:@"Cover Vertical" forState:UIControlStateNormal];
    [self.view addSubview:self.coverVerticalButton];
    
    [self.coverVerticalButton addTarget:self action:@selector(presentController:) forControlEvents:UIControlEventTouchUpInside];
    
    self.flipHorizontalButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.flipHorizontalButton.frame = CGRectMake(20, 100, 150, 20);
    [self.flipHorizontalButton setTitle:@"FLip Horizontal" forState:UIControlStateNormal];
    [self.view addSubview:self.flipHorizontalButton];
    
    [self.flipHorizontalButton addTarget:self action:@selector(presentController:) forControlEvents:UIControlEventTouchUpInside];
    
    self.crossDisolveButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.crossDisolveButton.frame = CGRectMake(20, 150, 150, 20);
    [self.crossDisolveButton setTitle:@"Cross Disolve" forState:UIControlStateNormal];
    [self.view addSubview:self.crossDisolveButton];
    
    [self.crossDisolveButton addTarget:self action:@selector(presentController:) forControlEvents:UIControlEventTouchUpInside];
    
    self.backInfo = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 200, 20)];
    [self.view addSubview:self.backInfo];
    //Have three buttons so each one of them presents a modal view controller in a different way
    //You can give the presented view controller's view a different color so you distinguish it
}

- (void)presentController:(UIButton *)button {
    UIModalTransitionStyle transitionStyle = UIModalTransitionStyleCoverVertical;
    
    if ([button isEqual:self.flipHorizontalButton]) {
        transitionStyle = UIModalTransitionStyleFlipHorizontal;
    } else if ([button isEqual:self.crossDisolveButton]) {
        transitionStyle = UIModalTransitionStyleCrossDissolve;
    }
    
    self.presented = [[IHPresentedViewController alloc] init];
    self.presented.delegate = self;
    self.presented.modalTransitionStyle = transitionStyle;
    [self presentViewController:self.presented animated:YES completion:nil];
}

@end
