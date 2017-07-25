//
//  main.m
//  Stocks
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建三个实例
        BNRStockHolding *macy = [[BNRStockHolding alloc] init];
        BNRStockHolding *lucy = [[BNRStockHolding alloc] init];
        BNRStockHolding *giny = [[BNRStockHolding alloc] init];
        
        //将这三个对象放进数组
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:macy];
        [dateList addObject:lucy];
        [dateList addObject:giny];
        
        //给三个对象的实例变量赋值
        [macy setPur:2.30];
        [macy setCur:4.50];
        [macy setNum:40];
        
        [lucy setPur:12.19];
        [lucy setCur:10.56];
        [lucy setNum:90];
        
        [giny setPur:45.10];
        [giny setCur:49.51];
        [giny setNum:210];
        
        //遍历三个实例，打印三个实例的计算数据
        NSUInteger dateCount = [dateList count];
        
        for(int i = 0;i < dateCount;i++){
            float costInDollars = [dateList[i] coustInDollars];
            float valueInDollars = [dateList[i] valueInDollars];
            NSLog(@"%d's date is %.2f and %.2f",i,costInDollars,valueInDollars);
        }
    }
    return 0;
}
