//
//  News.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import <Realm.h>
#import <Foundation/Foundation.h>

@interface News : NSObject

@property (strong, nonatomic) NSString *slug;
@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSDictionary *author;
@property (strong, nonatomic) NSString *title_plain;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *thumbnail;
@property (strong, nonatomic) NSString *categories;
@property (assign, nonatomic) NSDictionary *thumbnail_images;

@end
