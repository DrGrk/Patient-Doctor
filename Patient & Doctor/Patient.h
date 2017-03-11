//
//  Patient.h
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Person.h"
@class Doctor;

@interface Patient : Person

@property (nonatomic) BOOL sick;
@property (nonatomic, strong) NSString *condition;
@property (nonatomic) BOOL healthCard;
@property (nonatomic, strong) NSMutableArray *receivedPrescriptions;

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Age:(NSInteger)age Condition:(NSString *)condition Sick:(BOOL)sick HealthCard:(BOOL)healthcard;

-(void)visitDoctor:(Doctor *)doctor;

-(void)requestMedication:(Doctor *)doctor;

-(void)takePrescription:(NSString *)newPrescription;


@end
