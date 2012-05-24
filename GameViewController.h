//
//  GameViewController.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 5/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Character.h"
#import "Deck.h"
#import "Card.h"
#import <AVFoundation/AVFoundation.h> //Code created by Geoff 


//End of code created by Geoff
@interface GameViewController : ViewController
{
    AVAudioPlayer * audioPlayer;
}

@property(strong,nonatomic)NSMutableArray *characterArray;
@property (strong, nonatomic) Deck * ourDeck;
@property BOOL stillPlaying;
-(void)gameController;
-(BOOL)everyoneHasSameBet;
@property int currentBet;
@property int currentPlayer;




@end
