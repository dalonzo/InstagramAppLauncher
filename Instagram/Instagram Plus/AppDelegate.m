//
//  AppDelegate.m
//  Instagram Plus
//
//  Created by Indragie Karunaratne on 1/8/14.
//  Copyright (c) 2014 Dalonzo. All rights reserved.
//  Instagram Plus uses the Instagram branding and is not endorsed by or affiliated with either Instagram or Facebook.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	MainViewController *vc = [[MainViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [self performSelector:@selector(openURL) withObject:nil afterDelay:0];
}

- (void)openURL
{
	NSURL *URL = [NSURL URLWithString:@"Instagram://"];
	UIApplication *app = [UIApplication sharedApplication];
	if ([app canOpenURL:URL]) {
		[app openURL:URL];
	}
}

@end
