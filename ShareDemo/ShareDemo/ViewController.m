//
//  ViewController.m
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//

#import "ViewController.h"
#import <LFShareServiceKit/LFShareServiceKit.h>
#import <UMSocialCore/UMSocialCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)qq {
    [self shareto:LFSharePlatformQQ];
}
- (IBAction)qzone {
    [self shareto:LFSharePlatformQZone];
}
- (IBAction)wechat {
    [self shareto:LFSharePlatformWeChat];
}
- (IBAction)wesession {
    [self shareto:LFSharePlatformWechatTimeLine];
}
- (IBAction)weibo {
    [self shareto:LFSharePlatformWeibo];
}

-(void)shareto:(LFSharePlatform)platform
{
    
//    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
//    UMShareWebpageObject *webPageObject = [UMShareWebpageObject shareObjectWithTitle:@"123" descr:@"456" thumImage:@"https://www.baidu.com/img/baidu_jgylogo3.gif"];
//    webPageObject.webpageUrl = @"http://mp.weixin.qq.com/s/G6toqzbF5dEKemSg6H7DRg";
//    messageObject.shareObject = webPageObject;
    [[LFShareService sharedService] shareWithTitle:@"123" text:@"456" image:@"https://www.baidu.com/img/baidu_jgylogo3.gif" url:@"http://mp.weixin.qq.com/s/G6toqzbF5dEKemSg6H7DRg" plaform:platform success:^{
        
    } fail:^(NSString *errMsg) {
        
    }];
//    
//    [[UMSocialManager defaultManager] shareToPlatform:platform messageObject:messageObject currentViewController:nil completion:^(id result, NSError *error) {
//        if(error){
//            NSString *errMsg = error.userInfo[@"message"];
////            failureCopy(errMsg);
////            failureCopy = nil;
////            successCopy = nil;
//        }else{
////            successCopy();
////            successCopy = nil;
////            failureCopy = nil;
//        }
//    }];

}


@end
