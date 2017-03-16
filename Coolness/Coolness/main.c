//
//  main.c
//  Coolness
//
//  Created by Listen on 17/3/13.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i;
    for(i = 0;i < 12;i++){
        if(i % 3 == 0){//因为确定3的倍数不属于要找的数字，所以遇见3的倍数时用continue跳出本次循环
            continue;
        }
        printf("Checking i = %d\n",i);
        if(i + 90 == i * i){
            break;
        }
    }
    printf("The answer is %d.\n",i);
    return 0;
}
