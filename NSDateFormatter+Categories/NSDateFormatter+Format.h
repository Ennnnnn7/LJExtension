//
//  NSDateFormatter+Format.h
//  fans
//
//  Created by Ennnnnn7 on 2018/12/21.
//  Copyright © 2018 Ablecloud. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (Format)


/**
 yyyy年MM月dd日时间格式

 @return dateFormatter实例
 */
+ (NSDateFormatter *)chineseYearMonthDayFormatter;

/**
 yyyy-MM-dd时间格式
 
 @return dateFormatter实例
 */
+ (NSDateFormatter *)yearMonthDayFormatter;

/**
 MM-dd时间格式

 @return dateFormatter实例
 */
+ (NSDateFormatter *)monthDayFormatter;

@end

NS_ASSUME_NONNULL_END
