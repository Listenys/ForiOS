//
//  main.m
//  test14
//
//  Created by Listen on 17/6/18.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1990];
        [comps setMonth:6];
        [comps setDay:12];
        [comps setHour:17];
        [comps setMinute:20];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *dateFromBirth = [NSDate date];
        NSLog(@"It's %f",[dateFromBirth timeIntervalSinceDate:dateOfBirth]);
    }
    return 0;
}
