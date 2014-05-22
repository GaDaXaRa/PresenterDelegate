//
//  IHViewController.m
//  Popovers
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHBeerInfoViewController.h"
#import "IHViewController.h"

@interface IHViewController ()<IHBeerInfoViewControllerDelegate, UIPopoverControllerDelegate>

@property (nonatomic, strong) UIButton *beerInfoButton;
@property (nonatomic, strong) UIPopoverController *beerInfoPopover;
@property (nonatomic) BOOL shouldHidePopOver;

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
    
    self.beerInfoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    self.beerInfoButton.frame =
        CGRectMake(imageView.frame.origin.x + imageView.frame.size.width + 20,
                   imageView.frame.origin.y + (imageView.frame.size.height / 2),
                   40,
                   40);
    [self.beerInfoButton addTarget:self action:@selector(showPopover) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.beerInfoButton];
    
    self.shouldHidePopOver = YES;
}

- (void)showPopover
{
    IHBeerInfoViewController *beerInfoViewController = [[IHBeerInfoViewController alloc] init];
    beerInfoViewController.delegate = self;
    self.beerInfoPopover =
        [[UIPopoverController alloc] initWithContentViewController:beerInfoViewController];
    self.beerInfoPopover.delegate = self;
    [self.beerInfoPopover presentPopoverFromRect:self.beerInfoButton.frame
                                          inView:self.view
                        permittedArrowDirections:UIPopoverArrowDirectionUp | UIPopoverArrowDirectionDown
                                        animated:YES];
}

#pragma mark - IHViewController

- (void)startedEditing
{
    self.shouldHidePopOver = NO;
}

- (void)finishedEditing
{
    self.shouldHidePopOver = YES;
}

#pragma mark - UIPopoverControllerDelegate methods

- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController
{
    return self.shouldHidePopOver;
}

@end
