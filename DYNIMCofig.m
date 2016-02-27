//
//  DYAPPCofig.m
//  0227_SeriousIM
//
//  Created by dingyuezhang on 2/27/16.
//  Copyright © 2016 dingyuezhang. All rights reserved.
//

#import "DYNIMCofig.h"

@interface DYNIMCofig()

@property (nonatomic,copy) NSString *appKey;
@property (nonatomic,copy) NSString *apiURL;
//cerName 推送证书!!!

@end

@implementation DYNIMCofig

+ (instancetype)sharedCofig{
    
    static DYNIMCofig *instance = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        instance = [[DYNIMCofig alloc] init];
    });
    
    return instance;
}

- (instancetype)init{
    
    if (self = [super init]) {
        _appKey = @"9f741a671cdc8e3e051058ed9398604b";
        _apiURL = @"04464b739e6d";
    }
    
    return self;
}

- (NSString *)appKey{
    
    return _appKey;
}

- (NSString *)apiURL{
    
    return _apiURL;
}
@end
