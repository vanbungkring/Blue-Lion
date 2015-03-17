//
//  APIManager+News.m
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "APIManager+News.h"
#import "APIManagerNewsDelegate.h"
#import "NewsBuilder.h"
#import "News.h"
@implementation APIManager(News)
- (void)fetchNews:(NSInteger)page{
    NSString *newsUrl = [NSString stringWithFormat:@"http://simamaung.com/api/?json=get_recent_posts&page=%d",page];
    [self.requestManager GET:newsUrl parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        [[GlobalPropertyHelper getInstance]setPageTotal:[[responseObject[@"meta"]objectForKey:@"total_pages"]integerValue] setTotalEntries:[[responseObject[@"meta"]objectForKey:@"total_entries"] integerValue]];
        [self.newsDelegate didReceiveNewsContent:[NewsBuilder newsFromArray:responseObject[@"posts"]]];
       
        
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"response-->%@",error);
        //[self.topListDetailDelegate fetchingTopListDetailsFailedWithError:error];
        [self.newsDelegate fetchingBlogContentFailedWithError:error];
    }];

    
    
}
- (void)fetchNews:(NSInteger)page categories:(NSInteger)categories{
    
}

@end
