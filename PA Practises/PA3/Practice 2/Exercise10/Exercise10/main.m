//
//  main.m
//  Exercise10
//
//  Created by Zi Heng on 17/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "device_management.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Desktop* desktop1 = [[Desktop alloc] init];
        [desktop1 setID: arc4random_uniform(991) + 10];
        [desktop1 setBrand: @"Dell"];
        [desktop1 setModel: @"Optimum 2000"];
        [desktop1 setPrice: 1800.0];
        
        [desktop1 showDesktop];
        
        NSLog(@">>>--------------------------------------------------------");
        
        Notebook* notebook1 = [[Notebook alloc] init];
        [notebook1 setAllvars];
        
        NSLog(@">>> The Notebook Device ID is %li", [notebook1 ID]);
        NSLog(@">>> The Notebook Brand is %@", [notebook1 brand]);
        NSLog(@">>> The Notebook Model is %@", [notebook1 model]);
        NSLog(@">>> The Notebook price is $%.2f", [notebook1 price]);
        NSLog(@">>> The Notebook depreciated cost is $%.2f", [notebook1 showDepCost]);
        
        
    }
    return 0;
}
