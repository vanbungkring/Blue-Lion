//
//  NewsTableViewCell.m
//  ;
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "NewsTableViewCell.h"
#import "News.h"
#import "Constans.h"
#import <THLabel.h>
#import <UIImageView+WebCache.h>
#import <UIImageView+AFNetworking.h>
@implementation NewsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)setNews:(News *)news{
    
    _news = news;
    
    _newsTitle.text = _news.title;
    _newsTitle.shadowColor = kShadowColor1;
    _newsTitle.shadowOffset = kShadowOffset;
    _newsTitle.layer.shadowRadius =10;
    _newsTitle.numberOfLines =2;
    [_newsTitle sizeToFit];
    
    _categoryImage.text = _news.categories;
    _categoryImage.shadowColor = kShadowColor1;
    _categoryImage.shadowOffset = CGSizeMake(0.0, UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 2.0 : 1.0)
;
    
    _categoryImage.layer.shadowRadius =10;
    
    [_news.thumbnail stringByReplacingOccurrencesOfString:@"-150x150" withString:@""];
    
    _newsImage.translatesAutoresizingMaskIntoConstraints = YES;
    
    [_newsImage sd_setImageWithURL:[NSURL URLWithString: [_news.thumbnail stringByReplacingOccurrencesOfString:@"-150x150" withString:@""]]
                  placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    [_newsImage setClipsToBounds:YES];
    _newsImage.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
