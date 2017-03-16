//
//  main.c
//  Addresses
//
//  Created by Listen on 17/3/14.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 19;
    int *address0FI = &i;
    printf("i stores its value at %p\n",address0FI);
    printf("the int stored at address0FI is %d\n", *address0FI);
    *address0FI = 89;
    printf("Now i is %d\n", i);
    printf("An int is %zu bytes\n",sizeof(int));
    printf("A pointer is %zu bytes\n",sizeof(address0FI));
    printf("A float is %zu bytes\n",sizeof(float));
    printf("A short is %zu bytes\n",sizeof(short));
    short x = 100;
    printf("%d\n",x);
    return 0;
}
