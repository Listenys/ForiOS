//
//  main.c
//  BMICalc
//
//  Created by Listen on 17/5/13.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
//声明Person结构
struct Person{
    float heightInMeters;
    int weightInKilos;
};
int main(int argc, const char * argv[]) {
    struct Person mikey;//声明一个名为Person的结构，有heightInMeters和weightInKilos两个属性
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    struct Person aaron;//同上，声明一个名为Person的结构
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
    printf("mikey is %.2f meters tall\n",mikey.heightInMeters);
    printf("mikey weight %d kilograms\n",mikey.weightInKilos);
    printf("aaron is %.2f meters tall\n",aaron.heightInMeters);
    printf("aaron weight %d kilograms\n",aaron.weightInKilos);
    return 0;
}
