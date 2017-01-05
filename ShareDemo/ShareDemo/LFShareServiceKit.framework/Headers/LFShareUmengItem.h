//
//  LFShareUmengItem.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LFShareConstant.h"
@interface LFShareUmengItem : NSObject
@property (nonatomic, copy)NSString *appKey;
@property (nonatomic, copy)NSString *appSecret;
@property (nonatomic, copy)NSString *redirectURL;
@property (nonatomic, assign)LFSharePlatform platform;

+(instancetype)itemWithAppKey:(NSString *)appKey
                    appSecret:(NSString *)appSecret
                  redirectURL:(NSString *)redirectURL
                     platform:(LFSharePlatform)platform;
@end
