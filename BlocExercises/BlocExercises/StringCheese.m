//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /*  Create a sentence indicating a favorite cheese. */
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* Removes "cheese" from the end of a string about cheese and only returns
     the name of the cheese. */

    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
   
    if (cheeseRange.location == NSNotFound) {
        return cheeseName;
        
    } else {
        NSString *cheeseNameWithoutCheeseSuffix = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseNameWithoutCheeseSuffix;
    }

}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        NSString *cheeseStringCount = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
        return cheeseStringCount;
        
        
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        
        NSString *cheeseStringCount = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
        return cheeseStringCount;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    
}

@end
