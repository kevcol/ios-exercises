//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSString *drinkUp = [characterDictionary valueForKey:@"favorite drink"];
    
    return drinkUp;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    /* BRANDON: This seemed too easy -- should I be running a loop here?  I put this in first and was surprised it passed.  Then I printed out array to NSLog and it listed both drinks, so I suppose it is good, eh?  */
     
    NSArray *lastCall = [charactersArray valueForKey:@"favorite drink"];
    
    return lastCall;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    // make a mutable copy
    NSMutableDictionary *quotedTrek = [characterDictionary mutableCopy];
    
    // Find missing quote
    if (!quotedTrek[@"quote"]) {
        
        // add silly quote
        [quotedTrek setObject:@"Does this phaser make me look fat?" forKey:@"quote"];
    }
    
    return quotedTrek;
}

@end
