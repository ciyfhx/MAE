//
//  main.m
//  ResturantBill
//
//  Created by Zi Heng on 16/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

const float GST = .07f;
const float SERVICE_CHARGE = .1f;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float bill;
        int noOfPeople;
        
        NSLog(@">Enter resturant bill:\n");
        
        scanf("%f%*c", &bill);
        
        NSLog(@">Enter number of people sharing:\n");
        
        scanf("%i%*c", &noOfPeople);
        
        float totalBill = bill + (bill * GST) + (bill * SERVICE_CHARGE);
        
        NSLog(@">The final bill is $%.2f and each person pay $%.2f", totalBill, totalBill / noOfPeople);
        
        
    }
    return 0;
}
