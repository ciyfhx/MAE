//
//  main.m
//  FAS
//
//  Created by Zi Heng on 24/4/18.
//  Copyright © 2018 Zi Heng. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <stdbool.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char input;
        do{
            
            bool isSingaporean = false, isPursuingFullTimeCourse = false, doNotHaveScholarshipOrSponsorship = false;
            
            //Scanning for user input
            NSLog(@"Are you a Singaporean student? (y)Yes or (n)No");
            scanf("%c%*c", &input);
            
            if(input == 'y')isSingaporean = true;
            
            NSLog(@"Are you pursuing a Full-time course? (y)Yes or (n)No");
            scanf("%c%*c", &input);
            
            if(input == 'y')isPursuingFullTimeCourse = true;
            
            NSLog(@"Do you have any scholarship or sponsorship? (y)Yes or (n)No");
            scanf("%c%*c", &input);
            
            if(input == 'n')doNotHaveScholarshipOrSponsorship = true;
            
            //Checking for eligiblity
            if(!isSingaporean || !isPursuingFullTimeCourse || !doNotHaveScholarshipOrSponsorship){
                NSLog(@"You are not eligible for the Financial Assistance Scheme(FAS)");
                
                //Check if user want to continue
                NSLog(@"Do you still want to continue? (y)Yes or (n)No");
                scanf("%c%*c", &input);
                
                continue;
            }
            
            float pci, ghi;
            
            NSLog(@"What is your PCI?");
            scanf("%f%*c", &pci);
            
            NSLog(@"What is your GHI?");
            scanf("%f%*c", &ghi);
            
            
            //Checking for eligiblity
            
            //CDC & CCC - ITE Bursary
            if(pci <= 1000 || ghi <= 4000){
                NSLog(@"You are eligible for the CDC & CCC - ITE Bursary");
            }else{
                //Print reasons
                NSLog(@"You are not eligible for the CDC & CCC - ITE Bursary due to:");
                if(pci > 1000)NSLog(@"Your PCI is higher than $1000");
                if(ghi > 4000)NSLog(@"Your GHI is higher than $4000");
            }
            //MOE Bursary
            if((pci > 1000 && pci <= 2250 ) || (ghi > 4000 && ghi <= 9000)){
                NSLog(@"You are eligible for the MOE Bursary");
            }else{
                //Print reasons
                NSLog(@"You are not eligible for the MOE Bursary due to:");
                if(pci <= 1000)NSLog(@"Your PCI is lower than or equal to $1000");
                else if (pci > 2250)NSLog(@"Your PCI is higher than $2250");
                if(ghi <= 4000)NSLog(@"Your GHI is lower than or equal to $4000");
                else if (ghi > 9000)NSLog(@"Your GHI is higher than $9000");
            }
            
            //Check if user want to continue
            NSLog(@"Do you still want to continue? (y)Yes or (n)No");
            scanf("%c%*c", &input);
            
        }while(input == 'y');
        
        
    }
    return 0;
}
