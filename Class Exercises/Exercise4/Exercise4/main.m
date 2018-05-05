//
//  main.m
//  Exercise4
//
//  Created by Zi Heng on 16/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int price;
        int gst;
        
        NSLog(@"Please enter the price of a product: $\n");
        scanf("%i%*c", &price);
        NSLog(@"Please enter the GST value in percentage: \n");
        scanf("%i%*c", &gst);
        NSLog(@"The price of a product after the GST: $%.2f\n", price + (price * gst / 100.0));
        
        
        
    }
    return 0;
}
