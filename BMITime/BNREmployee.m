//
//  BNREmployee.m
//  BMITime
//
//  Created by ListenS on 17/9/20.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

-(double)yearsOfEmployment{
    
    //是否拥有一个非nil的hireDate?
    if(self.hireDate){
        //NSTimeInterval是double类型
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
        
    }else{
        return 0;
    }

}
-(float)bodyMassIndex{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
