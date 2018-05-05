//
//  main.m
//  RoadTaxCalculator
//
//  Created by Zi Heng on 17/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

const float ROAD_TAX = .782f;

@interface Car : NSObject

- (int) CalcRoadTax: (int) engineCapcity;

@end

@implementation Car

- (int) CalcRoadTax: (int) engineCapcity{
    if(engineCapcity <= 1000) return (200 + (0.125f * (engineCapcity - 600))) * ROAD_TAX;
    else if(engineCapcity <= 1600) return (250 + (0.375f * (engineCapcity - 1000))) * ROAD_TAX;
    else if(engineCapcity <= 3000) return (475 + (0.75f * (engineCapcity - 1600))) * ROAD_TAX;
    else return (1525 + (1.0f * (engineCapcity - 3000))) * ROAD_TAX;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Define all local variables
        int carEngineCC;
        
        //Scanning user input
        NSLog(@">Please enter the car engine capacity (cc):\n");
        
        scanf("%i", &carEngineCC);
        
        //Create class instance
        Car* myCar = [[Car alloc] init];
        
        //Print out values
        NSLog(@">The road tax for the %icc is $%i.\n", carEngineCC, [myCar CalcRoadTax:carEngineCC]);
        
        
        
    }
    return 0;
}
