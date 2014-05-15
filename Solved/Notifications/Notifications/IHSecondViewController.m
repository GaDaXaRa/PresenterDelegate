//
//  IHSecondViewController.m
//  Notifications
//
//  Created by Francisco Sevillano on 20/04/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHSecondViewController.h"

@interface IHSecondViewController ()

@property (nonatomic, strong) UILabel *numberOfBeersLabel;
@property (nonatomic, strong) UISwitch *shouldWeCountSwitch;
@end

@implementation IHSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
    [self exercise2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)exercise1
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:) name:@"NewBeerNumber"
                                               object:nil];
    
    self.numberOfBeersLabel =
        [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 40)];
    [self.view addSubview:self.numberOfBeersLabel];
}

- (void)receiveNotification:(NSNotification *)notification
{
    if (self.shouldWeCountSwitch.isOn)
    {
        NSDictionary *userInfo = notification.userInfo;
        NSNumber *newNumberOfBeers = [userInfo objectForKey:@"numberOfBeers"];
        
        NSNumber *previousBeers =
        [NSNumber numberWithInteger:[self.numberOfBeersLabel.text integerValue]];
        NSUInteger totalNumberOfBeers = previousBeers.integerValue + newNumberOfBeers.integerValue;
        
        self.numberOfBeersLabel.text =
            [NSString stringWithFormat:@"%d",totalNumberOfBeers];
    }
}

- (void)exercise2
{
    self.shouldWeCountSwitch =
        [[UISwitch alloc] initWithFrame:CGRectMake(150, 10, 100, 40)];
    [self.shouldWeCountSwitch setOn:YES];
    [self.view addSubview:self.shouldWeCountSwitch];
}

@end
