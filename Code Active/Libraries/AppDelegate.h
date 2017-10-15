//
//  AppDelegate.h
//  NearBy
//
//  Created by sv1013 on 27/01/15.
//  Copyright (c) 2015 Commscope. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
@class TableViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)TableViewController *objTable;
@property (strong, nonatomic)UINavigationController *myNavigation;

@end
