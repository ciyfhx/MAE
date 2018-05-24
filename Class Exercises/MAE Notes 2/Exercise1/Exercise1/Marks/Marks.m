//
//  Marks.m
//  Exercise1
//
//  Created by Student1 on 22/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "Marks.h"

@implementation Marks

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.asg1 = 0;
        self.asg2 = 0;
        self.asg3 = 0;
        self.proj = 0;
        self.baa = 0;
        self.fe = 0;
    }
    return self;
}

- (float) calculateMarks {
    float result;
    return result = (self.asg1 * 0.08 + self.asg2 * 0.08 + self.asg3 * 0.08 + self.proj * 0.16) + (self.baa*0.1) + (self.fe*0.5);
}

@end
