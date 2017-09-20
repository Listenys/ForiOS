//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by ListenS on 17/9/20.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)coustInDollars{
    float result = [super coustInDollars];
    return result * _conversionRate;
}

-(float)valueInDollars{
    float result = [super valueInDollars];
    return result * _conversionRate;
}

@end
