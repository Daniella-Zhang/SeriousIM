//
//  DYLoginMgr.m
//  0227_SeriousIM
//
//  Created by dingyuezhang on 2/27/16.
//  Copyright © 2016 dingyuezhang. All rights reserved.
//

#import "DYLoginMgr.h"

@interface DYLoginData()

@end
@implementation DYLoginData

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    if (self = [super init]) {
        _account = [aDecoder decodeObjectForKey:@"account"];
        _token = [aDecoder decodeObjectForKey:@"token"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder{
    
    if ([_account length]) {
        [encoder encodeObject:_account forKey:@"account"];
    }
    if ([_token length]) {
        [encoder encodeObject:_token forKey:@"token"];
    }
}



@end

@interface DYLoginMgr ()
@property (nonatomic,strong) NSString *filepath;
@end

@implementation DYLoginMgr

+ (instancetype)sharedManager{
    
    NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filepath = [doc stringByAppendingPathComponent:@"login.archive"];
    //NSLog(@"---%@---",filepath);
    
    static DYLoginMgr *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DYLoginMgr alloc] initWithPath:filepath];
    });
    
    return instance;
}

- (instancetype)initWithPath:(NSString *)filepath{
    
    if (self = [super init]) {
        _filepath = filepath;
        [self readData];
    }
    
    return self;
}

- (void)setCurrentLoginData:(DYLoginData *)currentLoginData{
    
    _currentLoginData = currentLoginData;
    [self saveData:currentLoginData];
}

- (void)readData{
    
    NSString *filepath = [self filepath];
    if ([[NSFileManager defaultManager] fileExistsAtPath:filepath]) {
        id rawdata = [NSKeyedUnarchiver unarchiveObjectWithFile:filepath];
        _currentLoginData = [rawdata isKindOfClass:[DYLoginData class]] ? rawdata : nil;
    }
}

- (void)saveData:(DYLoginData *)account{
    
    if (account) {
        [NSKeyedArchiver archiveRootObject:account toFile:self.filepath];
    }
}
@end
