//
//  Person.m
//  Patient & Doctor
//
//  Created by David Guichon on 2017-03-09.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithFirstName:(NSString *)firstName LastName:(NSString *)lastName Age:(NSInteger)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}

@end
