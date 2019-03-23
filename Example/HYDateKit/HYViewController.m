//
//  HYViewController.m
//  HYDateKit
//
//  Created by 849638313@qq.com on 03/22/2019.
//  Copyright (c) 2019 849638313@qq.com. All rights reserved.
//

#import "HYViewController.h"
#import <HYDateKit/HYDateKit.h>

@interface HYViewController ()

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    [self studyDate];
//    [self studyTimeZone];
//    [self studyDateFormatter];
    [self studyCalendar];
}

- (void)studyCalendar {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *date = [NSDate date];// [[NSDate date] dateByAddingTimeInterval:HYSecondsInDay * 30];
    NSCalendarUnit unit = NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekday | NSCalendarUnitWeekdayOrdinal | NSCalendarUnitQuarter | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitYearForWeekOfYear;
    NSDateComponents *components = [calendar components:unit fromDate:date];
    
    NSLog(@"era: %@", @(components.era));
    NSLog(@"year: %@", @(components.year));
    NSLog(@"month: %@", @(components.month));
    NSLog(@"day: %@", @(components.day));
    NSLog(@"hour: %@", @(components.hour));
    NSLog(@"minute: %@", @(components.minute));
    NSLog(@"second: %@", @(components.second));
    NSLog(@"nanosecond: %@", @(components.nanosecond));
    NSLog(@"weekday: %@", @(components.weekday));
    NSLog(@"weekdayOrdinal: %@", @(components.weekdayOrdinal));
    NSLog(@"quarter: %@", @(components.quarter));
    NSLog(@"weekOfMonth: %@", @(components.weekOfMonth));
    NSLog(@"weekOfYear: %@", @(components.weekOfYear));
    NSLog(@"yearForWeekOfYear: %@", @(components.yearForWeekOfYear));
    NSLog(@"leapMonth: %@", @(components.leapMonth));
    NSLog(@"date: %@", components.date);
    
    NSString *result = [date hy_stringWithDateFormatter:@"yyyy-MM-dd HH:mm:ss EEEE"];
    NSLog(@"%@", result);
    
//    NSLog(@"=====");
//
//    NSLog(@"firstWeekday: %@", @(calendar.firstWeekday));
    
    NSArray *units = @[@(NSCalendarUnitEra),
                       @(NSCalendarUnitYear),
                       @(NSCalendarUnitMonth),
                       @(NSCalendarUnitDay),
                       @(NSCalendarUnitHour),
                       @(NSCalendarUnitMinute),
                       @(NSCalendarUnitSecond),
                       @(NSCalendarUnitWeekday),
                       @(NSCalendarUnitWeekdayOrdinal),
                       @(NSCalendarUnitQuarter),
                       @(NSCalendarUnitWeekOfMonth),
                       @(NSCalendarUnitWeekOfYear),
                       @(NSCalendarUnitYearForWeekOfYear)];
    
//    for (NSNumber *unit in units) {
//        NSLog(@"====");
//        NSLog(@": %@", unit);
//        NSRange maximumRange = [calendar maximumRangeOfUnit:[unit integerValue]];
//        NSLog(@"maximumRange: %@", NSStringFromRange(maximumRange));
//        NSRange minimumRange = [calendar minimumRangeOfUnit:[unit integerValue]];
//        NSLog(@"minimumRange: %@", NSStringFromRange(minimumRange));
//    }
    
    NSLog(@"=======");
    
    NSRange range = [calendar rangeOfUnit:NSCalendarUnitHour inUnit:NSCalendarUnitMonth forDate:date];
    NSLog(@"%@", NSStringFromRange(range));
    
    
//    NSInteger months = [calendar hy_monthsInYearForDate:date];
//    NSLog(@"months: %@", @(months));
//
//    NSInteger days = [calendar hy_daysInYearForDate:date];
//    NSLog(@"days: %@", @(days));
//
//    NSInteger hours = [calendar hy_hoursInYearForDate:date];
//    NSLog(@"hours: %@", @(hours));
//
//    NSInteger minutes = [calendar hy_minutesInYearForDate:date];
//    NSLog(@"minutes: %@", @(minutes));
//
//    NSInteger seconds = [calendar hy_secondsInYearForDate:date];
//    NSLog(@"seconds: %@", @(seconds));
    


//    NSInteger days = [calendar hy_daysInMonthForDate:date];
//    NSLog(@"days: %@", @(days));
//
//    NSInteger hours = [calendar hy_hoursInMonthForDate:date];
//    NSLog(@"hours: %@", @(hours));
//
//    NSInteger minutes = [calendar hy_minutesInMonthForDate:date];
//    NSLog(@"minutes: %@", @(minutes));
//
//    NSInteger seconds = [calendar hy_secondsInMonthForDate:date];
//    NSLog(@"seconds: %@", @(seconds));
    
    NSDate *tmp = [calendar startOfDayForDate:date];
    NSLog(@"%@", tmp);
}


- (void)studyDateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *string = [NSDateFormatter hy_dateFormatterWithSuffixForYear:@"年" suffixForMonth:@"月" suffixForDay:@"日" suffixForHour:@"时" suffixForMinute:@"分" suffixForSecond:@"秒"];
    NSLog(@"%@", string);
    dateFormatter.dateFormat = string;
    NSString *result = [dateFormatter stringFromDate:[NSDate date]];
    NSLog(@"%@", result);
    
}

- (void)studyTimeZone {
//    NSTimeZone *localTimeZone = [NSTimeZone localTimeZone];
//    NSLog(@"localTimeZone: %@", localTimeZone);
//
//    NSTimeZone *systemTimeZone = [NSTimeZone systemTimeZone];
//    NSLog(@"systemTimeZone: %@", systemTimeZone);
//
//    NSTimeZone *defaultTimeZone = [NSTimeZone defaultTimeZone];
//    NSLog(@"defaultTimeZone: %@", defaultTimeZone);
    
//    // IDs
//    NSArray *knownTimeZoneNames = [NSTimeZone knownTimeZoneNames];
//    NSLog(@"knownTimeZoneNames: %@", knownTimeZoneNames);
//
//    NSTimeZone *tz = [NSTimeZone timeZoneWithName:@"Asia/Novosibirsk"];
//    NSLog(@"%@", tz);
    
//    NSDictionary *abbreviationDictionary = [NSTimeZone abbreviationDictionary];
//    NSLog(@"abbreviationDictionary: %@", abbreviationDictionary);
//
//    NSTimeZone *tz = [NSTimeZone timeZoneWithAbbreviation:@"BST"];
//    NSLog(@"%@", tz);
    
//    NSTimeZone *tz = [NSTimeZone timeZoneForSecondsFromGMT:HYSecondsInHour * 8];
//    NSLog(@"%@", tz);
    
//    NSTimeZone *timeZone = [NSTimeZone localTimeZone];
//    NSLog(@"name: %@", timeZone.name);
////    NSLog(@"data: %@", timeZone.data);
//    NSLog(@"abbreviation: %@", timeZone.abbreviation);
//    NSLog(@"secondsFromGMT: %ld", timeZone.secondsFromGMT);
}

- (void)studyDate {
    
    //    NSDate *date = [NSDate date];
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:HYSecondsInDay * 9];
    NSLog(@"%@", date);
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    NSString *result = [formatter stringFromDate:date];
    NSLog(@"%@", result);
    
    NSLog(@"========");
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    formatter2.dateFormat = @"yyyy-MM-dd hh:mm:ss z-zz-zzz-zzzz Z ZZ ZZZ ZZZZ";
    
    NSString *result2 = [formatter2 stringFromDate:date];
    NSLog(@"%@", result2);
    
    /**
     yyyy-MM-dd HH:mm:ss    2019-03-22 16:09:55
     yy-MM-dd HH:mm:ss      19-03-22 16:09:55
     */
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
