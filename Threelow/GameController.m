//
//  GameController.m
//  Threelow
//
//  Created by Adam Goldberg on 2015-09-30.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.myDice = @[ [[Dice alloc] init],
                             [[Dice alloc] init],
                             [[Dice alloc] init],
                             [[Dice alloc] init],
                             [[Dice alloc] init],
                             ];
        self.heldDice = [NSMutableSet set];
    }
    return self;
}


-(void)holdDie:(NSInteger)index {
    BOOL diceHold = [self.heldDice containsObject:self.myDice[index - 1]];
    if (diceHold) {
        [self.heldDice removeObject:self.myDice[index - 1]];
    } else if (!diceHold) {
            [self.heldDice addObject:self.myDice[index - 1]];
    }
    
}


-(void)resetDice {
    [self.heldDice removeAllObjects];
}

-(void)heldDiceScore {
NSInteger sumOfHeld = [[self.heldDice valueForKeyPath:@"@sum.currentValue"] integerValue];
    for (Dice *three in self.heldDice) {
        if (three.currentValue == 3 ) {
         sumOfHeld = sumOfHeld - 3;
        }
        
    }
NSLog(@"Your score is: %ld", sumOfHeld);

}


@end
