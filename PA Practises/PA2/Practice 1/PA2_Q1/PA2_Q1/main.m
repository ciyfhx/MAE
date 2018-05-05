//
//  main.m
//  PA2_Q1
//
//  Created by Zi Heng on 30/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Declare all local variables
        const float PI = 3.142;
        
        //What the user choose
        unsigned int option;
        //The input of the (Circle, Square or Triangle)
        float length;
        
        //Loop
        while(1){
            
            //Options
            NSLog(@">>Calculate areas of shapes");
            
            NSLog(@"1 - Square");
            NSLog(@"2 - Triangle");
            NSLog(@"3 - Circle");
            NSLog(@"0 - Quit the program");
            
            printf(">>>");
            scanf("%u", &option);
            
            //Calculation
            switch (option){
                case 1:
                    NSLog(@"Enter length of square");
                    
                    printf(">>>");
                    scanf("%f", &length);
                    
                    NSLog(@"Area of square is %.2f", length * length);
                    
                    break;
                case 2:
                    NSLog(@"Enter radius of circle");
                    
                    
                    printf(">>>");
                    scanf("%f", &length);
                    
                    NSLog(@"Area of circle is %.2f", length * length * PI);
                    break;
                case 3:
                    NSLog(@"Enter length of triangle");
                    
                    
                    printf(">>>");
                    scanf("%f", &length);
                    
                    NSLog(@"Area of triangle is %.2f", length * length * .5);
                    break;
                case 0:
                    NSLog(@"Program Exiting...");
                    return 0;
            }
            
            
        }
        
    }
    
    return 0;
}
