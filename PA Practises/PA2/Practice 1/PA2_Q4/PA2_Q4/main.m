//
//  main.m
//  PA2_Q4
//
//  Created by Zi Heng on 30/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.1
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        unsigned int start, end;
        
        NSLog(@"The starting number");
        scanf("%u", &start);
        
        NSLog(@"The ending number");
        scanf("%u", &end);
        
        int i = start;
        int sum = 0;
        
        while(i <= end){
            if(i % 2 == 0)sum += i;
            
            i++;
        }
        
        NSLog(@"The sum of all the even numbers from %u - %u is %i.", start, end, sum);
    }
    return 0;
}
