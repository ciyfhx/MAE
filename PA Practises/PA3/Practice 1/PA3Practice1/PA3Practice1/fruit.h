//
//  fruit.h
//  PA3Practice1
//
//  Created by Student1 on 15/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#ifndef fruit_h
#define fruit_h

@interface Fruit : NSObject{
    NSInteger productCode;
    NSString* brand;
    NSNumber* unitPrice;
    NSInteger tax;
}



- (void) setProductCode: (NSInteger) newProductCode;
- (void) setBrand: (NSString*) newBrand;
- (void) setUnitPrice: (NSNumber*) newUnitPrice;
- (void) setTax: (NSInteger) newTax;

- (NSInteger) productCode;
- (NSString*) brand;
- (NSNumber*) unitPrice;
- (NSInteger) tax;


- (NSNumber*) calSellPrice;


@end

@interface Apple : Fruit

- (void) showVar;

@end

@interface Orange : Fruit

- (void) setVar;

@end

@implementation Fruit


- (instancetype)init
{
    self = [super init];
    if (self) {
        productCode = arc4random_uniform(100);
    }
    return self;
}


- (void) setProductCode: (NSInteger) newProductCode {
    productCode = newProductCode;
}
- (void) setBrand: (NSString*) newBrand {
    brand = newBrand;
}
- (void) setUnitPrice: (NSNumber*) newUnitPrice {
    unitPrice = newUnitPrice;
}
- (void) setTax: (NSInteger) newTax{
    tax = newTax;
}

- (NSInteger) productCode {
    return productCode;
}
- (NSString*) brand {
    return brand;
}
- (NSNumber*) unitPrice {
    return unitPrice;
}
- (NSInteger) tax {
    return tax;
}


- (NSNumber*) calSellPrice {
    return [NSNumber numberWithFloat: [unitPrice floatValue] + ([unitPrice floatValue] * (tax / 100.0))];
}

@end

@implementation Apple

- (void) showVar {
    NSLog(@">The apple product code is %li", productCode);
    NSLog(@">The apple brand is %@", brand);
    NSLog(@">The apple unit price is $%@", unitPrice);
    NSLog(@">The apple tax is %li%%", tax);
    NSLog(@">The apple selling price is $%.2f", [[self calSellPrice] floatValue]);
}

@end

@implementation Orange

- (void) setVar {
    brand = @"Navel";
    unitPrice = [NSNumber numberWithFloat: .35f];
    tax = 10;
}

@end


#endif /* fruit_h */
