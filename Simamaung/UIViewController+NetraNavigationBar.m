//
//  UIViewController+NetraNavigationBar.m
//  Simamaung
//
//  Created by Arie Prasetyo on 3/19/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "UIViewController+NetraNavigationBar.h"
#import <SWRevealViewController.h>

@implementation UIViewController(NetraNavigationBar)
-(void)setNetraDefaultNavigationBar{
    [self setLeftAbraNavigationBar];
}
- (void)sidebarButtonTouched {
    [self.revealViewController revealToggle:nil];
    
    self.revealViewController.frontViewShadowOffset = CGSizeMake(0, 0);
    self.revealViewController.frontViewShadowOpacity = 0.0f;
    self.revealViewController.frontViewShadowRadius = 0.0f;
    
}
- (void)setLeftAbraNavigationBar {
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace
                                                                                   target:nil
                                                                                   action:nil];
    negativeSpacer.width = -10;
    
    UIButton *sidebarButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    CGRect sidebarButtonFrame = sidebarButton.frame;
    sidebarButtonFrame.size.width = 32;
    sidebarButtonFrame.size.height = 32;
    
    sidebarButton.frame = sidebarButtonFrame;
    
    [sidebarButton setImage:[UIImage imageNamed:@"icon-sidebar"]
                   forState:UIControlStateNormal];
    
    [sidebarButton addTarget:self
                      action:@selector(sidebarButtonTouched)
            forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *sidebarBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:sidebarButton];
    
    self.navigationItem.leftBarButtonItems = @[negativeSpacer, sidebarBarButtonItem];
}
@end
