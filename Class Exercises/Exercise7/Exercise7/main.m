//
//  main.m
//  Exercise7
//
//  Created by Zi Heng on 24/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Using formula S = (N * (N + 1)) / 2
        NSLog(@"The sum of the number from 1 to 100 is %i\n", 100 * (100+1) / 2);
        
        //Using while loop
        
        int sum = 0;
        
        int i = 1;
        while (i <= 100) {
            if(i % 2 == 0)sum += i;
            
            ++i;
        }
        
        NSLog(@"The sum of the even numbers from 1 to 100 is %i\n", sum);
        
    }
    return 0;
}
