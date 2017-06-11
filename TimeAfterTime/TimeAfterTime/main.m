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
    }
    return 0;
}
