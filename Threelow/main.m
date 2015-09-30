//
//  main.m
//  Threelow
//
//  Created by Adam Goldberg on 2015-09-30.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"


int main(int argc, const char * argv[]) {
  
    
    GameController *gameController = [[GameController alloc] init];
    

    
    while (YES) {
        
        NSLog(@"Would you like to roll the dice? If so, enter 'roll':");
        char wantToRoll[255];
        fgets(wantToRoll, 255, stdin);
        NSString *rollString = [NSString stringWithUTF8String:wantToRoll];
        
        
        
        
        if ([rollString isEqualToString:@"roll\n"]) {

            for (Dice *die in gameController.myDice) {
                BOOL isBeingHeld = [gameController.heldDice containsObject:die];
                if (!isBeingHeld) {
                    [die randomize];
                }
                [die printValue:isBeingHeld];
                
            }
        
            [gameController heldDiceScore];
            
            NSLog(@"After seeing your roles, which of the dice would you like to hold (you have to hold at least 1)? Please enter the order number of the dice you want to hold (i.e. Enter 1 if you want to hold the first die). Enter the order numbers one at a time and press enter. When you are done, type 'done' and press enter. If you would like to unhold (or eventually re-hold) a dice, you can type its number in again to un-do your hold. If you would like reset all of the dice you are holding, you can type 'reset'.");
            
            BOOL done = NO;
            while (!done) {
                char numberHeld[255];
                fgets(numberHeld, 255, stdin);
                NSString *numberHeldString = [NSString stringWithUTF8String:numberHeld];
                if ([numberHeldString isEqualToString:@"done\n"]) {
                    done = YES;
                } else if ([numberHeldString isEqualToString:@"reset\n"]) {
                    [gameController resetDice];
                done = YES;
                }
                else {
                    NSInteger holdIndex = [numberHeldString integerValue];
                    [gameController holdDie:holdIndex];
                }
                
             
                    
                
                }
                                           

                
            }
            
            
        }
        
        

        
    

    
    return 0;
}