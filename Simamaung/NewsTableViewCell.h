//
//  NewsTableViewCell.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <THLabel.h>
@class News;
@interface NewsTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *categoryImage;
@property (strong, nonatomic) News *news;
@property (strong, nonatomic) IBOutlet UIImageView *newsImage;
@property (strong, nonatomic) IBOutlet UILabel *newsTitle;

-(void)setNews:(News *)news;
@end
