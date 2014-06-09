//
//  IHViewController.m
//  Exercise1
//
//  Created by Francisco Sevillano on 15/04/14.
//  Copyright (c) 2014 Francisco Sevillano. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
    [self exercise2];
    [self exercise3];
    [self exercise4];
    [self exercise5];
    [self exercise6];
    [self exercise7];
}

- (void)exercise1
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 10, 100, 50);
    [self.view addSubview:button];
    
//   1.Set button's title for normal and highlighted state
    
    [button setTitle:@"Normal" forState:UIControlStateNormal];
    [button setTitle:@"Highlighted" forState:UIControlStateHighlighted];
    
//   2.When you press it, it should log "You pressed me!" or something similar

    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchDown];
    
    [button addTarget:self
               action:@selector(buttonReleased)
     forControlEvents:UIControlEventTouchUpInside];
    
//   3.When you release it, it should log "You released me!
}

- (void)buttonPressed
{
    NSLog(@"You pressed me");
}

- (void)buttonReleased
{
    NSLog(@"You released me");
}

- (void)exercise2
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 10, 100, 50);
    [self.view addSubview:button];
    
//  1.Add images for normal and highlighted state
//  Note:To create an image use [UIImage imageNamed:@"image name"];
    
//   2.Add background images for button
}

- (void)exercise3
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(300, 10, 300, 50)];
    [self.view addSubview:label];
    
//  1.Add some text to the label
    
//  2.Add the Georgia font using the method fontWithName method in UIFont
    
//  3.Change the label's text color
}

- (void)exercise4
{
//    1.Add two buttons and a label so that when you press the first button the label
//    gets one text and when you press the other button the text changes
}

- (void)exercise5
{
//  1.Using a switch, let's change the line break mode for a label. When it's off we
//  will use the truncate tail mode and when it's on we will use the truncate head.
    
}

- (void)exercise6
{
//   1. Using a slider, let's change the font size of a label on the fly
    
}

- (void)exercise7
{
//   1. Using a segmented control, let's change between the different line break modes
//   for a label when it has multiple lines. I.e char wrapping, clipping and word wrapping.
    
}

- (void)newMethod
{
    CGRect newRect = CGRectMake(0, 0, 100, 100);
    UIButton *newButton = [[UIButton alloc] initWithFrame:newRect];
    
}

@end
