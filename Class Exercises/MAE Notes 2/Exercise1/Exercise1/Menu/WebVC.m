//
//  WebVC.m
//  Exercise1
//
//  Created by Student1 on 31/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "WebVC.h"

@interface WebVC ()
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

@implementation WebVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.webView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString:@"https://cespsprd.ite.edu.sg/sso/login.jsp"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
