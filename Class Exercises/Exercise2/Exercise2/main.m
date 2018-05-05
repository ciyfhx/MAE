//
//  main.m
//  Exercise2
//
//  Created by Zi Heng on 16/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Define the required variables
        int a, b, x1, x2, z1, z2;
        float y1, y2;
        
        //We will assign the value for a and b
        a = 9;
        b = 4;
        
        //Condition 1
        //When (int) = (int) / (int)
        //We will do a integer division getting the integer quotient of the division
        x1 = a / b; //x1 = 2
        NSLog(@"%i\n", x1);
        
        //Condition 2
        x2 = a++; //x2 = 9
        //This is a post-increment => assigning the value first before incrementing the value of a
        NSLog(@"%i\n", x2);
        
        //Condition 3
        //When (float) = (int) / (int)
        y1 = a / b;// y1 = 2.000000
        //Even through the type of the value being assign is float (lvalue), the value is still determined by the rvalue's operands, and thus return the same value as (Condition 1)
        NSLog(@"%f\n", y1);
        
        //Condition 4
        //When (float) = (int) / (float)
        y2 = a / (float) b; // y2 = 2.500000
        //Type-Casting
        // when converting from a int to a float of an operand, will make the division a floating-point division
        NSLog(@"%f\n", y2);
        
        //Condition 5
        //When (int) = (int) + (int) / (int) * (int)
        z1 = 6 + 5 /2 * 3;// z1 = 12
        // The compiler will reorder this statement with the order of operator prededence with associative of from left to right
        NSLog(@"%i\n", z1);
        
        //Condition 7
        //When (int) = (int) + (int)
        z2 = a + b; // z2 = 14
        //Same as (Condition 1)
        NSLog(@"%i\n", z2);
        
        
        
        
    }
    return 0;
}
