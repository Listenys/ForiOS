//
//  BNRLogger.h
//  Callbacks
//
//  Created by ListenS on 17/9/21.
//  Copyright © 2017年 ListenS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject

@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end
