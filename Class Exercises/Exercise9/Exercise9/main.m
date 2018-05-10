//
//  main.m
//  Exercise9
//
//  Created by Zi Heng on 8/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stationary_management.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Pen* redPen = [[Pen alloc] init];
        [redPen setID: @"A001"];
        [redPen setColour: @"red"];
        [redPen setQuantity: 20];
        [redPen setPrice: 1.80];
        
        [redPen showOutput];
        
        NSLog(@"");
        
        Pencil* yellowPencil = [[Pencil alloc] init];
        [yellowPencil initVar];
        
        NSLog(@"The Pencil's ID is %@.", [yellowPencil ID]);
        NSLog(@"The Pencil's colour is %@.", [yellowPencil colour]);
        NSLog(@"The Pencil's quantity is %li.", [yellowPencil quantity]);
        NSLog(@"The Pencil's total price is $%.2f.", [yellowPencil showTotalPrice]);
        
        
        
    }
    return 0;
}
