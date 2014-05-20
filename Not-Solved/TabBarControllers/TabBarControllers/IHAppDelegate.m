//
//  IHAppDelegate.m
//  TabBarControllers
//
//  Created by Francisco Sevillano on 20/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"
#import "IHViewController.h"

@interface IHAppDelegate()<UITabBarControllerDelegate>

@end

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
//    Create a Tab Bar Controller with two navigation controllers inside and present it from the root view controller of the window.z
    
//    Add an image to the view controllers' tab bar items. Changes the window `tintColor` and see what happens to the icons

    return YES;
}

@end
