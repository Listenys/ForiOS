//
//  main.c
//  RBR
//
//  Created by Listen on 17/3/14.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void meterToFeetAndInches(double meters,unsigned int *ftPtr,double * inPtr){
    //假定meters的值非负
    
    double rawFeet = meters * 3.281;//将meters变量的值转化为feet的值，类型为浮点数
    
    unsigned int feet = (unsigned int)floor(rawFeet);//计算类型为无符号整型feet变量的值
    
    printf("Storing %u to the address %p\n",feet,ftPtr);
    *ftPtr = feet;
    
    double fractioalFoot = rawFeet - feet;
    double inches = fractioalFoot * 12.0;
    
    printf("Storing %.2f to the address %p\n",inches,inPtr);
    *inPtr = inches;
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    meterToFeetAndInches(meters, &feet,&inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.",meters,feet,inches);
    
    return 0;
}
