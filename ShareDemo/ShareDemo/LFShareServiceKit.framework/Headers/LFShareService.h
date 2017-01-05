//
//  LFShareService.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LFShareProvider.h"
#import "LFShareProtocol.h"
@interface LFShareService : NSObject <LFShareProtocol>
+(instancetype)sharedService;
-(void)setCurrentProvider:(LFShareProvider *)provider;

@property (nonatomic,copy,readonly) NSString *version;
+(void)openLog:(BOOL)isOpen;
+(BOOL)handleOpenURL:(NSURL *)url;
@end
