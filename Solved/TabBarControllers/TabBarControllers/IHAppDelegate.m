//
//  IHAppDelegate.m
//  TabBarControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
//    Create a Tab Bar Controller with two navigation controllers inside and present it from the root view controller of the window.z
    
    UIViewController *viewController1 = [[UIViewController alloc] init];
    viewController1.tabBarItem.title = @"Beers";

    UIViewController *viewController2 = [[UIViewController alloc] init];
    viewController2.tabBarItem.title = @"User";
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[viewController1,viewController2]];
    
    self.window.rootViewController = tabBarController;
    
//    Add an image to the view controllers' tab bar items. Changes the window `tintColor` and see what happens to the icons
    viewController1.tabBarItem.image = [UIImage imageNamed:@"beer"];
    viewController2.tabBarItem.image = [UIImage imageNamed:@"user"];
    self.window.tintColor = [UIColor yellowColor];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
