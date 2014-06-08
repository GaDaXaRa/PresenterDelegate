//
//  IHAppDelegate.m
//  PageViewControllers
//
//  Created by Francisco Sevillano on 07/06/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIViewController *viewController1 = [[UIViewController alloc] init];
    viewController1.view.backgroundColor = [UIColor redColor];
    
    UIViewController *viewController2 = [[UIViewController alloc] init];
    viewController2.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *viewController3 = [[UIViewController alloc] init];
    viewController3.view.backgroundColor = [UIColor blueColor];
    
    UIPageViewController *pageViewController =
        [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    [pageViewController setViewControllers:@[viewController1] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [pageViewController setViewControllers:@[viewController1,viewController2,viewController3] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    self.window.rootViewController = pageViewController;
    
    return YES;
}

@end
