//
//  GameManager.h
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameManager : NSObject

- (BOOL) didWin: (NSInteger) valueToGuess
                 value: (double) value;

@end

NS_ASSUME_NONNULL_END
