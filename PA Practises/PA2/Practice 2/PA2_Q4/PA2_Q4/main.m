//
//  main.m
//  PA2_Q4
//
//  Created by Zi Heng on 3/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int min, max;
        while(1){
            NSLog(@">>>Please key in a minimum number");
            scanf("%i%*c", &min);
            
            NSLog(@">>>Please key in a maximium number");
            scanf("%i%*c", &max);
            
            if(max < min)NSLog(@">>>The maximum number is smaller than minimum number, please try again.");
            else break;
        }
        int i = min;
        
        unsigned long int product = min;
        
        do{
            product *= i;
            i++;
        }while(i <= max);
        
        NSLog(@">>>The product of all the numbers from %i - %i is %lu", min, max, product);
        
        
    }
    return 0;
}
