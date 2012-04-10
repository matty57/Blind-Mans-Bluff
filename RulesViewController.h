//
//  RulesViewController.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RulesViewController : UIViewController

@property (strong, nonatomic) AVAudioPlayer * mainSong;
@property (strong, nonatomic) IBOutlet UIScrollView *rulesScrollView;
- (IBAction)PlayRules:(id)sender;

@end
