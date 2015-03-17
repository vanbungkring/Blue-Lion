//
//  NewsTableViewCell.m
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "NewsTableViewCell.h"
#import "News.h"
#import <UIImageView+AFNetworking.h>
@implementation NewsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)setNews:(News *)news{
    _news = news;
    NSLog(@"nwqs-->%@",_news.title);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
