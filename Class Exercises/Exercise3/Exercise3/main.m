//
//  main.m
//  Exercise3
//
//  Created by Zi Heng on 16/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//


//Include our math.h header file from the C library
#include <math.h>

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Defining all our variables
        int x1, x2, y1, y2;
        float D;
        
        //Scanning Input
        NSLog(@"Please enter value for the following variables:\n");
        NSLog(@"X1:\n");
        scanf("%i%*c", &x1);
        
        NSLog(@"X2:\n");
        scanf("%i%*c", &x2);
        
        NSLog(@"Y1:\n");
        scanf("%i%*c", &y1);
        
        NSLog(@"Y2:\n");
        scanf("%i%*c", &y2);
        
        
        //Finding the distance
        D = sqrtf(powf((x2 - x1), 2) + powf((y2 - y1), 2));
        
        NSLog(@"The distance between 2 points is: %f\n", D);
        
        
        
    }
    return 0;
}
