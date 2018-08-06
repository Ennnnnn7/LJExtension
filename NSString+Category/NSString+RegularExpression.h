//
//  NSString+RegularExpression.h
//  millHeater
//
//  Created by Ennnnnn7 on 2018/5/28.
//  Copyright © 2018年 rh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RegularExpression)


/**
 检测密码格式（包含一个大写、一个小写、一个数字，最少8位）

 @return 是否匹配
 */
- (BOOL)lj_checkPassword;


@end
