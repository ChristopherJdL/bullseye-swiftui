//
//  Game.swift
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import Foundation

public class Game {

/// Returns whether or not the user is supposed to win based on the value to guess and the current value.
/// Also returns the score.
public static func getWinningStatusAndPoints(valueToGuess : Int, value : Double) -> (Bool, Int) {
        let difference = abs(valueToGuess - Int(value))
        let points = 100 - difference
        return (points == 100, points)
    }
    
/// Returns whether or not the user is supposed to win based on the value to guess and the current value.
/// This implementation exists just to test how interop works b/w ObjC and Swift
public static func didWin(valueToGuess : Int, value : Double) -> Bool{
        return GameManager().didWin(valueToGuess, value: value)
    }
}
