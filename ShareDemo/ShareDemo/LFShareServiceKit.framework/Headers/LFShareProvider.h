//
//  LFShareProvider.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LFShareProtocol.h"
@interface LFShareProvider : NSObject <LFShareProtocol>
-(BOOL)handleOpenURL:(NSURL *)url;
@end
