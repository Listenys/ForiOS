//
//  main.m
//  stringTest
//
//  Created by Listen on 17/7/23.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *lament = @"Why me!?";
        NSLog(@"%@",lament);
        
        NSString *slogan = @"Why me!?";
        NSLog(@"%@",slogan);
        
        NSDate *now = [NSDate date];
        NSString *dateString = [NSString stringWithFormat:@"The date is %@",now];
        NSUInteger charCount = [dateString length];
        NSLog(@"The dateString's length is %ld",charCount);
        
        if([slogan isEqualToString:lament]){
            NSLog(@"%@ and %@ are equal",slogan,lament);
        }
    }
    return 0;
}
