//
//  main.m
//  TimeAfterTime
//
//  Created by Listen on 17/6/11.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.",seconds);
        
//        错误示范
//        double testseconds = [NSDate dateWithTimeIntervalSince1970];
//        NSDate *testNow = [now date];
//        
//        testseconds = [now fooIntervalSince1970];
    }
    return 0;
}
