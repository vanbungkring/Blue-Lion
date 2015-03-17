//
//  ModelManager.h
//  Simamaung
//
//  Created by Arie Prasetyo on 3/17/15.
//  Copyright (c) 2015 netra. All rights reserved.
//

#import "RLMRealm.h"

@interface ModelManager : RLMRealm
+ (ModelManager *)sharedMORealmSingleton;
- (void)deleteRealm;
@property (nonatomic, strong) RLMRealm *realm;
@end
