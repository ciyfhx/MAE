//
//  main.m
//  PA3Practice1
//
//  Created by Zi Heng on 15/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "fruit.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Apple* fjApple = [[Apple alloc] init];
        [fjApple setBrand: @"Fuji"];
        [fjApple setUnitPrice: [NSNumber numberWithFloat:.30f]];
        [fjApple setTax: 20];
        
        [fjApple showVar];
        
        Orange* nlOrange = [[Orange alloc] init];
        [nlOrange setVar];
        
        NSLog(@">The orange product code is %li", [nlOrange productCode]);
        NSLog(@">The orange brand is %@", [nlOrange brand]);
        NSLog(@">The orange unit price is $%@", [nlOrange unitPrice]);
        NSLog(@">The orange tax is %li%%", [nlOrange tax]);
        NSLog(@">The orange selling price is $%.2f", [[nlOrange calSellPrice] floatValue]);
        
        
    }
    return 0;
}
