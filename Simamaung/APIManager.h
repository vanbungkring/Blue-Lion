//
//  APIManager.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

@protocol APIManagerNewsDelegate;


@interface APIManager : NSObject
@property (weak, nonatomic) id<APIManagerNewsDelegate> newsDelegate;
@property (strong, nonatomic) AFHTTPRequestOperationManager *requestManager;
@end
