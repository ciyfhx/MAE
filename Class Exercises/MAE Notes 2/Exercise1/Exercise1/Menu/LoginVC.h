//
//  LoginVC.h
//  Exercise1
//
//  Created by Student1 on 28/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginService.h"

@interface LoginVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)btnSignIn:(id)sender;
@property (nonatomic, strong) LoginService* checkLogin;

@end
