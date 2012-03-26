//
//  Card.h
//  blind mans bluff3
//
//  Created by Matthew Studer on 3/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic, strong) NSString * suit; 
@property int value;
@property CGPoint cardCenter;
-(void) logThisCard;
-(id) initWithSuit: (NSString *) newSuit
      andWithValue:(int)cardValue
     andWithCenter: (CGPoint) theCenter;
@end
