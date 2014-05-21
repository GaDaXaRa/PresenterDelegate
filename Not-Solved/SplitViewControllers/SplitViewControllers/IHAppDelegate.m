//
//  IHAppDelegate.m
//  SplitViewControllers
//
//  Created by Francisco Sevillano on 21/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHAppDelegate.h"

@implementation IHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    Create a split view controller that shows two different view controllers. The view controller in the big view will need to have either a navigation bar or a toolbar to show a bar button that will be used to show the left view controller when the device is in portrait mode.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

//    Avoid hiding the second view controller when the device rotates.

@end
