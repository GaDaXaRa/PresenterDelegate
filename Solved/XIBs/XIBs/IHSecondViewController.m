//
//  IHSecondViewController.m
//  XIBs
//
//  Created by Francisco Sevillano on 24/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHSecondViewController.h"

@interface IHSecondViewController ()

@property (nonatomic,strong)IBOutletCollection(UILabel) NSArray *labels;

@end

@implementation IHSecondViewController

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
    UIView *customView =
        [[[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil] objectAtIndex:0];
    
    customView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:customView];
    
//    Create three labels and connect them to the code using only one outlet. Change their font size using a loop.
    
    for (UILabel *label in self.labels)
    {
        label.textColor = [UIColor redColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
