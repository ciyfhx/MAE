//
//  stationary_management.h
//  Exercise9
//
//  Created by Zi Heng on 8/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#ifndef stationary_management_h
#define stationary_management_h

#import <Foundation/Foundation.h>

@interface Stationery : NSObject{
    NSString* ID;
    NSString* colour;
    NSInteger quantity;
    CGFloat price;
}

//Getter
- (NSString*) ID;
- (NSString*) colour;
- (NSInteger) quantity;
- (CGFloat) price;

//Setter
- (void) setID: (NSString*) newID;
- (void) setColour: (NSString*) newColour;
- (void) setQuantity: (NSInteger) newQuantity;
- (void) setPrice: (CGFloat) newPrice;


- (float) showTotalPrice;

@end

@interface Pen : Stationery

//Our Print Method
- (void) showOutput;

@end

@interface Pencil : Stationery

- (void) initVar: (NSString*) newID setColour: (NSString*) newColour setQuantity: (NSInteger) newQuantity setPrice: (CGFloat) newPrice;

@end

@implementation Stationery

- (NSString*)ID {
    return ID;
}

- (NSString*) colour{
    return colour;
}

- (NSInteger) quantity {
    return quantity;
}

- (CGFloat) price {
    return price;
}

- (void)setID: (NSString*) newID{
    ID = newID;
}

- (void)setColour: (NSString*) newColour{
    colour = newColour;
}

- (void)setQuantity: (NSInteger) newQuantity{
    quantity = newQuantity;
}

- (void)setPrice: (CGFloat) newPrice{
    price = newPrice;
}

- (float) showTotalPrice {
    return price * quantity;
}

@end

@implementation Pen

- (void) showOutput {
    NSLog(@"The Pen's ID is %@.", ID);
    NSLog(@"The Pen's colour is %@.", colour);
    NSLog(@"The Pen's quantity is %li.", quantity);
    NSLog(@"The Pen's total price is $%.2f.", [self showTotalPrice]);
}

@end

@implementation Pencil

- (void) initVar: (NSString*) newID setColour: (NSString*) newColour setQuantity: (NSInteger) newQuantity setPrice: (CGFloat) newPrice{
    ID = newID;
    colour = newColour;
    quantity = newQuantity;
    price = newPrice;
}

@end

#endif /* stationary_management_h */
