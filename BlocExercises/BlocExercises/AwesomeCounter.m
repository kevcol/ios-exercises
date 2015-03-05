//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    // CREATE VARIABLES
    
    NSInteger lowNumber;
    NSInteger highNumber;
    NSMutableString *expectedString;
    
    
    // SET LOW & HIGH NUMBERS
    
    if (number <= otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    
    // SINGLE WHILE LOOP
    
    expectedString = [NSMutableString stringWithFormat:@"%ld", (long)lowNumber];

    while (lowNumber < highNumber) {
            NSInteger current = ++lowNumber;
            NSString *currentNumber = [NSString stringWithFormat:@"%ld", (long)current];
            [expectedString appendString:currentNumber];
        }
        
    

    return expectedString;
    
}

@end
