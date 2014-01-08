//
//  MainViewController.m
//  Instagram
//
//  Created by Indragie Karunaratne on 1/8/2014.
//  Copyright (c) 2014 Dalonzo. All rights reserved.
//

#import "MainViewController.h"

static NSString * const BigLaunchImageName = @"instagram-plus-launch";
static NSString * const SmallLaunchImageName = @"instagram-plus-launch-3";

static BOOL INDDeviceHas4InchDisplay() {
	return [[UIScreen mainScreen] bounds].size.height == 568;
}

@implementation MainViewController

- (id)init
{
	return [super initWithNibName:NSStringFromClass(self.class) bundle:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.imageView.image = [UIImage imageNamed:INDDeviceHas4InchDisplay() ? BigLaunchImageName : SmallLaunchImageName];
}

@end
