//
//  Character.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Character.h"

@implementation Character
@synthesize name;
@synthesize chips;
@synthesize folded;
@synthesize ourCard,currentBet;

-(id) initWithCharacterName:(NSString *) characterName
               andWithChips:(int) characterChips {
    
    self.name = characterName;
    self.chips = characterChips;
    self.currentBet = 0;
    
    return self;
}

-(int)requestBetWithMinimum:(int) minimumBet {
    chips = chips - minimumBet;
    currentBet += minimumBet;
    
    return minimumBet;
}

-(BOOL)anteUpWithAmount:(int) anteAmount {
    chips = chips - anteAmount;
    currentBet += anteAmount;
    
    return anteAmount;
}

-(void)awardChips:(int) chipsAmount {
    chips = chips + chipsAmount; 
}
@end
