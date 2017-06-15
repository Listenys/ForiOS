//
//  main.m
//  test13
//
//  Created by Listen on 17/6/15.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *computerName = [NSHost currentHost];
        NSString *myName = [computerName localizedName];
        NSLog(@"My computer name is %@",myName);
    }
    return 0;
}
