//
//  NSDateFormatter+Format.m
//  fans
//
//  Created by Ennnnnn7 on 2018/12/21.
//  Copyright © 2018 Ablecloud. All rights reserved.
//

#import "NSDateFormatter+Format.h"

@implementation NSDateFormatter (Format)


+ (instancetype)sharedDateFormatter {
    static NSDateFormatter *dateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!dateFormatter) {
            dateFormatter = [[NSDateFormatter alloc] init];
            dateFormatter.locale = [NSLocale systemLocale];
        }
    });
    return dateFormatter;
}

+ (NSDateFormatter *)chineseYearMonthDayFormatter {
    [NSDateFormatter sharedDateFormatter].dateFormat = @"yyyy年MM月dd日";
    return [NSDateFormatter sharedDateFormatter];
}

+ (NSDateFormatter *)yearMonthDayFormatter {
    [NSDateFormatter sharedDateFormatter].dateFormat = @"yyyy-MM-dd";
    return [NSDateFormatter sharedDateFormatter];
}


+ (NSDateFormatter *)monthDayFormatter {
    [NSDateFormatter sharedDateFormatter].dateFormat = @"MM-dd";
    return [NSDateFormatter sharedDateFormatter];
}






@end
