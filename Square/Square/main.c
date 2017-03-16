//
//  main.c
//  Square
//
//  Created by Listen on 17/3/12.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    int m = 5;
    int n = m * m;
    double x = sin(1);//声明double类型变量x，直接赋值sin(1)的计算结果
    printf("\"%d\" squared is \"%d\".\n",m,n);
    printf("the value of sin(1) is %.3f\n",x);//输出x，输出结果保留3位小数
    return 0;
}
