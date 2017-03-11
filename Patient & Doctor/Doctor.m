//
//  Doctor.m
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Age:(NSInteger)age Specialization:(NSString *)specialization {
    self = [super init];
    if (self) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
        _specialization = specialization;
        _patientList = [[NSMutableSet alloc] init];
        _prescriptionOptions = @{
                                 @"Flu":@"Flu Prescription",
                                 @"Cold": @"Cold Medecine",
                                 @"Back Pain": @"Vicodine Prescription",
                                 };
        _patientPrescriptionsList = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void)considerPatient:(Patient *)patient{
    if (patient.healthCard == YES) {
        NSLog(@"The patient has been accepted");
        [self acceptPatient:patient];
    } else {
        NSLog(@"%@ does not have a valid health card", patient.firstName);
    }
}

- (void)acceptPatient:(Patient *)patient{
    [self.patientList addObject:patient];
    NSLog(@"The patient has been added to the patient list");
    [patient requestMedication:self];
}

-(void)prescribeMedication:(Patient *)patient{
    NSString *newPrescription = [self.prescriptionOptions objectForKey: patient.condition];
    NSLog(@"The patient has been prescribed new medication");
    [patient takePrescription:newPrescription];
}

-(void)viewPrescriptionsGiven:(Patient *)patient{
    NSLog (@"The patient's prescription list is:");
    for (NSString *i in patient.receivedPrescriptions) {
        NSLog(@"%@", i);
    }
}

@end
