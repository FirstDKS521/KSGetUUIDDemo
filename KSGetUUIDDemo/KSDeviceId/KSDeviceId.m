//
//  KSDeviceId.m
//  NavProject
//
//  Created by aDu on 2018/4/11.
//  Copyright © 2018年 DuKaiShun. All rights reserved.
//

#import "KSDeviceId.h"
#import "KSKeyChinaHelper.h"

static NSString *uuidStr = @"sy_uuid";
@implementation KSDeviceId

/**
 先从keychain里面加载uuid 如果没有 就获取uuid并加载到keychain中
 */
+ (NSString *)getUUIDFromKeyChain {
    NSString *uuid = NULL;
    uuid = [KSKeyChinaHelper searchDateWithService:uuidStr];
    if (uuid) {
        return uuid;
    } else {
        uuid = [self getDeviceId];
        if ([KSKeyChinaHelper saveDate:uuid withService:uuidStr]) {
            return uuid;
        } else {
            return NULL;
        }
    }
}

+ (NSString *)getDeviceId {
    return [NSUUID UUID].UUIDString;
}

@end
