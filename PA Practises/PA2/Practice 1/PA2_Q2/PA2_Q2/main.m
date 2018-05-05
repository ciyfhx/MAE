//
//  main.m
//  PA2_Q2
//
//  Created by Zi Heng on 30/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char input;
        
        do{
            uint32 random = arc4random_uniform(999) + 1;//arc4random_uniform(501) + 499
            
            if(random >= 499 && random % 9 == 0)NSLog(@"The random number is %u", random);
            else NSLog(@"The random number is not between 499 and 999 and not divisible by 9");
            
            NSLog(@"Again? Yes(y)");
            scanf(" %c", &input);
            
            if(input != 'y')break;
            
            
        }while(1);
        
    }
    return 0;
}

//
//        char input;
//
//        do{
//
//            NSLog(@"Press r to generate a cryptographic pseudo-random number");
//
//            scanf("%c%*c", &input);
//
//            //Not r
//            if(input != 'r') break;
//
//            NSLog(@"You randomly generated number is %u", arc4random_uniform(100));
//
//
//
//        }while(1);
