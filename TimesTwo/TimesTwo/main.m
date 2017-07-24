//
//  main.m
//  TimesTwo
//
//  Created by Listen on 17/7/23.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currenTime = [NSDate date];
        NSLog(@"currentTime's value is %p",currenTime);
        
        NSDate *startTime = currenTime;
        
        sleep(2);
        
        currenTime = [NSDate date];
        NSLog(@"currentTime's value is now %p",currenTime);
        NSLog(@"The address of the original object is %p",startTime);
        
        sleep(2);
        currenTime = nil;
        NSLog(@"The address of the first one now is %p",currenTime);
    }
    return 0;
}
