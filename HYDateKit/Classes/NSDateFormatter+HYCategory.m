//
//  NSDateFormatter+HYCategory.m
//  HYDateKit_Example
//
//  Created by ocean on 2019/3/23.
//  Copyright © 2019 849638313@qq.com. All rights reserved.
//

#import "NSDateFormatter+HYCategory.h"
#import "HYDateKitConstant.h"

@implementation NSDateFormatter (HYCategory)

+ (NSString *)hy_dateFormatterWithSuffixForYear:(NSString *)suffixForYear
                                 suffixForMonth:(NSString *)suffixForMonth
                                   suffixForDay:(NSString *)suffixForDay
                                  suffixForHour:(NSString *)suffixForHour
                                suffixForMinute:(NSString *)suffixForMinute
                                suffixForSecond:(NSString *)suffixForSecond {
    NSMutableString *formatter = [NSMutableString string];
    
    [formatter appendString:HYDateFormatterForYear];
    if (suffixForYear) {
        [formatter appendString:suffixForYear];
    }
    
    [formatter appendString:HYDateFormatterForMonth];
    if (suffixForMonth) {
        [formatter appendString:suffixForMonth];
    }
    
    [formatter appendString:HYDateFormatterForDay];
    if (suffixForDay) {
        [formatter appendString:suffixForDay];
    }
    
    [formatter appendString:HYDateFormatterForHour24];
    if (suffixForHour) {
        [formatter appendString:suffixForHour];
    }
    
    [formatter appendString:HYDateFormatterForMinute];
    if (suffixForMinute) {
        [formatter appendString:suffixForMinute];
    }
    
    [formatter appendString:HYDateFormatterForSecond];
    if (suffixForSecond) {
        [formatter appendString:suffixForSecond];
    }
    
    return [formatter copy];
}

@end
