//
//  ViewController.m
//  Exercise1
//
//  Created by Student1 on 22/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import "AssessmentsVC.h"

@interface AssessmentsVC ()


@end

@implementation AssessmentsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.objMarks = [[Marks alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnCalculate:(id)sender {
    
    self.objMarks.asg1 = [self.asg1TxtField.text floatValue];
    self.objMarks.asg2 = [self.asg2TxtField.text floatValue];
    self.objMarks.asg3 = [self.asg3TxtField.text floatValue];
    self.objMarks.proj = [self.projectTxtField.text floatValue];
    self.objMarks.baa = [self.baaTxtField.text floatValue];
    self.objMarks.fe = [self.feTxtField.text floatValue];
    
    self.resultTxtArea.text = [NSString stringWithFormat:@"%.2f", self.objMarks.calculateMarks];
    
}
@end
