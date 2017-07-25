//
//  BNRPerson.h
//  BMITime
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
    //BNRPerson类拥有两个实例变量
    float _heightInMeters;
    int _weightInKilos;
}
//BNRPerson类拥有可以读取并设置实例变量的方法
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;
//BNRPerson类拥有计算Body Mass Index的方法
- (float)bodyMassIndex;
@end
