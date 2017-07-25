//
//  main.m
//  DateLIst
//
//  Created by Listen on 17/7/24.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        NSArray *dateList = @[now,tomorrow,yesterday];
        
        NSLog(@"The first date is %@",dateList[0]);
        NSLog(@"The second date is %@",dateList[1]);
        NSLog(@"There are %lu dates",[dateList count]);
        
        NSUInteger dateCount = [dateList count];
        for(int i = 0;i < dateCount;i++){
            NSDate *d = dateList[i];
            NSLog(@"Here is a date: %@",d);
        }
    }
    return 0;
}
