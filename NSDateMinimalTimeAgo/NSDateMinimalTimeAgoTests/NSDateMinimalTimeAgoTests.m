//
//  NSDateMinimalTimeAgoTests.m
//  NSDateMinimalTimeAgoTests
//
//  Created by Josh Holtz on 1/28/14.
//  Copyright (c) 2014 Josh Holtz. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSDate+MinimalTimeAgo.h"

@interface NSDateMinimalTimeAgoTests : XCTestCase

@end

@implementation NSDateMinimalTimeAgoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNow
{
    NSDate *date = [NSDate date];
    NSString *timeAgo = [date timeAgo];
    
    XCTAssert([timeAgo hasSuffix:@"s"], @"Time ago should have prefix of seconds");
}

- (void)testMinute
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.minute = -3;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"3m", @"Time ago not equal for minutes");
}

- (void)testHour
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.hour = -3;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"3h", @"Time ago not equal for hours");
}

- (void)testDay
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.day = -3;
    dateComponents.hour = -5;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"3d", @"Time ago not equal for days");
}

- (void)testWeek
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.day = -21;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"3w", @"Time ago not equal for weeks");
}

- (void)testMonth
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.month = -3;
    dateComponents.day = -5;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"3mo", @"Time ago not equal for months");
}

- (void)testYear
{
    // Date components
    NSDateComponents *dateComponents = [NSDateComponents new];
    dateComponents.month = -13;
    
    // Adjusting date
    NSDate *date = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponents toDate:[NSDate date] options:0];
    
    NSString *timeAgo = [date timeAgo];
    
    XCTAssertEqualObjects(timeAgo, @"1y", @"Time ago not equal for years");
}

@end
