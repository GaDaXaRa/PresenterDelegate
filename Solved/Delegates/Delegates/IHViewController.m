//
//  IHViewController.m
//  Delegates
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()<UITextFieldDelegate,UITextViewDelegate>

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *editingLabel;
@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UILabel *characterCountLabel;
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
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 200, 50)];
    self.textField.placeholder = @"Beer's name";
    self.textField.delegate = self;
    
    UIImage *image = [UIImage imageNamed:@"icn-beer-normal"];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    imageView.image = image;
    self.textField.leftViewMode = UITextFieldViewModeUnlessEditing;
    self.textField.leftView = imageView;
    self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:self.textField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(220, 10, 80, 44);
    [button setTitle:@"Add Beer" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(addBeer) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 100, 44)];
    [self.view addSubview:self.label];
    

}

- (void)addBeer
{
    self.label.text = self.textField.text;
    [self.textField resignFirstResponder];
}

- (void)exercise2
{
    //Create a label that informs the user when the text field is being edited
    //(Bonus) Don't allow to enter numeric characters
    self.editingLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 80, 100, 44)];
    self.editingLabel.text = @"Not editing";
    [self.view addSubview:self.editingLabel];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.editingLabel.text = @"Editing";
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    self.editingLabel.text = @"Not editing";
}

- (void)exercise3
{
//  Create a text view so we can write a description of the beer
//  Include a label that informs of the length of the text. Tip: use the length method and the [NSString stringWithFormat:"%d"] to conver the integer to a NSString
//  (Bonus) Allow 50 characters only
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 150, 300, 200)];
    self.textView.backgroundColor = [UIColor grayColor];
    self.textView.delegate = self;
    [self.view addSubview:self.textView];
    
    self.characterCountLabel = [[UILabel alloc] initWithFrame:CGRectMake(300, 150, 100, 44)];
    [self.view addSubview:self.characterCountLabel];
    
}


- (void)textViewDidChange:(UITextView *)textView
{
    self.characterCountLabel.text = [NSString stringWithFormat:@"%d",self.textView.text.length];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if (self.textView.text.length + text.length > 20)
    {
        return NO;
    }
    
    return YES;
}




@end
