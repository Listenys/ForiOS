//
//  BNREmployee.h
//  BMITime
//
//  Created by ListenS on 17/9/20.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
- (double)yearsOfEmployment;

@end
