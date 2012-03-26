//
//  Deck.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Deck.h"

@implementation Deck
@synthesize currentCard;

-(id)initWithFullDeck;
{
    currentCard = -1;
    float x = 827;
    float y = 318;
    for(int i = 0; i <=12; i++)
    {
        if(!cardDeck)
        {
            cardDeck = [[NSMutableArray alloc] initWithCapacity:52];
        }
        Card * temp1 = [[Card alloc] initWithSuit:@"Clubs" andWithValue:i andWithCenter:CGPointMake(x - (127 * i), y)];
        Card * temp2 = [[Card alloc] initWithSuit:@"Spades" andWithValue:i andWithCenter:CGPointMake(x - (127 * i), (y - 159))];
        Card * temp3 = [[Card alloc] initWithSuit:@"Hearts" andWithValue:i andWithCenter:CGPointMake(x - (127 * i), (y - 319))];
        Card * temp4 = [[Card alloc] initWithSuit:@"Diamonds" andWithValue:i andWithCenter:CGPointMake(x - (127 * i), (y - 478))];
        
        [cardDeck addObject:temp1];
        [cardDeck addObject:temp2];
        [cardDeck addObject:temp3]; 
        [cardDeck addObject:temp4];
    }
    return self;
}

-(void)logThisDeck
{
    for (int i = 0; i < [cardDeck count] - 1; i++) 
    {
        [[cardDeck objectAtIndex:i] logThisCard];
    }
}
-(void)shuffle;
{
    currentCard = -1;
    for (int i = [cardDeck count] - 1; i > 0; i--)
    {
        int ourRandomNumber = arc4random() % i;
        [cardDeck exchangeObjectAtIndex:i withObjectAtIndex:
         ourRandomNumber];
    }
}
-(Card *) deal{
    currentCard++;
    return [cardDeck objectAtIndex:currentCard];
    
}

@end
