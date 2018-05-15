//
//  main.m
//  InheritanceAndEncapsulationExercise1
//
//  Created by Zi Heng on 10/5/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shoe : NSObject{
    NSString* colour;
    NSNumber* length;
    NSString* material;
}

- (NSString*) colour;
- (NSNumber*) length;
- (NSString*) material;

- (void) setColour: (NSString*) newColour;
- (void) setLength: (NSNumber*) newLength;
- (void) setMaterial: (NSString*) newMaterial;

@end

@interface Boot : Shoe {
    NSNumber* height;
}

- (NSNumber*) height;

- (void) setHeight: (NSNumber*) newHeight;

@end

@implementation Shoe

- (NSString*) colour {
    return colour;
}

- (NSNumber*) length {
    return length;
}

- (NSString*) material {
    return material;
}

- (void) setColour:(NSString *)newColour {
    colour = newColour;
}

- (void) setLength:(NSNumber *)newLength {
    length = newLength;
}

- (void) setMaterial:(NSString *)newMaterial {
    material = newMaterial;
}

@end

@implementation Boot

- (NSNumber*) height {
    return height;
}

- (void) setHeight:(NSNumber *)newHeight {
    height = newHeight;
}

@end

@interface CombatBoot : Boot {
    NSString* serviceType;
}

- (NSString*) serviceType;

- (void) setServiceType: (NSString*) newServiceType;

@end

@implementation CombatBoot

- (NSString*) serviceType {
    return serviceType;
}

- (void) setServiceType:(NSString *)newServiceType {
    serviceType = newServiceType;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boot* myBoot = [[Boot alloc] init];
        
        [myBoot setColour: @"Brown"];
        [myBoot setLength: [NSNumber numberWithInt: 30]];
        [myBoot setMaterial: @"Suede"];
        [myBoot setHeight: [NSNumber numberWithInt:40]];
        
        
        NSLog(@"Colour: %@", [myBoot colour]);
        NSLog(@"Length: %@cm", [myBoot length]);
        NSLog(@"Material: %@", [myBoot material]);
        NSLog(@"Height: %@cm", [myBoot height]);
        
        NSLog(@"\n");
        
        CombatBoot* NduBoots = [[CombatBoot alloc] init];
        
        [NduBoots setColour: @"Black"];
        [NduBoots setLength: [NSNumber numberWithInt: 35]];
        [NduBoots setMaterial: @"Leather"];
        [NduBoots setHeight: [NSNumber numberWithInt: 45]];
        [NduBoots setServiceType: @"Navy"];
        
        NSLog(@"Colour: %@", [NduBoots colour]);
        NSLog(@"Length: %@cm", [NduBoots length]);
        NSLog(@"Material: %@", [NduBoots material]);
        NSLog(@"Height: %@cm", [NduBoots height]);
        NSLog(@"Service Type: %@", [NduBoots serviceType]);
        
        
        
        
    }
    return 0;
}
