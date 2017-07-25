//
//  main.m
//  BMITime
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //创建BNRPerson实例
    BNRPerson *mikey = [[BNRPerson alloc] init];
    
    //使用setter方法为实例变量赋值
    [mikey setWeightInKilos:96];
    [mikey setHeightInMeters:1.8];
    
    //使用getter方法打印出实例变量的值
    float height = [mikey heightInMeters];
    int weight = [mikey weightInKilos];
    NSLog(@"mikey is %.2f meters tall and weight %d kilograms",height,weight);
    
    //使用定制方法打印出bmi的值
    float bmi = [mikey bodyMassIndex];
    NSLog(@"mikey has a BMI of %f",bmi);
    }

    return 0;
}
