//
//  AppDelegate.m
//  ShareDemo
//
//  Created by bopuhanyu on 16/12/29.
//  Copyright © 2016年 LaiFeng. All rights reserved.
//  456

#import "AppDelegate.h"
#import <LFShareServiceKit/LFShareServiceKit.h>
#import <UMSocialCore/UMSocialCore.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [LFShareService openLog:YES];
//   // [[UMSocialManager defaultManager] setUmSocialAppkey:@"5704e7cf67e58e7e4b0021e1"];
//    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Sina appKey:@"264851692"/*设置QQ平台的appID*/  appSecret:@"3d47493fd9734ea8c138ef9f61cb77af" redirectURL:@"http://mobile.umeng.com/social"];

    [[LFShareService sharedService] setCurrentProvider:[LFShareProviderUM providerWithRegisteredItems:@[
                                                                 [LFShareUmengItem itemWithAppKey:@"wxdd9743fced943fb2" appSecret:nil redirectURL:@"http://mobile.umeng.com/social" platform:LFSharePlatformWeChat],
                                                                                                                  [LFShareUmengItem itemWithAppKey:@"100525909" appSecret:nil redirectURL:@"http://mobile.umeng.com/social" platform:LFSharePlatformQQ],
                                                                                                        [LFShareUmengItem itemWithAppKey:@"2548841269" appSecret:@"55796aa516c11950b9b4b6929c2539a2" redirectURL:@"http://www.laifeng.com/oauth2/callback.html" platform:LFSharePlatformWeibo],
                                        ]
                                                        ]];
    
    return YES;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > 100000
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
{
    BOOL result = [LFShareService handleOpenURL:url];
    if (!result) {
        // 其他如支付等SDK的回调
    }
    return result;
}

#endif

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    BOOL result = [LFShareService handleOpenURL:url];
    if (!result) {
        // 其他如支付等SDK的回调
    }
    return result;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    BOOL result = [LFShareService handleOpenURL:url];
    if (!result) {
        // 其他如支付等SDK的回调
    }
    return result;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
