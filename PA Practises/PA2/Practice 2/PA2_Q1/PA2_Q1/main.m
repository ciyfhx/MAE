//
//  main.m
//  PA2_Q1
//
//  Created by Zi Heng on 3/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

const int DIRECTOR_SALARY = 20000;
const int MANAGER_SALARY = 12000;
const int CLERK_SALARY = 2600;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1){
            int option, bonus;
            
            NSLog(@">>>Calculate the bonus of employees");
            NSLog(@">>>Options 1 - Director, 2 - Manager, 3 - Clerk, 4 - Exit");
            
            printf(">>>");
            scanf("%i%*c", &option);
            
            if(option == 4)return 0;
            
            NSLog(@">>>Enter bonus in percentage");
            
            printf(">>>");
            scanf("%i%*c", &bonus);
            
            
            switch (option) {
                case 1:
                    NSLog(@">>>The Director bonus is %.2f.", DIRECTOR_SALARY * (bonus / 100.0f) * .95f);
                    break;
                case 2:
                    NSLog(@">>>The Manager bonus is %.2f.", MANAGER_SALARY * (bonus / 100.0f) * .98f);
                    break;
                case 3:
                    NSLog(@">>>The Clerk bonus is %.2f.", (CLERK_SALARY * (bonus / 100.0f) + 200) * .99f);
                    break;
                default:
                    NSLog(@">>>Exit Program");
                    return 0;
            }
        }
        
    }
    return 0;
}
