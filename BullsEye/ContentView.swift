//
//  ContentView.swift
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 21/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var valueToGuess : Int = Int.random(in: 0...100)
    @State var value: Double
    
    var body: some View {
        VStack {
            HeaderText(valueToGuess: $valueToGuess)
                
            BullsEyeSlider(value: $value)
            
            MainButton(value: $value, valueToGuess: $valueToGuess)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(value: 50)
    }
}
