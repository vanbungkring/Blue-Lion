//
//  APIManagerNewsDelegate.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//
#import "News.h"
@protocol APIManagerNewsDelegate <NSObject>

@optional
- (void)didReceiveNewsContent:(NSArray *)news;
- (void)fetchingBlogContentFailedWithError:(NSError *)error;

@end
