//
//  Patient.m
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Age:(NSInteger)age Condition:(NSString *)condition Sick:(BOOL)sick HealthCard:(BOOL)healthcard{
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
        _condition = condition;
        _sick = sick;
        _healthCard = healthcard;
        _receivedPrescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)visitDoctor:(Doctor *)doctor{
    if (self.sick == YES){
        NSLog(@"The patient is going to visit the doctor");
        [doctor considerPatient:self];
        
    };
}

-(void)requestMedication:(Doctor *)doctor{
    if ([doctor.patientList containsObject:self]) {
        NSLog(@"The patient is going to request medication");
        [doctor prescribeMedication:self];
        
    }
}

-(void)takePrescription:(NSString *)newPrescription{
    NSLog(@"The patient has been prescribed %@", newPrescription);
    [self.receivedPrescriptions addObject:newPrescription];
   }

@end
