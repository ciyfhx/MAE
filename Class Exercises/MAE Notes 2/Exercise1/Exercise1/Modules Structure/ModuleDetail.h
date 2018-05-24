//
//  ModuleDetail.h
//  Exercise1
//
//  Created by Student1 on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ModuleDetail : NSObject

@property (nonatomic) UIImage* moduleImage;
@property (nonatomic) NSString* moduleTitle;
@property (nonatomic) NSString* moduleSubtitle;
@property (nonatomic) NSString* moduleDetail;

- (instancetype)initWithDetails: (UIImage*) moduleImage title: (NSString*) moduleTitle subtitle: (NSString*) moduleSubtitle description: (NSString*) moduleDetail;

@end
