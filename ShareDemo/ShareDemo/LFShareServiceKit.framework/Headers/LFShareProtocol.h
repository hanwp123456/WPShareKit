
//
//  LFShareProtocol.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//


#import "LFShareConstant.h"


@protocol LFShareProtocol <NSObject>

-(void)shareWithTitle:(NSString *)title text:(NSString *)text image:(NSString *)imageUrl url:(NSString *)urlStr plaform:(LFSharePlatform)platform success:(void(^)())success fail:(void(^)(NSString *errMsg))failure;

-(void)openLog:(BOOL)isOpen;

@end
