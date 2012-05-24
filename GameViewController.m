//
//  GameViewController.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 5/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GameViewController.h"


@interface GameViewController ()

@end

@implementation GameViewController
@synthesize characterArray;
@synthesize stillPlaying;
@synthesize ourDeck;
@synthesize currentBet;
@synthesize currentPlayer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    stillPlaying = YES;
    characterArray = [[NSMutableArray alloc]init];
    Character * bob = [[Character alloc]initWithCharacterName:@"BOB" andWithChips:50];
    [characterArray addObject:bob];
    Character * jimbo =[[Character alloc]initWithCharacterName:@"JIMBO" andWithChips:50];
    [characterArray addObject:jimbo];
    Character * lisa = [[Character alloc]initWithCharacterName:@"LISA" andWithChips:50];
    [characterArray addObject:lisa];
    Character * doris = [[Character alloc]initWithCharacterName:@"DORIS" andWithChips:50];
    [characterArray addObject:doris];
    
    ourDeck = [[Deck alloc] initWithFullDeck];
    currentBet = 0;
    currentPlayer = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // audio file for the gizname
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/gangsta.mp3", [[NSBundle mainBundle] resourcePath]]];
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}
-(void)gameController{
    Character * you = [characterArray objectAtIndex:3];
    while (stillPlaying || you.chips > 0) {
        // Ante Up
        for (Character * temp in characterArray) {
            [temp anteUpWithAmount:1];
        }
        currentBet = 1;
        // Deal a card
        for (Character * temp in characterArray){
            [temp setOurCard:[ourDeck deal]];
        }
        
        // do
        do {
            if (currentPlayer == 3) {
                // handle human bet
                
            }else {
           // bet
            Character * temp = [characterArray objectAtIndex:currentPlayer];
            int neededAmount = currentBet - temp.currentBet;
        
            [temp requestBetWithMinimum:neededAmount];
            }
            currentPlayer++;
            if(currentPlayer > 3){
                currentPlayer = 0;
            }
        } while (![self everyoneHasSameBet]); 
            
        // determine winner sfijgs
        
    }
}
-(BOOL)everyoneHasSameBet{
    return  NO;
}

@end
