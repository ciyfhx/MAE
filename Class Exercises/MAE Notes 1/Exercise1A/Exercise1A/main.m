//
//  main.m
//  Exercise1A
//
//  Created by Zi Heng on 10/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

//Declare the hourly salary rate
const float RATE = 12.5f;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Print the header
        printf("*****Employee Pay Slips*****\n");
        
        //Define all the variables
        char EmployeeID[10];
        char Name[100];
        
        unsigned short int Age;
        char Gender;
        
        char Department[5];
        
        float WorkHours;
        
        printf(">>>Fill in the following employee's info\n");
        
        //Scan for user input
        printf(">>>Employee ID:\n");
        scanf(" %s", EmployeeID);
        printf(">>>Employee Name:\n");
        //Scan for new line (\n) instead of whitespace
        scanf(" %[^\n]s", Name);
        printf(">>>Age:\n");
        scanf("%hu", &Age);
        printf(">>>Gender (M For male, F for Female):\n");
        scanf(" %c", &Gender);
        printf(">>>Department (IT, HR, OPS, ACC, MKT):\n");
        scanf("%s", Department);
        printf(">>>No of Hours Worked:\n");
        scanf("%f", &WorkHours);
        
        //Print the summary of all the infomations
        printf(">>>Summary\n");
        printf("***********************************************************************\n");
        printf("Employee ID: %s\n", EmployeeID);
        printf("Employee Name: %s\n", Name);
        printf("Age: %hu\n", Age);
        printf("Gender: %c\n", Gender);
        printf("Department: %s\n", Department);
        printf("No of work hours: %.1f hours\n", WorkHours);
        printf("Total Salary: $%.2f\n", RATE * WorkHours);
        printf("***********************************************************************\n");
        
    }
    return 0;
}
