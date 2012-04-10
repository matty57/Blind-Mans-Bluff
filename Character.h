//
//  Character.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
//Code Created by Matthew
@property (nonatomic, strong) NSString * name;
@property int chips;
-(int)requestBetWithMinimum:(int) minimumBet;

//Do you have enough chips to ante, if not your out.
-(BOOL)anteUpWithAmount:(int) anteAmount;

//Add chips, play winning sound.
-(void)awardChips:(int) chipsAmount;
    
//End of Code Created by Matthew

@end
