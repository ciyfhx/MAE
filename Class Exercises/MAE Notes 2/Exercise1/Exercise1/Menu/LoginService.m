//
//  LoginService.m
//  Exercise1
//
//  Created by Student1 on 28/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "LoginService.h"

@implementation LoginService

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strUsername = @"";
        self.strPassword = @"";
        self.success = false;
    }
    return self;
}

- (BOOL)success {
    NSDictionary* accounts = [[NSDictionary alloc] initWithObjectsAndKeys:@"123", @"mae", @"321", @"ite", nil];
    
    for(NSString* username in accounts){
        NSString* password = [accounts objectForKey:username];
        if([username isEqualToString:self.strUsername] && [password isEqualToString: self.strPassword]){
            return TRUE;
        }
    }
    
    return FALSE;
    
}


@end
