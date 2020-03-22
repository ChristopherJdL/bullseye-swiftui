//
//  MainButton.swift
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import Foundation
import SwiftUI

struct MainButton: View {
    @Binding var value : Double
    @Binding var valueToGuess : Int
    @State var shouldShowAlert : Bool = false

    var body: some View {
        Button(action: { self.shouldShowAlert = true }){
            Text("Hit me").bold().font(.title).accentColor(.green)
        }.alert(isPresented: $shouldShowAlert, content: makeAlert)
    }
    
    private func getTitleAndTextForAlert(_ didWin : Bool, _ points : Int) -> (Text, Text) {
        var title : Text
        var text : Text
        if didWin {
            title = Text("You won !")
            text = Text("You guessed the number \(valueToGuess)")
        }
        else {
            title = Text("Try again !")
            text = Text("You could not guess the number \(valueToGuess). You scored \(points)")
        }
        return (text, title)
    }
    
    fileprivate func setNewValueToGuessIfNecessary() {
        if Game.didWin(valueToGuess: valueToGuess, value: value) {
            self.valueToGuess = Int.random(in: 0...100)
        }
    }
    
    fileprivate func makeAlert() -> Alert {
        let (didWin, points) = Game.getWinningStatusAndPoints(valueToGuess: valueToGuess, value: value)
        let (text, title) = getTitleAndTextForAlert(didWin, points)
        
        return Alert(title: title,
                     message: text,
                     primaryButton: .default(Text("Ok"), action: self.setNewValueToGuessIfNecessary),
                     secondaryButton: .cancel())
    }
    
}
