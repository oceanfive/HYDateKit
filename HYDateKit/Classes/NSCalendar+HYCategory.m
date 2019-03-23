//
//  NSCalendar+HYCategory.m
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/23.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import "NSCalendar+HYCategory.h"
#import "HYDateKitConstant.h"

@implementation NSCalendar (HYCategory)


- (NSInteger)hy_monthsInYearForDate:(NSDate *)date {
    return [self rangeOfUnit:NSCalendarUnitMonth inUnit:NSCalendarUnitYear forDate:date].length;
}

- (NSInteger)hy_daysInYearForDate:(NSDate *)date {
    return [self rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitYear forDate:date].length;
}

- (NSInteger)hy_hoursInYearForDate:(NSDate *)date {
    NSInteger days = [self hy_daysInYearForDate:date];
    return days * HYHoursInDay;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 24
}

- (NSInteger)hy_minutesInYearForDate:(NSDate *)date {
    NSInteger hours = [self hy_hoursInYearForDate:date];
    return hours * HYMinutesInHour;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 60
}

- (NSInteger)hy_secondsInYearForDate:(NSDate *)date {
    NSInteger minutes = [self hy_minutesInYearForDate:date];
    return minutes * HYSecondsInMinute;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 60
}


- (NSInteger)hy_daysInMonthForDate:(NSDate *)date {
    return [self rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:date].length;
}

- (NSInteger)hy_hoursInMonthForDate:(NSDate *)date {
    NSInteger days = [self hy_daysInMonthForDate:date];
    return days * HYHoursInDay;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 24
}

- (NSInteger)hy_minutesInMonthForDate:(NSDate *)date {
    NSInteger hours = [self hy_hoursInMonthForDate:date];
    return hours * HYMinutesInHour;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 60
}

- (NSInteger)hy_secondsInMonthForDate:(NSDate *)date {
    NSInteger minutes = [self hy_minutesInMonthForDate:date];
    return minutes * HYSecondsInMinute;
    // 注: 使用 rangeOfUnit 方法存在异常，返回 60
}

- (NSDate *)hy_firstDayDateInMonthForDate:(NSDate *)date {
    NSCalendarUnit units = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *components = [self components:units fromDate:date];
    components.day = 1;
    return [self dateFromComponents:components];
}

- (NSDate *)hy_lastDayDateInMonthForDate:(NSDate *)date {
    NSCalendarUnit units = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *components = [self components:units fromDate:date];
    components.day = [self hy_daysInMonthForDate:date];
    return [self dateFromComponents:components];
}

@end
