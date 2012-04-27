//
//  RulesViewController.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RulesViewController.h"

@interface RulesViewController ()

@end

@implementation RulesViewController
@synthesize rulesScrollView;
@synthesize mainSong;


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
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL * songLocation = [[NSBundle mainBundle]
                                URLForResource:@"rules123"
                                withExtension:@"mp3"];
        mainSong = [[AVAudioPlayer alloc] initWithContentsOfURL:songLocation error:nil];
    });

    
    
    rulesScrollView.BackgroundColor = [UIColor clearColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setRulesScrollView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight;
}

- (IBAction)PlayRules:(id)sender {
    if ([mainSong isPlaying]){
        [mainSong stop];
    } else {
        [mainSong play];
    }
    
}
    
@end
