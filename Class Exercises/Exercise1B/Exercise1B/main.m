//
//  main.m
//  Excerise1B
//
//  Created by Zi Heng on 10/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

//Define the struct module
struct module {
    char code[4];
    unsigned short points;
    unsigned short credits;
};

//Define the marco for credits
#define CREDITS 34
#define TOTAL_MODULE 5

int clamp(int value, int min, int max){
    if(value > max) return max;
    else if(value <= min) return min;
    return value;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Declare all the variables
        float cGPA;
        
        struct module modules[TOTAL_MODULE];
        int index = 0;
        
        //Loop through each module
        while(index < TOTAL_MODULE){
            
            printf(">Please enter the %i module name code:\n", index+1);
            scanf("%s", modules[index].code);
            
            printf(">Please enter %s grade point target (A-4, B-3, C-2, D-1):\n", modules[index].code);
            scanf(" %hu", &modules[index].points);
            
            modules[index].points = clamp(modules[index].points, 1, 4);
            
            printf(">Please enter %s credits (Between 2 and 7):\n", modules[index].code);
            scanf(" %hu", &modules[index].credits);
            
            modules[index].credits = clamp(modules[index].credits, 2, 7);
            
            ++index;
        }
        
        //Scan for cumulative GPA
        printf(">Please enter current cumulative GPA:\n");
        scanf(" %f", &cGPA);
        
        float projectedGPA = cGPA * CREDITS;
        float tmp = CREDITS;
        
        for(int i = 0; i < TOTAL_MODULE; ++i){
            projectedGPA += modules[i].credits * modules[i].points;
            tmp += modules[i].credits;
        }
        
        
        //Print project GPA
        printf(">Your projected GPA in Sep 2018 is %.2f.\n", projectedGPA / tmp);
        
    }
    return 0;
}
