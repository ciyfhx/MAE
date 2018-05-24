//
//  ViewController.h
//  Exercise1
//
//  Created by Student1 on 22/5/18.
//  Copyright © 2018 ciyfhx. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Marks.h"

@interface AssessmentsVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *asg1TxtField;

@property (weak, nonatomic) IBOutlet UITextField *asg2TxtField;
@property (weak, nonatomic) IBOutlet UITextField *asg3TxtField;
@property (weak, nonatomic) IBOutlet UITextField *projectTxtField;
@property (weak, nonatomic) IBOutlet UITextField *baaTxtField;
@property (weak, nonatomic) IBOutlet UITextField *feTxtField;
@property (weak, nonatomic) IBOutlet UITextView *resultTxtArea;
- (IBAction)btnCalculate:(id)sender;

@property (strong, nonatomic) Marks* objMarks;

@end

