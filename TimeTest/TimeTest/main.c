//
//  main.c
//  TimeTest
//
//  Created by Listen on 17/5/31.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n",secondsSince1970);
    secondsSince1970 += 4000000;
    struct tm now;
    localtime_r(&secondsSince1970,&now);
    printf("The date is %d-%d-%d\n",now.tm_mday,now.tm_mon + 1,now.tm_year + 1900);
    return 0;
}
