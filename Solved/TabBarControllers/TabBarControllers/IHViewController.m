//
//  IHViewController.m
//  TabBarControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation IHViewController

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
    
//    Add a button in one of the view controllers that adds and removes a third view controller on the tab bar controller
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 40);
    [button setTitle:@"Add Bubble Type" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(addViewController)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
//    Let's add a text field to the previous view controller to add new beer bubble types. When we enter some text and press the button, the third view controller gets created and shows the bubble type name in a label and adds a badge to the tab bar item indicating that there is a new value in there to be looked at.**
    
    self.textField =
        [[UITextField alloc] initWithFrame:CGRectMake(button.frame.origin.x, button.frame.origin.y - 60, 100, 40)];
    self.textField.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.textField];
}

- (void)addViewController
{
    NSMutableArray *viewControllers =
    [[NSMutableArray alloc] initWithArray:self.tabBarController.viewControllers];
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.tabBarItem.title = @"Bubble Types";
    [viewControllers addObject:viewController];
    [self.tabBarController setViewControllers:viewControllers animated:YES];
    

    viewController.tabBarItem.badgeValue = @"1";
    
    [self.textField resignFirstResponder];
}

@end
