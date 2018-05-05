//
//  main.m
//  PA1_Q2
//
//  Created by Zi Heng on 19/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HealthData : NSObject

+ (void) CalcBMI: (float) weight andHeight: (float) height;

@end


@implementation HealthData

+ (void)CalcBMI:(float)weight andHeight:(float)height {
    
    float bmi = weight / (height * height);
    
    char* category;
    
    if(bmi < 16)category = "Servere Thinness";
    else if(bmi < 17)category = "Morderate Thinness";
    else if(bmi < 18.5)category = "Mild Thinness";
    else if(bmi < 25)category = "Normal";
    else if(bmi < 30)category = "Overweight";
    else if(bmi < 35)category = "Obese Class 1";
    else if(bmi < 40)category = "Obese Class 2";
    else category = "Obese Class 3";
    
    
    NSLog(@">Given weight %.1fkg and height %.2fm, BMI is %.2f and the category is %s.", weight, height, bmi, category);
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float weight, height;
        
        NSLog(@">Please enter weight in kg:");
        scanf("%f", &weight);
        
        
        NSLog(@">Please enter height in m:");
        scanf("%f", &height);
        
        [HealthData CalcBMI:weight andHeight:height];
        
        
    }
    return 0;
}
