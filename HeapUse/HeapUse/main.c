//
//  main.c
//  HeapUse
//
//  Created by Listen on 17/6/11.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include<stdlib.h>

int main(int argc, const char * argv[]) {
    //声明指针变量
    float *start0fBuffer;
    
    //从堆分配指定字节数的内存
    start0fBuffer = malloc(1000 * sizeof(float));
    
    //释放之前分配到的内存，使之能够被重新使用
    free(start0fBuffer);
    
    //将指定变量赋值空
    start0fBuffer = NULL;
    return 0;
}
