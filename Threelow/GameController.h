//
//  GameController.h
//  Threelow
//
//  Created by Adam Goldberg on 2015-09-30.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *myDice;

@property (nonatomic, strong) NSMutableSet *heldDice;

-(void)holdDie:(NSInteger)index;

-(void)resetDice;

-(void)heldDiceScore;

@end
