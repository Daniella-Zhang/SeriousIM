//
//  DYAPPCofig.h
//  0227_SeriousIM
//
//  Created by dingyuezhang on 2/27/16.
//  Copyright © 2016 dingyuezhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYNIMCofig : NSObject

+ (instancetype)sharedCofig;

- (NSString *)appKey;
- (NSString *)apiURL;

@end
