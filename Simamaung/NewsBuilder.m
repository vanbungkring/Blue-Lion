//
//  NewsBuilder.m
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "NewsBuilder.h"
#import "News.h"
@implementation NewsBuilder
+ (NSArray *)newsFromArray:(NSArray *)array{
    NSMutableArray *blogListArray = [[NSMutableArray alloc] init];
    for (NSDictionary *guidesDictionary in array) {
        News *blogList = [[News alloc] init];
        
        for (NSString *key in guidesDictionary) {
            
            id currentValue = [guidesDictionary valueForKey:key];
            
            if (currentValue == [NSNull null]) {
                currentValue = nil;
            }
            
            if ([blogList respondsToSelector:NSSelectorFromString(key)]) {
                
                if([key isEqualToString:@"categories"]){
                    blogList.categories = [[[guidesDictionary valueForKey:key]objectAtIndex:0]objectForKey:@"title"];
                    continue;
                    
                }
                
                [blogList setValue:currentValue forKey:key];
            }
        }
        
        [blogListArray addObject:blogList];
        
    }
    
    return blogListArray;
}
@end
