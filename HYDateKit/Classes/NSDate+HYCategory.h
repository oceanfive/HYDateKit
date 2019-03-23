//
//  NSDate+HYCategory.h
//  日期和时间
//
//  Created by ocean on 16/5/24.
//  Copyright © 2016年 ocean. All rights reserved.
//
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (HYCategory)

#pragma mark - 判断
//-----------------------------------------------------
/**
 判断一个时间和当前时间是不是在同一分钟内
 2017-07-03 15:35:59 和 2017-07-03 15:36:20 ；返回NO；
 */
- (BOOL)hy_isSameMinute;

/**
 判断两个时间是不是在同一分钟内
 */
+ (BOOL)hy_isSameMinuteForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间和当前时间是不是在同一小时内
 */
- (BOOL)hy_isSameHour;

/**
 判断两个时间是不是在同一小时内
 */
+ (BOOL)hy_isSameHourForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间和当前时间是不是在同一天内
 */
- (BOOL)hy_isSameDay;
- (BOOL)hy_isToday;

/**
 判断两个时间是不是在同一天内
 */
+ (BOOL)hy_isSameDayForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间是不是昨天
 */
- (BOOL)hy_isYesterday;

/**
 判断时间anotherDate是不是date的昨天
 */
+ (BOOL)hy_isYesterdayForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间是不是明天
 */
- (BOOL)hy_isTomorrow;

/**
 判断时间anotherDate是不是date的明天
 */
+ (BOOL)hy_isTomorrowForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间是不是这一周
 */
- (BOOL)hy_isThisWeek;

/**
 判断时间anotherDate是不是在date这一周内，即两个日期是不是在同一周内
 */
+ (BOOL)hy_isThisWeekForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间是不是这一月
 */
- (BOOL)hy_isThisMonth;

/**
 判断时间anotherDate是不是在date这一月内，即两个日期是不是在同一月内
 */
+ (BOOL)hy_isThisMonthForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


//-----------------------------------------------------
/**
 判断一个时间是不是今年
 */
- (BOOL)hy_isThisYear;

/**
 判断时间anotherDate是不是在date这一年内，即两个日期是不是在同一年内
 */
+ (BOOL)hy_isThisYearForDate:(NSDate *)date andDate:(NSDate *)anotherDate;
//-----------------------------------------------------


#pragma mark - 闰年/闰月
/**
 判断某一年是不是闰年
 */
- (BOOL)hy_isLeapYear;

/**
 判断某一月是不是闰月
 */
- (BOOL)hy_isLeapMonth;


#pragma mark - 获取日期单元
/** 公元：1公元，0表示公元前 */
@property (nonatomic, readonly) NSInteger hy_era;
/** 年 */
@property (nonatomic, readonly) NSInteger hy_year;
/** 月 */
@property (nonatomic, readonly) NSInteger hy_month;
/** 日 */
@property (nonatomic, readonly) NSInteger hy_day;
/** 时 */
@property (nonatomic, readonly) NSInteger hy_hour;
/** 分 */
@property (nonatomic, readonly) NSInteger hy_minute;
/** 秒 */
@property (nonatomic, readonly) NSInteger hy_second;
/** 星期: 星期天为1、星期一为2... */
@property (nonatomic, readonly) NSInteger hy_weekday;
/** 真正的星期: 星期一为1... 星期日为7 */
@property (nonatomic, readonly) NSInteger hy_realWeekday;
/** 星期的字符串格式: 1->一、2->二...7->日 */
@property (nonatomic, readonly) NSString *hy_realWeekdayString;
/** 星期，以7天为单位，第几个星期 */
@property (nonatomic, readonly) NSInteger hy_weekdayOrdinal;
/** 月份内的周数，接着上个月排，排满7天才加1；可参照系统的日历 */
@property (nonatomic, readonly) NSInteger hy_weekOfMonth;
/** 年份内的周数，参照系统的日历 */
@property (nonatomic, readonly) NSInteger hy_weekOfYear;
/** 几刻钟 */
@property (nonatomic, readonly) NSInteger hy_quarter;


#pragma mark - 字符串和日期转化

/**
 *  日期转字符串
 *
 *  @param formatter 转化格式
 *
 *  @return 转化后得到的字符串
 */
- (NSString *)hy_stringWithDateFormatter:(NSString *)formatter;

//----------------------------------------------------------

/**
 *  字符串转日期
 *
 *  @param dateString 日期字符串
 *  @param formatter  转换格式
 *
 *  @return 转化后得到的日期
 */
+ (NSDate *)hy_dateWithString:(NSString *)dateString formatter:(NSString *)formatter;

//----------------------------------------------------------

/**
 转化long时间的为指定格式的时间字符串

 @param datetime long long 类型的时间，从1970开始 ，单位为毫秒ms
 @param formatter 时间格式
 @return 指定格式的时间字符串
 */
+ (NSString *)hy_dateStringWithDatetime:(long long)datetime formatter:(NSString *)formatter;

@end

NS_ASSUME_NONNULL_END
