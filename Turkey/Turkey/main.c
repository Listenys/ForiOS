//
//  main.c
//  Turkey
//
//  Created by Listen on 17/3/11.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    //声明变量，变量名未weight，类型是float
    float weight;
    
    //为weight变量赋值
    weight = 14.2;
    
    //向控制台输出weight变量，以便查看
    printf("The turkey weight %f.\n",weight);
    
    //再声明一个类型为float的变量
    float cookingTime;
    
    //计算烧烤时间，将结果赋给cookingTime变量
    //这行代码中的'*'代表'乘上某个数字'
    cookingTime = 15.0 + 15.0 * weight;
    
    //向控制台输出cookingTime变量，以便查看
    printf("Cook if for %f minutes.\n",cookingTime);
    
    //函数结束，返回0表示成功
    return 0;
}
