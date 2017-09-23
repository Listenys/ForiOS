//
//  BNREmployee.m
//  BMITime
//
<<<<<<< Updated upstream
//  Created by ListenS on 17/9/20.
=======
//  Created by Listen on 17/9/14.
>>>>>>> Stashed changes
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNREmployee.h"

<<<<<<< Updated upstream
//类扩展
@interface BNREmployee ()
@property (nonatomic) unsigned int officelAlarmCode;

@end

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

=======
@implementation BNREmployee

>>>>>>> Stashed changes
@end
