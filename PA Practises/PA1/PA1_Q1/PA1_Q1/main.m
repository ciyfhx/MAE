//
//  main.m
//  PA1_Q1
//
//  Created by Zi Heng on 19/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int num1, num2, num3;
        int result;
        
        NSLog(@">Enter first number:\n");
        scanf("%i", &num1);
        
        NSLog(@">Enter second number:\n");
        scanf("%i", &num2);
        
        NSLog(@">Enter third number:\n");
        scanf("%i", &num3);
        
        result = num1 + num2 + num3;
        
        NSLog(@">The total is %i\n", result);
        NSLog(@">The reminder is %i\n", result % 3);
        
        
        
    }
    return 0;
}
