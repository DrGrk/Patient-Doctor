//
//  main.m
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//Initiate Instance of Doctor and Patient
        Doctor *drDave = [[Doctor alloc] initWithFirstName:@"Dave" LastName:@"Fran" Age:30 Specialization:@"GP"];
        Patient *sick = [[Patient alloc] initWithFirstName:@"Andrew" LastName:@"Thomson" Age:30 Condition:@"Flu" Sick:YES HealthCard:YES];
        
//Sick Patient Wants to Visit Doctor
        [sick visitDoctor:drDave];
        
//View Prescriptions
        
        [drDave viewPrescriptionsGiven:sick];

        
        
        
    }
    return 0;
}
