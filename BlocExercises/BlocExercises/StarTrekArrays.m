//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *characters = [characterString componentsSeparatedByString:@";"];
    
    return characters;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *stringTrek = [characterArray componentsJoinedByString:@";"];
    
    return stringTrek;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *alphaTrek = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *alphaTrekAnswer = [characterArray sortedArrayUsingDescriptors:@[alphaTrek]];
    
    return alphaTrekAnswer;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSPredicate *withWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    NSArray *nextGen = [characterArray filteredArrayUsingPredicate:withWorf];
    
    if (nextGen.count > 0) {
        return YES;
    } else {
        return NO;
    }

}

@end
