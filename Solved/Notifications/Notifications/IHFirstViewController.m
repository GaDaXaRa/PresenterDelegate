//
//  IHFirstViewController.m
//  Notifications
//
//  Created by Francisco Sevillano on 20/04/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHFirstViewController.h"

@interface IHFirstViewController ()

@property (nonatomic, strong) UITextField *textField;


@end

@implementation IHFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)exercise1
{
    //  Create a text field and a button so we can enter the number of beers had every day.
    //  In the next views we will register the number of beers had in the month and the
    //  number of beers left, showing them in a label.
    
    //  Hint: to convert a NSString into NSNumber
    //  [NSNumber numberWithInteger:[stringXXX integerValue]];
    
    //  Pro-Tip: we can show a numeric keyboard with textField.keyboardType =   UIKeyboardTypeNumberPad;
    
    //  When we enter a new number, we have to update at the same time the next two views
    //
    //  We can consider 30 beers as a good number to be had in a month, can't we? ;)
    
    self.textField =
        [[UITextField alloc] initWithFrame:CGRectMake(10,10, 100, 40)];
    self.textField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:self.textField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(120, 10, 100, 40);
    [button setTitle:@"Add" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(addPressed)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

- (void)addPressed
{
    [self.textField resignFirstResponder];
    NSNumber *numberOfBeers =
        [NSNumber numberWithInteger:[self.textField.text integerValue]];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NewBeerNumber" object:self userInfo:@{@"numberOfBeers" : numberOfBeers}];
}

- (void)exercise2
{
//  In the second and third view we will have a switch that indicates whether we should
//  stop counting (for those *special* nights out)
//    
//  (Extra) Make the labels red when we have passed our limit.
//  (Bonus) The second or third view should tell the enter view to disable itself once we
//  reached the limit.
    

}

@end
