//
//  BullsEyeSlider.swift
//  BullsEye
//
//  Created by Christopher Jamme de Lagoutine on 22/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import Foundation
import SwiftUI

struct BullsEyeSlider: View {
    @Binding var value : Double
    var body: some View {
        HStack {
            Text("0").fontWeight(.heavy).foregroundColor(Color.purple)
            Slider(value: $value, in: 0...100).padding().accentColor(.purple)
            Text("100").fontWeight(.heavy).foregroundColor(Color.purple)
        }.padding(.horizontal)
    }
}
