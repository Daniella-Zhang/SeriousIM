//
//  DYLoginMgr.h
//  0227_SeriousIM
//
//  Created by dingyuezhang on 2/27/16.
//  Copyright © 2016 dingyuezhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYLoginData : NSObject<NSCoding>

@property (nonatomic,copy) NSString *account;
@property (nonatomic,copy) NSString *token;

@end

@interface DYLoginMgr : NSObject

@property (nonatomic,strong) DYLoginData *currentLoginData;
+ (instancetype)sharedManager;

@end
