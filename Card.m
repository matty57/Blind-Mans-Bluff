//
//  Card.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize suit; 
@synthesize value;
@synthesize cardCenter;

-(id) initWithSuit: (NSString *) newSuit
      andWithValue:(int)cardValue
     andWithCenter: (CGPoint)theCenter;
{
    self.suit = newSuit;
    self.value = cardValue;
    self.cardCenter = theCenter;
    return self;
}

-(void) logThisCard
{
    NSLog (@"\n===========================================\n");
    NSLog (@"Suit = %@\n",self.suit);
    NSLog (@"Value = %d\n", self.value);
    
} 

@end
