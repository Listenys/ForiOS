//
//  main.c
//  CountDown
//
//  Created by Listen on 17/3/13.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    for(int i = 99;i >= 0;i-=3){
        printf("%d\n",i);
        if(i % 5 == 0){
            printf("Found one!\n");
        }
    }
    return 0;
}
