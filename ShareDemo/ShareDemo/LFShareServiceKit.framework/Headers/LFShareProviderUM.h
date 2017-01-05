//
//  LFShareProviderUM.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import "LFShareProvider.h"
#import "LFShareUmengItem.h"
@interface LFShareProviderUM : LFShareProvider
@property (nonatomic,strong,readonly) NSArray<LFShareUmengItem *> *registeredItems;
+(instancetype)providerWithRegisteredItems:(NSArray<LFShareUmengItem *>*)registeredItems;
@end
