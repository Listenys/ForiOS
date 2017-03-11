//
//  main.c
//  TwoFloats
//
//  Created by Listen on 17/3/11.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    //声明两个float变量，分别赋值3.14和42.0
    float firstf = 3.14;
    float secondf = 42.0;
    
    //声明一个double变量，把上面两个float的和赋值给它
    double third = firstf + secondf;
    
    //打印third
    printf("%f\n",third);
}
