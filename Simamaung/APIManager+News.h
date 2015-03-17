//
//  APIManager+News.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "APIManager.h"
#import "APIManagerNewsDelegate.h"
@interface APIManager(News)
- (void)fetchNews:(NSInteger)page;
- (void)fetchNews:(NSInteger)page categories:(NSInteger)categories;
@end
