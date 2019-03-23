//
//  NSCalendar+HYCategory.h
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/23.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSCalendar (HYCategory)

#pragma mark - range

#pragma mark - 年
/** date 所在的 "年" 有多少 "月" */
- (NSInteger)hy_monthsInYearForDate:(NSDate *)date;
/** date 所在的 "年" 有多少 "天" */
- (NSInteger)hy_daysInYearForDate:(NSDate *)date;
/** date 所在的 "年" 有多少 "小时" */
- (NSInteger)hy_hoursInYearForDate:(NSDate *)date;
/** date 所在的 "年" 有多少 "分钟" */
- (NSInteger)hy_minutesInYearForDate:(NSDate *)date;
/** date 所在的 "年" 有多少 "秒" */
- (NSInteger)hy_secondsInYearForDate:(NSDate *)date;


#pragma mark - 月
/** date 所在的 "月" 有多少 "天" */
- (NSInteger)hy_daysInMonthForDate:(NSDate *)date;
/** date 所在的 "月" 有多少 "小时" */
- (NSInteger)hy_hoursInMonthForDate:(NSDate *)date;
/** date 所在的 "月" 有多少 "分钟" */
- (NSInteger)hy_minutesInMonthForDate:(NSDate *)date;
/** date 所在的 "月" 有多少 "秒" */
- (NSInteger)hy_secondsInMonthForDate:(NSDate *)date;

/** date 所在的 "月" 的第一天 */
- (NSDate *)hy_firstDayDateInMonthForDate:(NSDate *)date;
/** date 所在的 "月" 的最后一天 */
- (NSDate *)hy_lastDayDateInMonthForDate:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
