//
//  Character.m
//  blind mans bluff3
//
//  Created by Matthew Studer on 4/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Character.h"

@implementation Character
@synthesize name;
@synthesize chips;


-(int)requestBetWithMinimum:(int) minimumBet {
    return YES;
}

-(BOOL)anteUpWithAmount:(int) anteAmount {
    return YES;
}

-(void)awardChips:(int) chipsAmount {
    
}
@end
