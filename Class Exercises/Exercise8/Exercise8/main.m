//
//  main.m
//  Exercise8
//
//  Created by Zi Heng on 24/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float sum = 0;
        float input;
        
        NSLog(@"Please enter 10 numbers:\n");
        for (int i = 0; i < 10; i++) {
            scanf("%f", &input);
            sum += input;
        }
        
        NSLog(@"The average of 10 numbers entered is %.2f\n", sum / 10);
        
        
    }
    return 0;
}
