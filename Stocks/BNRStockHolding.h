//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject
{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}
-(float)purchaseSharePrice;
-(void)setPur:(float)p;
-(float)currentSharePrice;
-(void)setCur:(float)c;
-(int)numberOfShares;
-(void)setNum:(int)n;
-(float)coustInDollars;
-(float)valueInDollars;
@end
