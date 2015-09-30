//
//  Dice.m
//  Threelow
//
//  Created by Adam Goldberg on 2015-09-30.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomize {
    self.currentValue = arc4random_uniform(6) + 1;
}

-(void)printValue:(BOOL)held {
    NSArray *dicefaces = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    if (held) {
        NSLog(@"(%ld %@)", self.currentValue, dicefaces[self.currentValue - 1]);
    } else {
         NSLog(@"You rolled a %ld %@", self.currentValue, dicefaces[self.currentValue - 1]);
    }
   
    
    }
    
    
    
    NSString *dice = @"⚀ ⚁ ⚂ ⚃ ⚄ ⚅";
    


@end
