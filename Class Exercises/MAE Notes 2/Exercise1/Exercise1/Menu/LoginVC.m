//
//  LoginVC.m
//  Exercise1
//
//  Created by Student1 on 28/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "LoginVC.h"
#import "LoginService.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.checkLogin = [[LoginService alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) alertStatus:(NSString*) msg :(NSString*) title {
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil];
    [controller addAction:ok];
    
    [self presentViewController: controller animated:TRUE completion:nil];
    
}

- (void)btnSignIn:(id)sender {
    if([self.txtUsername.text isEqualToString:@""] || [self.txtPassword.text isEqualToString:@""]){
        [self alertStatus:@"Username and/or Password cannot be blank" :@"Sign In Failed"];
    }else{
        self.checkLogin.strUsername = self.txtUsername.text;
        self.checkLogin.strPassword = self.txtPassword.text;
        
        BOOL success = self.checkLogin.success;
        
        if(success){
            [self performSegueWithIdentifier:@"ShowMenu" sender:self];
        }else{
            [self alertStatus:@"Wrong Username and/or Password!" :@"Sign in Failed"];
        }
    
    }
}


@end
