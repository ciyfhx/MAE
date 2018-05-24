//
//  ModuleDetailTVC.h
//  Exercise1
//
//  Created by Student1 on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModuleDetail.h"

@interface ModuleDetailTVC : UITableViewController
@property (weak, nonatomic) IBOutlet UIImageView *moduleImage;
@property (weak, nonatomic) IBOutlet UILabel *moduleTitle;
@property (weak, nonatomic) IBOutlet UILabel *moduleSubtitle;
@property (weak, nonatomic) IBOutlet UITextView *moduleDescription;

- (void) setupModuleDetail: (ModuleDetail*) moduleDetail;

@end
