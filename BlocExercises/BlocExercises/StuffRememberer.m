//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.rememberMe = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.itemCopied = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.floatMe = floatToRemember;
  
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.rememberMe;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.itemCopied;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    
    return self.floatMe;
}

@end