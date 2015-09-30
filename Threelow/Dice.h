//
//  Dice.h
//  Threelow
//
//  Created by Adam Goldberg on 2015-09-30.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger currentValue;

-(void)randomize;

-(void)printValue:(BOOL)held;

@end
