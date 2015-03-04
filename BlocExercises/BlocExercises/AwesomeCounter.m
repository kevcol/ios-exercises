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
    
    NSMutableString *expectedString;
    
    /* WHILE LOOP FOR WHEN NUMBER < OTHER NUMBER */
    
    if (number < otherNumber) {
        
        expectedString = [NSMutableString stringWithFormat:@"%ld", (long)number];
        while (number < otherNumber) {
            NSInteger current = ++number;
            NSString *currentNumber = [NSString stringWithFormat:@"%ld", (long)current];
            [expectedString appendString:currentNumber];
        }
        
    } else if (number > otherNumber) {
        
         /* I was going to try a For Loop here, but I couldn't figure out */
        
        expectedString = [NSMutableString stringWithFormat:@"%ld", (long)otherNumber];
        while (otherNumber < number) {
            NSInteger current = ++otherNumber;
            NSString *currentNumber = [NSString stringWithFormat:@"%ld", (long)current];
            [expectedString appendString:currentNumber];
        }
        
    } else if (number == otherNumber) {
        
         /* JUST GIVE BACK NUMBER IF = OTHER NUMBER LOOP FOR WHEN NUMBER < OTHER NUMBER */
        
        expectedString = [NSMutableString stringWithFormat:@"%ld", (long)number];
        
    }

  

    return expectedString;
    
    
}

@end
