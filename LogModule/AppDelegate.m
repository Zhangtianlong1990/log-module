//
//  AppDelegate.m
//  LogModule
//
//  Created by 张天龙 on 2022/5/20.
//

#import "AppDelegate.h"
#import "MagicLogManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[MagicLogManager shareManager] start];

    DDLogVerbose(@"Verbose");    // 详细日志
    DDLogDebug(@"Debug");        // 调试日志
    DDLogInfo(@"Info");          // 信息日志
    DDLogWarn(@"Warn");          // 警告日志
    DDLogError(@"Error");        // 错误日志
    NSLog(@"日志路径%@", [[MagicLogManager shareManager] getAllLogFilePath]);
    NSLog(@"日志内容%@", [[MagicLogManager shareManager] getAllLogFileContent]);

    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
