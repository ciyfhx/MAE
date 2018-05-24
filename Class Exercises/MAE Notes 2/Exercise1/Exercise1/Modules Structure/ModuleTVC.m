//
//  ModuleTVC.m
//  Exercise1
//
//  Created by Student1 on 24/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "ModuleTVC.h"
#import "ModuleDetailTVC.h"

@implementation ModuleTVC


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
//    let navVC = segue.destinationViewController as UINavigationController
//
//    let tableVC = navVC.viewControllers.first as YourTableViewControllerClass
    
    if(![segue.destinationViewController isKindOfClass: [ModuleDetailTVC class]])return;
    ModuleDetailTVC* tableVC = segue.destinationViewController;

    ModuleDetail* moduleDetail;

    UITableViewCell* tableCell = sender;

    if([tableCell.reuseIdentifier isEqualToString: @"cmos"]){
        moduleDetail = [[ModuleDetail alloc] initWithDetails: [UIImage imageNamed:@"maintenance.png"] title:@"Computer Maintenance and Operating Systems" subtitle:@"IT4101FPR" description:@"On completion of the module, students should be able to perform installation  and configuration of operating system and application software on computers and tablet devices.  In addition, they should be able to install and configure peripherals, perform PC maintenance and troubleshooting of hardware and software problems."];

    }else if([tableCell.reuseIdentifier isEqualToString: @"nt"]){
                moduleDetail = [[ModuleDetail alloc] initWithDetails: [UIImage imageNamed:@"networking.png"] title:@"Networking Technology" subtitle:@"IT4102FPR" description:@"On completion of the module, students should be able to apply the fundamentals of networking in relation to the OSI model. They are trained to set up and configure wire and wireless local area network (LAN) including IP address calculation, switching, routing, routing protocols and VLANs"];
    }else if([tableCell.reuseIdentifier isEqualToString:@"mae"]){
        moduleDetail = [[ModuleDetail alloc] initWithDetails: [UIImage imageNamed:@"mobile.png"] title:@"Mobile Applications Essentials" subtitle:@"IT5301FPR" description:@"On completion of the module, students should be able to design, develop, debug and deploy simple mobile applications, using Xcode Integrated Development Environment (IDE) with Objective-C programming languages and Object-Oriented Programming fundamentals on iOS devices."];
    }
    if(moduleDetail != nil)[tableVC setupModuleDetail:moduleDetail];
    
    
    
}


@end
