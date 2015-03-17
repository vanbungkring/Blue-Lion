//
//  APIManager.m
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager
- (id)init {
    self = [super init];
    
    if (self) {
        self.requestManager = [AFHTTPRequestOperationManager manager];
        
        ///handling ssl
        
        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        securityPolicy.allowInvalidCertificates = YES;
        
        self.requestManager.securityPolicy = securityPolicy;
        
    }
    return self;
}

@end
