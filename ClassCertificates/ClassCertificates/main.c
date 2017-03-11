//
//  main.c
//  ClassCertificates
//
//  Created by Listen on 17/3/11.
//  Copyright © 2017年 Listen. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student,char *course,int numDays){
    printf("%s has done as much %s Programming as icould fit into %d days.\n",student,course,numDays);
}

int main(int argc, const char * argv[]) {
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo","Objective-c",2);
    sleep(2);
    congratulateStudent("Mike","Python",5);
    sleep(2);
    congratulateStudent("Liz","iOS",5);
    
    return 0;
}
