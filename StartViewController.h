//
//  StartViewController.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UIViewController
<UIActionSheetDelegate>
- (IBAction)betPressed:(id)sender;
- (IBAction)foldPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel * numberOfChipsLabel;
@property (strong, nonatomic) IBOutlet UILabel * playerScoreLabel;
@property int numberOfChips;

@end
