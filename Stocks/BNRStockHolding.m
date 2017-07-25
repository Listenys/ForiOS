//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Listen on 17/7/25.
//  Copyright © 2017年 Listen. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding
- (float)purchaseSharePrice{
    return _purchaseSharePrice;
}
- (void)setPur:(float)p{
    _purchaseSharePrice = p;
}

- (float)currentSharePrice{
    return _currentSharePrice;
}
- (void)setCur:(float)c{
    _currentSharePrice = c;
}

- (int)numberOfShares{
    return _numberOfShares;
}
- (void)setNum:(int)n{
    _numberOfShares = n;
}

- (float)coustInDollars{
    return _purchaseSharePrice * _numberOfShares;
}
- (float)valueInDollars{
    return _currentSharePrice * _numberOfShares;
}
@end
