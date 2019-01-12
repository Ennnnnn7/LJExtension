//
//  NSString+TrendTime.h
//  fans
//
//  Created by Ennnnnn7 on 2019/1/11.
//  Copyright © 2019 Ablecloud. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TrendTime)

/**
 根据时间戳显示发送时间

 @param timeStamp 时间戳
 @return 1分钟内显示刚刚；1小时内显示几分钟前；一天内显示几小时前；不在同一年显示yyyy-MM-dd；其他显示显示MM-dd
 */
+ (NSString *)configTrendSendTimeWithTimestamp:(NSInteger)timeStamp;

@end

NS_ASSUME_NONNULL_END
