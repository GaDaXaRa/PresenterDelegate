//
//  IHViewController.m
//  Delegates
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)exercise1
{
//    Create a text field, a button and a label using initWithFrame with the following features and
//    add them to the view
//    - The textfield's placeholder must be "Beer's name"
//    - The text field's clear button should only appear when we are editing the text
//    - In one of text field extra view we will show a beer when the text is not being edited
//    - The button's title must be "Add beer"
//    - When the button is pressed, the name we have on the text field is set on the label
//    - When we press the button, they keyboard should be dismissed (Bonus)

}

- (void)exercise2
{
    //Create a label that informs the user when the text field is being edited
    //(Bonus) Don't allow to enter numeric characters
}

- (void)exercise3
{
//  Create a text view so we can write a description of the beer
//  Include a label that informs of the length of the text. Tip: use the length method and the [NSString stringWithFormat:"%d"] to conver the integer to a NSString
//  (Bonus) Allow 50 characters only
}




@end
