//
//  Character.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"
@interface Character : NSObject
//Code Created by Matthew
@property (nonatomic, strong) NSString * name;
@property int chips;
@property BOOL folded;

@property (nonatomic, strong) Card * ourCard;
@property int currentBet;
-(id) initWithCharacterName:(NSString *) characterName
               andWithChips:(int) characterChips;

-(int)requestBetWithMinimum:(int) minimumBet;

//Do you have enough chips to ante, if not your out.
-(BOOL)anteUpWithAmount:(int) anteAmount;

//Add chips, play winning sound.
-(void)awardChips:(int) chipsAmount;
-(void) logThisCharacter;
//End of Code Created by Matthew

@end


