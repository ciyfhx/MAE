//
//  main.m
//  PA2_Q3
//
//  Created by Zi Heng on 30/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int sum = 0;
        
        NSLog(@"This program prints out all the odd numbers from 1 - 1000");
        
        for(int i = 1; i <= 1000; i += 2){
            
            NSLog(@"Odd number: %i", i);
            
            sum += i;
            
        }
        
        NSLog(@"The sum of all the odd numbers from 1 - 1000 is %i.", sum);
        
    }
    return 0;
}
