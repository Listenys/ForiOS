//
//  BNREmployee.h
//  BMITime
//
<<<<<<< Updated upstream
//  Created by ListenS on 17/9/20.
=======
//  Created by Listen on 17/9/14.
>>>>>>> Stashed changes
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
<<<<<<< Updated upstream
//@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
=======
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hirDate;
>>>>>>> Stashed changes
- (double)yearsOfEmployment;

@end
