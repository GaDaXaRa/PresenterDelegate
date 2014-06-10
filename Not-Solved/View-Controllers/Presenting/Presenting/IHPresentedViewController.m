//
//  IHPresentedViewController.m
//  Presenting
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHPresentedViewController.h"

@interface IHPresentedViewController ()
@property(strong, nonatomic) UITextField *userInfoText;
@end

@implementation IHPresentedViewController

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
    self.view.backgroundColor = [UIColor whiteColor];
    self.userInfoText = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 200, 20)];
    self.userInfoText.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.userInfoText];
    UIButton *dismissButton = [UIButton buttonWithType:UIButtonTypeSystem];
    dismissButton.frame = CGRectMake(20, 100, 200, 20);
    [dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
    [dismissButton addTarget:self action:@selector(sendDismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:dismissButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)sendDismiss {
    [self.delegate backWithUserInfo:self.userInfoText.text];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
