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
    NSMutableArray *newslistArray = [[NSMutableArray alloc] init];
    News *newsList = [[News alloc] init];
    for (int i=0; i<array.count; i++) {
        
        for (NSString *key in array[i]) {
            
            id currentValue = [array[i] valueForKey:key];
            NSLog(@"loop ke %d keyy-->%@",i,key);
            if (currentValue == [NSNull null]) {
                currentValue = nil;
            }
            if ([newsList respondsToSelector:NSSelectorFromString(key)]) {
                [newsList setValue:currentValue forKey:key];
            }
            
            
        }
        [newslistArray addObject:newsList];
    }
    return newslistArray;
}
@end
