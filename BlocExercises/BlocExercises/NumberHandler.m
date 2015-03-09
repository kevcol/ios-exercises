//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    // Unbox and double
    NSInteger temp = [number intValue] * 2;
    
    // Box
    NSNumber *doubleDigit = [NSNumber numberWithInteger:temp];
    
    return doubleDigit;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    // CREATE LOW/HIGH VARIABLES
    NSInteger lowNumber;
    NSInteger highNumber;
    
    // SET LOW & HIGH NUMBERS
    if (number <= otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }

    // LOOP TO BUILD ARRAY
    NSMutableArray *span = [NSMutableArray array];
    
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [span addObject:[NSNumber numberWithInteger:i]];
         }
    
    return span;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    if ([arrayOfNumbers count] == 0) {
        
        return NSNotFound;
        
    } else {
        
    

    // MAKE MUTABLE ARRAY
    NSMutableArray *mutableNumbers = [arrayOfNumbers mutableCopy];

    
    // SORT IT LOW TO HIGH
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutableNumbers sortUsingDescriptors:@[sortDescriptor]];
    
    
    //GIVE BACK FIRST ITEM AS ANSWER
    NSInteger finalAnswer = [mutableNumbers[0] intValue];
    
    
    return  finalAnswer;
        }
        
         
}

@end
