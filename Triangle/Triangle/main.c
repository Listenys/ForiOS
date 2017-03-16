//
//  main.c
//  Triangle
//
//  Created by Listen on 17/3/12.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float a,float b){
    float c = 180.0 - (a + b);
    return c;
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA,angleB);
    printf("The third angle is %.2f\n",angleC);
    return 0;
}
