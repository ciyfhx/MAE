//
//  ModuleDetail.m
//  Exercise1
//
//  Created by Student1 on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "ModuleDetail.h"


@implementation ModuleDetail


- (instancetype)initWithDetails: (UIImage*) moduleImage title: (NSString*) moduleTitle subtitle: (NSString*) moduleSubtitle description: (NSString*) moduleDetail
{
    self = [super init];
    if (self) {
        self.moduleImage = moduleImage;
        self.moduleTitle = moduleTitle;
        self.moduleSubtitle = moduleSubtitle;
        self.moduleDetail = moduleDetail;
    }
    return self;
}

@end
