//
//  Doctor.h
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Person.h"

@class Patient;

@interface Doctor : Person

@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *patientList;
@property (nonatomic, strong) NSDictionary *prescriptionOptions;
@property (nonatomic, strong) NSMutableSet *patientPrescriptionsList;

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Age:(NSInteger)age Specialization:(NSString *)specialization;

-(void)considerPatient:(Patient *)patient;

-(void)acceptPatient:(Patient *)patient;

-(void)prescribeMedication:(Patient *)patient;

//-(void)prescriptionsGiven:(Patient *)patient;

-(void)viewPrescriptionsGiven:(Patient *)patient;

@end
