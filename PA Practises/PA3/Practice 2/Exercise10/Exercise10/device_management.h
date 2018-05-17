//
//  device_management.h
//  Exercise10
//
//  Created by Zi Heng on 17/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#ifndef device_management_h
#define device_management_h

#import <Foundation/Foundation.h>

@interface Device : NSObject{
    NSInteger ID;
    NSString* brand;
    NSString* model;
    CGFloat price;
}

- (NSInteger) getID;
- (NSString*) getBrand;
- (NSString*) getModel;
- (CGFloat) getPrice;

- (void) setID: (NSInteger) newID;
- (void) setBrand: (NSString*) newBrand;
- (void) setModel: (NSString*) newModel;
- (void) setPrice: (CGFloat) newPrice;

- (CGFloat) showDepCost;

@end

@interface Desktop : Device

- (void) showDesktop;

@end

@interface Notebook : Device

- (void) setAllvars;

@end

@implementation Device

- (NSInteger) getID {
    return ID;
}
- (NSString*) getBrand {
    return brand;
}
- (NSString*) getModel {
    return model;
}
- (CGFloat) getPrice {
    return price;
}

- (void) setID: (NSInteger) newID {
    ID = newID;
}
- (void) setBrand: (NSString*) newBrand {
    brand = newBrand;
}
- (void) setModel: (NSString*) newModel {
    model = newModel;
}
- (void) setPrice: (CGFloat) newPrice {
    price = newPrice;
}

- (CGFloat) showDepCost {
    return price - (price * .2);
}

@end

@implementation Desktop

- (void) showDesktop {
    NSLog(@">>> The Desktop Device ID is %li", ID);
    NSLog(@">>> The Desktop Brand is %@", brand);
    NSLog(@">>> The Desktop Model is %@", model);
    NSLog(@">>> The Desktop price is $%.2f", price);
    NSLog(@">>> The Desktop depreciated cost is $%.2f", [self showDepCost]);
}

@end

@implementation Notebook

- (void) setAllvars {
    ID = arc4random_uniform(991) + 10;
    brand = @"Apple";
    model = @"Macbook Pro";
    price = 3600.0;
}

@end




#endif /* device_management_h */
