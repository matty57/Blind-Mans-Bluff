//
//  StartViewController.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartViewController.h"
#import "Character.h"

@interface StartViewController ()

@end

@implementation StartViewController
@synthesize numberOfChipsLabel;
@synthesize playerScoreLabel;
@synthesize numberOfChips;
@synthesize Zolthar, Magezacks, Kalia, player;

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
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setNumberOfChipsLabel:nil];
    [self setPlayerScoreLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationLandscapeLeft || 
    interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

- (IBAction)betPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"How much do you want to Bet?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way!"
                                  destructiveButtonTitle:@"Cancle Bet" 
                                  otherButtonTitles:@"2 Chips", @"4 Chips", @"8 Chips", @"All In!", nil];
    [actionSheet showInView:self.view];
}

- (IBAction)foldPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure you want to Fold?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way!"
                                  destructiveButtonTitle:@"Yes, I'm Sure!" 
                                  otherButtonTitles:@"Let me think about it.", nil];
    [actionSheet showInView:self.view];
}

-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancle was chosen.");
            break;
        case 1:
            numberOfChips += 2;
            break;
        case 2:
            numberOfChips += 4;
            break;
        case 3:
            numberOfChips += 8;
            break;                        
        case 4:
            numberOfChips += 12;
            break;
        default:
            break;
    }
    NSLog(@"Number of Chips = %i", numberOfChips);
    
}








@end
