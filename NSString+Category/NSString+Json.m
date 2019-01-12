//
//  NSString+Json.m
//  ACAssess
//
//  Created by Ennnnnn7 on 2018/8/2.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "NSString+Json.h"

@implementation NSString (Json)

+ (id)transformJsonString:(NSString *)jsonString {
  if (!jsonString) {
    return nil;
  }
  NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
  NSError *error;
  id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
  if (error) {
    return nil;
  }
  return jsonObject;
}

@end
