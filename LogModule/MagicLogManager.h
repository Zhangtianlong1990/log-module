//
//  MagicLogManager.h
//  LogModule
//
//  Created by 张天龙 on 2022/5/20.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack/CocoaLumberjack.h>
//开源依赖
#if DEBUG
static const DDLogLevel ddLogLevel = DDLogLevelVerbose;
#else
static const DDLogLevel ddLogLevel = DDLogLevelWarning;
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MagicLogManager : NSObject
@property(nonatomic, strong)DDFileLogger *fileLogger;

+ (MagicLogManager *)shareManager;
- (void)start;                              // 配置日志信息
- (NSArray *)getAllLogFilePath;             // 获取日志路径
- (NSArray *)getAllLogFileContent; 
@end

NS_ASSUME_NONNULL_END
