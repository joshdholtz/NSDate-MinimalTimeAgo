//
//  NSDate+MinimalTimeAgo.m
//  NSDateMinimalTimeAgo
//
//  Created by Josh Holtz on 1/28/14.
//  Copyright (c) 2014 Josh Holtz. All rights reserved.
//

#import "NSDate+MinimalTimeAgo.h"

@implementation NSDate (MinimalTimeAgo)

static int const MINUTE = 60;
static int const HOUR = (MINUTE * 60);
static int const DAY = (HOUR * 24);
static int const WEEK = (DAY * 7);
static int const MONTH = (DAY * 31);
static int const YEAR = (DAY * 365);

- (NSString*)timeAgo {
    
    NSDate *now = [NSDate date];
    NSInteger secondsSinceNow = (NSInteger)[now timeIntervalSinceDate:self];
    
    NSInteger prefix = 0;
    NSString *suffix = nil;
    
    // Seconds
    if (secondsSinceNow < MINUTE) {
        prefix = secondsSinceNow;
        suffix = @"s";
    }
    // Minute
    else if (secondsSinceNow < HOUR) {
        prefix = secondsSinceNow / MINUTE;
        suffix = @"m";
    }
    // Hour
    else if (secondsSinceNow < DAY) {
        prefix = secondsSinceNow / HOUR;
        suffix = @"h";
    }
    // Day
    else if (secondsSinceNow < WEEK) {
        prefix = secondsSinceNow / DAY;
        suffix = @"d";
    }
    // Week
    else if (secondsSinceNow < MONTH) {
        prefix = secondsSinceNow / WEEK;
        suffix = @"w";
    }
    // Month
    else if (secondsSinceNow < YEAR) {
        prefix = secondsSinceNow / MONTH;
        suffix = @"mo";
    }
    // Year
    else {
        prefix = secondsSinceNow / YEAR;
        suffix = @"y";
    }

    return [NSString stringWithFormat:@"%d%@", prefix, suffix];
}

@end
