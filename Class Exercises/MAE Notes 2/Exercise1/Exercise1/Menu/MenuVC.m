//
//  MenuVC.m
//  Exercise1
//
//  Created by Riyfhx on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "MenuVC.h"
#import <UIKit/UIKit.h>

@interface MenuVC ()

@end

@implementation MenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.TitleLbl.alpha = 0.0f;
    [UIView animateWithDuration:1.5f animations:^{
        self.TitleLbl.alpha = 1.0f;
    }];
    
    CGRect orginRectMenu = self.MarksBtn.frame;
    self.MarksBtn.frame = CGRectMake(0 - orginRectMenu.size.width, orginRectMenu.origin.y, orginRectMenu.size.width, orginRectMenu.size.height);
    [UIView animateWithDuration:.5f animations:^{
        self.MarksBtn.frame = orginRectMenu;
    }];
    
    CGRect orginRectModule = self.MarksBtn.frame;
    self.ModuleBtn.frame = CGRectMake(0 - orginRectModule.size.width, orginRectModule.origin.y, orginRectModule.size.width, orginRectModule.size.height);
    [UIView animateWithDuration:.5f delay:.3f options:UIViewAnimationOptionCurveEaseIn animations:^{
         self.ModuleBtn.frame = orginRectModule;
    } completion:nil];
    
    CGRect orginIStudentBtn = self.iStudentBtn.frame;
    self.iStudentBtn.frame = CGRectMake(0 - orginIStudentBtn.size.width, orginIStudentBtn.origin.y, orginIStudentBtn.size.width, orginIStudentBtn.size.height);
    [UIView animateWithDuration:.5f delay:.6f options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.iStudentBtn.frame = orginIStudentBtn;
    } completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
