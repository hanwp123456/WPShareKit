//
//  LFShareConstant.h
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum NSUInteger{
    LFSharePlatformQQ, // qq好友
    LFSharePlatformQZone, // qq空间
    LFSharePlatformWeChat, // 微信好友
    LFSharePlatformWechatTimeLine, // 微信朋友圈
    LFSharePlatformWeibo, // 新浪微博
//    来疯app只支持以上几种，如果增加需要修改LFSharePlatformExchange(LFSharePlatform platform)
//    以下是为优酷分享加的 友盟分享暂不支持
    LFSharePlatformDingding, // 丁丁
    LFSharePlatformZhifubao, // 支付宝
    LFSharePlatformShenghuoquan, // 支付宝生活圈
}LFSharePlatform;
