//
//  HeaderText.swift
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import Foundation
import SwiftUI

struct HeaderText: View {
    @Binding var valueToGuess : Int
    var body: some View {
        VStack {
            Text("Push the button as close as you can to the number: \(valueToGuess).")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            
        }.frame(width: 400, height: 60, alignment: .center)
            .multilineTextAlignment(.center)
            .padding()
    }
}
