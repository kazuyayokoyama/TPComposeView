//
//  AppDelegate.m
//  Demo
//
//  Created by Damir Tursunovic on 1/15/12.
//  Copyright (c) 2012 Tappable Software. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:[[[DemoViewController alloc] init] autorelease]];

    [_window setRootViewController:navController];
    [_window makeKeyAndVisible];
    return YES;
}


@end
