//
//  IHBeerInfoViewController.m
//  Popovers
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHBeerInfoViewController.h"

@interface IHBeerInfoViewController ()<UITextViewDelegate>

@end

@implementation IHBeerInfoViewController

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

    UILabel *beerTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 300, 50)];
    beerTitle.text = @"Guinness";
    [self.view addSubview:beerTitle];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 70, 300, 200)];
    textView.text = @"This is the best beer in the world";
    textView.delegate = self;
    [self.view addSubview:textView];
}

#pragma mark - UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([self.delegate respondsToSelector:@selector(startedEditing)])
    {
        [self.delegate startedEditing];
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([self.delegate respondsToSelector:@selector(finishedEditing)])
    {
        [self.delegate finishedEditing];
    }
}

@end
