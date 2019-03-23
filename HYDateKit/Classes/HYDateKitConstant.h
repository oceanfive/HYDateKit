//
//  HYDateKitConstant.h
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/22.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 1分钟有60秒 */
extern const NSInteger HYSecondsInMinute;
/** 1小时有60分钟 */
extern const NSInteger HYMinutesInHour;
/** 1天有24小时 */
extern const NSInteger HYHoursInDay;
/** 1周有7天 */
extern const NSInteger HYDaysInWeek;
/** 1个季度有3个月 */
extern const NSInteger HYMonthsInQuarter;
/** 1年有4个季度 */
extern const NSInteger HYQuartersInYear;
/** 1年有12个月 */
extern const NSInteger HYMonthsInYear;

/** 1小时有 60 * 60 秒 */
extern const NSInteger HYSecondsInHour;
/** 1天有 60 * 60 * 24 秒 */
extern const NSInteger HYSecondsInDay;
/** 1周有 60 * 60 * 24 * 7 秒 */
extern const NSInteger HYSecondsInWeek;

/** 1天有 60 * 24 分钟 */
extern const NSInteger HYMinutesInDay;
/** 1周有 60 * 24 * 7分钟 */
extern const NSInteger HYMinutesInWeek;

#pragma mark - 日期格式

/** 年 */
extern NSString *const HYDateFormatterForYear;
/** 月 - 数字 */
extern NSString *const HYDateFormatterForMonth;
/** 月 - 英文简写 */
extern NSString *const HYDateFormatterForMonthAbbreviations;
/** 月 - 英文全称 */
extern NSString *const HYDateFormatterForMonthFullName;
/** 日 */
extern NSString *const HYDateFormatterForDay;
/** 时 - 24小时制 */
extern NSString *const HYDateFormatterForHour24;
/** 时 - 12小时制 */
extern NSString *const HYDateFormatterForHour12;
/** 分 */
extern NSString *const HYDateFormatterForMinute;
/** 秒 */
extern NSString *const HYDateFormatterForSecond;
/** 星期 - 英文简写 */
extern NSString *const HYDateFormatterForWeekdayAbbreviations;
/** 星期 - 英文全称 */
extern NSString *const HYDateFormatterForWeekdayFullName;

