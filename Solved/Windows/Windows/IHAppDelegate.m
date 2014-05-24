//
//  IHAppDelegate.m
//  Windows
//
//  Created by Francisco Sevillano on 24/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"
#import "IHViewController.h"

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    IHViewController *viewController = [[IHViewController alloc] init];
    
//    [self.window addSubview:viewController.view];
    
//    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
