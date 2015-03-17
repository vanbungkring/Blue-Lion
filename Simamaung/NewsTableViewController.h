//
//  NewsTableViewController.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APIManagerNewsDelegate.h"
@class APIManager;
@interface NewsTableViewController : UITableViewController<APIManagerNewsDelegate>
@property (strong,nonatomic)APIManager *apiManager;
@end
