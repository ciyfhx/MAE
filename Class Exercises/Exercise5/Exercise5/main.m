//
//  main.m
//  Exercise5
//
//  Created by Zi Heng on 17/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

//Exchange rate from SGD to MYR
const float ExchangeRate = 2.9f;

//Forward declaration of the class
@interface Currency : NSObject

- (float) ConvertSGDToMYR: (float) SGD;

@end

//Actual implementation of class
@implementation Currency

- (float)ConvertSGDToMYR:(float)SGD {
    return SGD * ExchangeRate;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Currency* myCurrency = [[Currency alloc] init];
        
        float sgd;
        
        NSLog(@"Please enter the value in SGD:\n");
        scanf("%f%*[^\n]s", &sgd);
        
        NSLog(@"The value in SGD is $%.2f\n", sgd);
        NSLog(@"The value in MYR is $%.2f\n", [myCurrency ConvertSGDToMYR:sgd]);
        
        
    }
    return 0;
}
