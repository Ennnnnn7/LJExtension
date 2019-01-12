//
//  NSString+TrendTime.m
//  fans
//
//  Created by Ennnnnn7 on 2019/1/11.
//  Copyright © 2019 Ablecloud. All rights reserved.
//

#import "NSString+TrendTime.h"

@implementation NSString (TrendTime)


+ (NSString *)configTrendSendTimeWithTimestamp:(NSInteger)timeStamp {
    NSDate *trendSendDate = [NSDate dateWithTimeIntervalSince1970:timeStamp / 1000];
    NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *intervalComponents = [calendar components:unit fromDate:trendSendDate toDate:[NSDate date] options:0];
    NSDateComponents *currentComponents = [calendar components:unit fromDate:[NSDate date]];
    NSDateComponents *sendComponents = [calendar components:unit fromDate:trendSendDate];
    
    if ([calendar isDateInToday:trendSendDate]) {
        if (intervalComponents.hour > 1) {
            return [NSString stringWithFormat:@"%zi小时前", intervalComponents.hour];
        } else if (intervalComponents.minute > 1) {
            return [NSString stringWithFormat:@"%zi分钟前", intervalComponents.minute];
        } else {
            return @"刚刚";
        }
    } else if ([calendar isDateInYesterday:trendSendDate]) {
        return @"昨天";
    } else if (currentComponents.year != sendComponents.year) {
        return [[NSDateFormatter yearMonthDayFormatter] stringFromDate:trendSendDate];
    } else {
        return [[NSDateFormatter monthDayFormatter] stringFromDate:trendSendDate];
    }
}

@end
