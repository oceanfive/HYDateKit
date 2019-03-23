//
//  NSDateFormatter+HYCategory.h
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/23.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (HYCategory)

/**
 创建通用的日期格式
 
 @param suffixForYear 年后缀
 @param suffixForMonth 月后缀
 @param suffixForDay 日后缀
 @param suffixForHour 时后缀
 @param suffixForMinute 分后缀
 @param suffixForSecond 秒后缀
 @return 日期格式
 */
+ (NSString *)hy_dateFormatterWithSuffixForYear:(NSString *)suffixForYear
                                 suffixForMonth:(NSString *)suffixForMonth
                                   suffixForDay:(NSString *)suffixForDay
                                  suffixForHour:(NSString *)suffixForHour
                                suffixForMinute:(NSString *)suffixForMinute
                                suffixForSecond:(NSString *)suffixForSecond;

@end

NS_ASSUME_NONNULL_END
