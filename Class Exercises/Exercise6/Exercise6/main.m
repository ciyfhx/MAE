//
//  main.m
//  Exercise6
//
//  Created by Zi Heng on 24/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int mark;
        char grade;
        
        NSLog(@"Please enter your mark:\n");
        
        scanf("%i", &mark);
        
        if(mark > 100 || mark < 0) {
            
            NSLog(@"Invalid Entry\n");
            return 0;
        }
        
        if(mark >= 80) grade = 'A';
        else if(mark > 69) grade = 'B';
        else if(mark > 59) grade = 'C';
        else if(mark > 50) grade = 'D';
        else grade = 'F';
        
        NSLog(@"Your grade is %c\n", grade);
        
        
    }
    return 0;
}
