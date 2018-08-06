//
//  NSString+RegularExpression.m
//  millHeater
//
//  Created by Ennnnnn7 on 2018/5/28.
//  Copyright © 2018年 rh. All rights reserved.
//

#import "NSString+RegularExpression.h"

@implementation NSString (RegularExpression)


- (BOOL)lj_checkPassword {
    // 密码必须包含一个数字，一个小写字母，一个大写字母，不能有-#@+!£_之外的特殊字符
    NSString *pattern = @"^(?=.*[0-9].*)(?=.*[A-Z].*)(?=.*[a-z].*)[-#@+!£\\w]{8,30}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [predicate evaluateWithObject:self];
}


@end
