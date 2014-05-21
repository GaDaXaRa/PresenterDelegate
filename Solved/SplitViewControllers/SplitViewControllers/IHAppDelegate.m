//
//  IHAppDelegate.m
//  SplitViewControllers
//
//  Created by Francisco Sevillano on 21/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"
#import "IHViewController.h"

@interface IHAppDelegate()<UISplitViewControllerDelegate>

@property (nonatomic, strong) IHViewController *secondVC;

@end

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    Create a split view controller that shows two different view controllers. The view controller in the big view will need to have either a navigation bar or a toolbar to show a bar button that will be used to show the left view controller when the device is in portrait mode.
    UIViewController* firstVC = [[UIViewController alloc] init];
    firstVC.title = @"Something";
    firstVC.view.backgroundColor = [UIColor redColor];
    
    self.secondVC = [[IHViewController alloc] init];
    UINavigationController *navigationController =
        [[UINavigationController alloc] initWithRootViewController:self.secondVC];
    
    UISplitViewController* splitVC = [[UISplitViewController alloc] init];
    splitVC.delegate = self;
    splitVC.viewControllers = [NSArray arrayWithObjects:firstVC, navigationController, nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = splitVC;
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    self.secondVC.navigationItem.leftBarButtonItem = barButtonItem;
}

- (void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)button
{
    self.secondVC.navigationItem.leftBarButtonItem = nil;
}

//    Avoid hiding the second view controller when the device rotates.
- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return NO;
}

@end
