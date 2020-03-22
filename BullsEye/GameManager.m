//
//  GameManager.m
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

#import "GameManager.h"

@implementation GameManager

- (BOOL)didWin:(NSInteger)valueToGuess value:(double)value{
    int difference = labs(valueToGuess - (NSInteger)value);
    int points = 100 - difference;
    return points == 100;
}

@end
