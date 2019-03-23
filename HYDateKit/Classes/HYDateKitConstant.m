//
//  HYDateKitConstant.m
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/22.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import "HYDateKitConstant.h"

/**
 秒: Second
 分: Minute
 时: Hour
 天: Day
 周: Week
 月: Month
 季度: Quarter
 年: Year
 */

/** 1分钟有60秒 */
const NSInteger HYSecondsInMinute = 60;
/** 1小时有60分钟 */
const NSInteger HYMinutesInHour = 60;
/** 1天有24小时 */
const NSInteger HYHoursInDay = 24;
/** 1周有7天 */
const NSInteger HYDaysInWeek = 7;
/** 1个季度有3个月 */
const NSInteger HYMonthsInQuarter = 3;
/** 1年有4个季度 */
const NSInteger HYQuartersInYear = 4;
/** 1年有12个月 */
const NSInteger HYMonthsInYear = 12;

/** 1小时有 60 * 60 秒 */
const NSInteger HYSecondsInHour = HYMinutesInHour * HYSecondsInMinute;
/** 1天有 60 * 60 * 24 秒 */
const NSInteger HYSecondsInDay = HYSecondsInHour * HYHoursInDay;
/** 1周有 60 * 60 * 24 * 7 秒 */
const NSInteger HYSecondsInWeek = HYSecondsInDay * HYDaysInWeek;

/** 1天有 60 * 24 分钟 */
const NSInteger HYMinutesInDay = HYMinutesInHour * HYHoursInDay;
/** 1周有 60 * 24 * 7分钟 */
const NSInteger HYMinutesInWeek = HYMinutesInDay * HYDaysInWeek;


#pragma mark - 日期格式

/** 年 */
NSString *const HYDateFormatterForYear = @"yyyy";
/** 月 - 数字 */
NSString *const HYDateFormatterForMonth = @"MM";
/** 月 - 英文简写 */
NSString *const HYDateFormatterForMonthAbbreviations = @"MMM";
/** 月 - 英文全称 */
NSString *const HYDateFormatterForMonthFullName = @"MMMM";
/** 日 */
NSString *const HYDateFormatterForDay = @"dd";
/** 时 - 24小时制 */
NSString *const HYDateFormatterForHour24 = @"HH";
/** 时 - 12小时制 */
NSString *const HYDateFormatterForHour12 = @"hh";
/** 分 */
NSString *const HYDateFormatterForMinute = @"mm";
/** 秒 */
NSString *const HYDateFormatterForSecond = @"ss";
/** 星期 - 英文简写 */
NSString *const HYDateFormatterForWeekdayAbbreviations = @"E";
/** 星期 - 英文全称 */
NSString *const HYDateFormatterForWeekdayFullName = @"EEEE";
