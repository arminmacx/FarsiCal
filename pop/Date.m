//
//  Date.m
//  pop
//
//  Created by Armin on 6/5/15.
//  Copyright (c) 2015 Armin. All rights reserved.
//

#import "Date.h"
#import <Cocoa/Cocoa.h>
@implementation Date



-(NSString *)yearDate {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"yyyy"];
    NSString *year = [dateFormatter stringFromDate:[NSDate date]];
    
    return year;
    
}


-(NSString *)nameOfMonth {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"MMMM"];
    NSString *month = [dateFormatter stringFromDate:[NSDate date]];
    
    return month;
    
}


- (int)getToday {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"dd"];
    int day = [[dateFormatter stringFromDate:[NSDate date]] intValue];
   
    return day;
    
}

-(NSString *)nameOfDay {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"EE"];
    NSString *name = [dateFormatter stringFromDate:[NSDate date]];
    
    return name;
    
}

- (int)getHour {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"HH"];
    int hour = [[dateFormatter stringFromDate:[NSDate date]] intValue];
   
    return hour;
    
}

- (int)getMinute {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    
    [dateFormatter setDateFormat:@"mm"];
    int minute = [[dateFormatter stringFromDate:[NSDate date]] intValue];
    
    return minute;
    
}

@end
