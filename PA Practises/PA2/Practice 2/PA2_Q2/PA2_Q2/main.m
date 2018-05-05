//
//  main.m
//  PA2_Q2
//
//  Created by Zi Heng on 3/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int rand1, rand2;
        
        rand1 = arc4random_uniform(1000) + 501;
        rand2 = arc4random_uniform(1000) + 501;
        
        if(rand1 > rand2) {
            NSLog(@"The first number is %i", rand1);
            NSLog(@"The first generated number is larger than second number.");
        }
        else {
            NSLog(@"The second number is %i", rand2);
            NSLog(@"The second generated number is larger than the first number.");
        }
        
        
    }
    return 0;
}
