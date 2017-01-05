//
//  LFShareProviderYouku.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import "LFShareProvider.h"

@interface LFShareProviderYouku : LFShareProvider
@property (nonatomic, weak) id<LFShareProtocol> delegate;
+(instancetype)providerWithYouKuDelegate:(id<LFShareProtocol>)delegate;
@end
