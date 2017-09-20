//
//  main.m
//  BMITime
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //创建BNRPerson实例
//    BNRPerson *mikey = [[BNRPerson alloc] init];
        BNREmployee *mikey = [[BNREmployee alloc] init];
    //使用setter方法为实例变量赋值
    [mikey setWeightInKilos:96];
    [mikey setHeightInMeters:1.8];
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd,2010"];
    
    //使用getter方法打印出实例变量的值
    float height = [mikey heightInMeters];
    int weight = [mikey weightInKilos];
    NSLog(@"mikey is %.2f meters tall and weight %d kilograms",height,weight);
        NSLog(@"Employee %u hired on %@",mikey.employeeID,mikey.hireDate);
    
    //使用定制方法打印出bmi的值
    float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
    NSLog(@"BMI of %.2f,has worked with us for %.2f years",bmi,years);
    }

    return 0;
}
