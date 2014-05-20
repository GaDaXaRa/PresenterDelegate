//
//  IHSecondViewController.m
//  NavigationControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHSecondViewController.h"

@interface IHSecondViewController ()

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
    
//    Hide the navigation bar and show a button instead that will take us back to the first one.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, 100, 44);
    [button setTitle:@"GoBack" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(goBack)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
    //In the second view controller, change the navigation bar to be yellow, have a title and a view at the right that is an edit button.
    
    self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    self.navigationItem.title = @"Edit beers";
    self.navigationItem.rightBarButtonItem =
        [[UIBarButtonItem alloc] initWithTitle:@"Edit"
                                         style:UIBarButtonItemStylePlain
                                        target:self
                                        action:@selector(showToolBar)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//When we press the edit button, we will show a toolbar with two buttons: "add" "remove". The Edit button will have to change to "Done". When we press done, we will hide the toolbar.

- (void)showToolBar
{
    UIBarButtonItem *addButton =
        [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem *removeButton =
    [[UIBarButtonItem alloc] initWithTitle:@"remove" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.toolbarItems = @[addButton,removeButton];
    [self.navigationController setToolbarHidden:NO animated:YES];
    
    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(hideToolBar)];
    
}

- (void)hideToolBar
{
    [self.navigationController setToolbarHidden:YES animated:YES];
    
    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Edit"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(showToolBar)];
}


//Hide the navigation bar and show a button instead that will take us back to the first one.
- (void)goBack
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
