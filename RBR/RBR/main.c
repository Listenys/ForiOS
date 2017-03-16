//
//  main.c
//  RBR
//
//  Created by Listen on 17/3/14.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //将integerPart的地址作为实参传入
    fractionPart = modf(pi,&integerPart);//pi的整数部分拷贝至intergerPart的地址中，小数部分作为函数的返回值赋值给fractionPart
    
    //获取interger地址上的值
    printf("intergerPart = %.0f,fractionPart = %.2f\n",integerPart,fractionPart);
    
    return 0;
}
