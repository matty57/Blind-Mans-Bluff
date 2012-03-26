//
//  Deck.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
{
    NSMutableArray * cardDeck;
    UIImage * spriteImage;
}
@property int currentCard;
-(id)initWithFullDeck;
-(void)logThisDeck;
-(void)shuffle;
-(Card *) deal;

@end
