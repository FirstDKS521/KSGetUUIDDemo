//
//  KSKeyChinaHelper.h
//  NavProject
//
//  Created by aDu on 2018/4/11.
//  Copyright © 2018年 DuKaiShun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KSKeyChinaHelper : NSObject

/**
 查找UUID
 @param service 获取当前获取到的UUID
 @return 返回查询结果
 */
+ (id)searchDateWithService:(NSString *)service;

/**
 保存数据到keychain中
 */
+ (BOOL)saveDate:(id)date withService:(NSString *)service;

@end
