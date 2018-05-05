//
//  main.m
//  PA2_Q3
//
//  Created by Zi Heng on 3/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int startIndex = 5;
        int endIndex = 50;
        
        unsigned long int product = 1;
        
        for (int i = startIndex; i <= endIndex; i++) {
            if(i % 5 == 0){
                NSLog(@"The number is %i", i);
                product *= i;
            }
        }
        
        NSLog(@"The product of all the numbers between 5 - 50 and is divisible by 5 is %lu", product);
        
    }
    return 0;
}
