//
//  KSDeviceId.h
//  NavProject
//
//  Created by aDu on 2018/4/11.
//  Copyright © 2018年 DuKaiShun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSDeviceId : NSObject

/**
 获取设备的UUID
 @return 返回设备的UUID
 */
+ (NSString *)getUUIDFromKeyChain;

@end
