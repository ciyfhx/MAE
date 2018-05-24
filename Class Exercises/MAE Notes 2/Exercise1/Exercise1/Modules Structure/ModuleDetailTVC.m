//
//  ModuleDetailTVC.m
//  Exercise1
//
//  Created by Student1 on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "ModuleDetailTVC.h"
#import "ModuleDetail.h"

@interface ModuleDetailTVC ()

@property(nonatomic, readonly) ModuleDetail* moduleDetail;


@end

@implementation ModuleDetailTVC



- (void)viewDidLoad {
    [super viewDidLoad];
    self.moduleImage.image = self.moduleDetail.moduleImage;
    self.moduleTitle.text = self.moduleDetail.moduleTitle;
    self.moduleSubtitle.text = self.moduleDetail.moduleSubtitle;
    self.moduleDescription.text = self.moduleDetail.moduleDetail;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) setupModuleDetail: (ModuleDetail*) moduleDetail{
    _moduleDetail = moduleDetail;
    
}


@end
