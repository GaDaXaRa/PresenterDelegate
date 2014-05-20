//
//  IHAppDelegate.m
//  NavigationControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"
#import "IHViewController.h"

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
//    Create a view controller that contains a button. Create a navigation controller that will be the root view controller of the window. Add our created view controller as the root view controller of the navigation controller.
    IHViewController *viewController = [[IHViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];

    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    //Hide the navigation bar and show a button instead that will take us back to the first one.
    [navigationController setNavigationBarHidden:YES];
    return YES;
}

@end
